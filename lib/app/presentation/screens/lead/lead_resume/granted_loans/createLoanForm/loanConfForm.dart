import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:powersync_flutter_demo/models/loan_type.model.dart';
import 'package:powersync_flutter_demo/widgets/forms/createLoanForm/index.dart';

class LoanConfForm extends StatefulWidget {
  final Function(String, dynamic, [int?]) onUpdate;
  final LoanConfState data;

  LoanConfForm({required this.onUpdate, required this.data});

  @override
  _LoanConfFormState createState() => _LoanConfFormState();
}

class _LoanConfFormState extends State<LoanConfForm> {
  final _formKey = GlobalKey<FormState>();
  String? _loanType;
  double? _loanAmount;
  double? _loanGiven;
  double? _previousLoanPendingAmount;
  DateTime? _loanEndDate;
  int? _loanWeeks; // New field for the number of weeks
  LoanTypeModel? selectedLoanType;
  TextEditingController signDateController = TextEditingController();
  TextEditingController firstPaymentDateController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Text(widget.data.loanTypeId ?? 'No loan type selected'),
          FutureBuilder<List<LoanTypeModel>>(
            future: LoanTypeModel.getAll(),
            builder: (BuildContext context,
                AsyncSnapshot<List<LoanTypeModel>> snapshot) {
              if (snapshot.hasData) {
                var items = snapshot.data!.map((LoanTypeModel loanType) {
                  return DropdownMenuItem<String>(
                    value: loanType.id, // Assuming LoanTypeModel has an id field
                    child: Text(loanType
                        .name), // Assuming LoanTypeModel has a name field
                  );
                }).toList();
                return InputDecorator(
                  decoration: InputDecoration(
                    labelText: 'Modalidad de Prestamo',
                    contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                  ),
                  
                  child: DropdownButtonHideUnderline(
                    // to remove the default underline of DropdownButton
                    child: DropdownButton<String>(
                      isExpanded:
                          true, // to make the dropdown match the width of the decorator
                      value: widget.data.loanTypeId, // set the value to the id of the selected loan type
                      items: items,
                      onChanged: (String? newValue) {
                        if (newValue == null) return;
                        widget.onUpdate('loanTypeId', newValue);
                        LoanTypeModel selectedLoanType = snapshot.data!.firstWhere(
                          (loanType) => loanType.id == newValue
                        );
                        if (selectedLoanType != null) {
                            widget.onUpdate('loanType', selectedLoanType);
                        }
                      },
                    ),
                  ),
                );
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                return CircularProgressIndicator();
              }
            },
          ),
           // Show an error message if no loan type is selected when the form is submitted
          if (widget.data.loanType == null && _formKey.currentState?.validate() == true)
            Text('Modalidad de Prestamo es requerido', style: TextStyle(color: Colors.red)),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Cantidad Solicitada',
            ),
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Campo requerido';
              }
              return null;
            },
            initialValue: widget.data.requestedAmount.toString(),
            onChanged: (value) {
              widget.onUpdate('requestedAmount', value);
              //TODO: Calculate gived amount
              widget.onUpdate('givedAmount', value);
            },
          ),
          TextFormField(
            controller: signDateController,
            decoration: InputDecoration(
              labelText: 'Fecha Otorgamiento',
            ),
            readOnly: true,
            onChanged: (value) {
              widget.onUpdate('signDate', value);
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Campo requerido';
              }
              return null;
            },
            onTap: () async {
              DateTime? date = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
              );
              if (date != null) {
                String formattedDate =
                  DateFormat('yyyy-MM-dd').format(date);
                signDateController.text = formattedDate;
                widget.onUpdate('signDate', date.toIso8601String());
              }
            },
          ),
          TextFormField(
            controller: firstPaymentDateController,
            decoration: InputDecoration(
              labelText: 'Fecha Primer Pago',
            ),
            readOnly: true, 
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Campo requerido';
              }
              return null;
            },
            onTap: () async {
              DateTime? date = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
              );
              if (date != null) {
                String formattedDate =
                  DateFormat('yyyy-MM-dd').format(date);
                firstPaymentDateController.text = formattedDate;
                widget.onUpdate('firstPaymentDate', date.toIso8601String());
                DateTime endDate = date.add(Duration(days: (widget.data.loanType?.weekDuration ?? 0) * 7));
                widget.onUpdate('endDate', endDate.toIso8601String());

              }
            },
          ),
          // Loan Resume Section
          Card(
            margin: EdgeInsets.all(10),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Resumen de prestamo', style: TextStyle(fontSize: 20)),
                  Text('Loan %: ${widget.data.loanType?.name}'), // Replace with actual calculation
                  Text('Cantidad Solicitada: \$${widget.data.requestedAmount}'),
                  Text('Cantidad Otorgada: ---TODO---:\$${widget.data.requestedAmount}'),
                  Text('Deuda Actual: ---TODO---: 0'),
                  Text('Fecha Termino: ${widget.data.endDate}'),
                  Text('No Semanas: ${widget.data.loanType?.weekDuration}'),
                  Text('Porcentaje total: ${widget.data.loanType?.rate}'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
