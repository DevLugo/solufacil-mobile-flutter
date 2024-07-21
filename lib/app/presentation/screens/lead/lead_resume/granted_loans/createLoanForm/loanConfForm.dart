import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:solufacil_mobile/app/presentation/blocs/loan_types_cubit/loan_types_cubit.dart';
import 'package:solufacil_mobile/app/presentation/screens/lead/lead_resume/granted_loans/createLoanForm/index.dart';
import 'package:solufacil_mobile/app/presentation/screens/lead/lead_resume/granted_loans/createLoanForm/personalDataForm.dart';
import 'package:solufacil_mobile/graphql/queries/__generated__/loan.data.gql.dart';

class LoanConfForm extends StatefulWidget {
  final Function(String, dynamic, [int?]) onUpdate;
  final LoanConfState data;
  final FormValidationFunction validateForm;
  final bool isFormValid;

  LoanConfForm({
    required this.onUpdate,
    required this.data,
    required this.validateForm,
    required this.isFormValid,
    });

  @override
  _LoanConfFormState createState() => _LoanConfFormState();
}

class _LoanConfFormState extends State<LoanConfForm> {
  final _formKey = GlobalKey<FormState>();
  double? _loanAmount;
  double? _loanGiven;
  double? _previousLoanPendingAmount;
  DateTime? _loanEndDate;
  int? _loanWeeks; // New field for the number of weeks
  GGetLoanTypesData_getLoanTypes? selectedLoanType;
  TextEditingController signDateController = TextEditingController();
  TextEditingController firstPaymentDateController = TextEditingController();
  bool _hasErrors = false;

  handleFetchLoanTypes() async {
    final loanTypesCubit = context.read<LoanTypesCubit>();
    await loanTypesCubit.fetchLoanTypes(context);
  }

  @override
  void initState() {
    super.initState();
    handleFetchLoanTypes();
  }

  /* @override
  void didUpdateWidget(LoanConfForm oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.data.firstPaymentDate != null && widget.data.loanType != null && widget.data.requestedAmount != null) {
      double totalAmountToPay = (widget.data.requestedAmount ?? 0) * (1 + (widget.data.loanType?.rate ?? 0));
      double weeklyPayment = totalAmountToPay / (widget.data.loanType?.weekDuration ?? 1);

      // Only update the state if the values have changed
      if (totalAmountToPay.toString() != widget.data.amountToPay || weeklyPayment.toString() != widget.data.weeklyPayment) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          widget.onUpdate('amountToPay', totalAmountToPay.toString());
          widget.onUpdate('weeklyPayment', weeklyPayment.toString());
        });
      }
    }
  } */

  void handleChanged(String fieldName, dynamic value, [int? index]) {
    if (!widget.isFormValid) {
      widget.validateForm(
        _formKey,
        (bool isValid) {
          setState(() {
            _hasErrors = !isValid;
          });
        },
      );
    }
    widget.onUpdate(fieldName, value);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Text(widget.data.loanTypeId ?? 'No loan type selected'),
          //show loanType as a json
          Text(jsonEncode(widget.data)),
          if (widget.data.loanType == null && _formKey.currentState?.validate() == true)
            Text('Modalidad de Prestamo es requerido', style: TextStyle(color: Colors.red)),
          BlocBuilder<LoanTypesCubit, LoanTypesState>(
            builder: (context, state) {
              if (state.isLoading == false && state.loanTypes != null) {
                var items = state.loanTypes!.map((loanType) {
                  return DropdownMenuItem<String>(
                    value:
                        loanType.id, // Assuming LoanTypeModel has an id field
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
                      value: widget.data
                          .loanTypeId, // set the value to the id of the selected loan type
                      items: items,
                      onChanged: (String? newValue) {
                        if (newValue == null) return;
                        widget.onUpdate('loanTypeId', newValue);
                        GGetLoanTypesData_getLoanTypes selectedLoanType = state
                            .loanTypes!
                            .firstWhere((loanType) => loanType.id == newValue);
                        if (selectedLoanType != null) {
                          handleChanged('loanType', selectedLoanType);
                        }
                      },
                    ),
                  ),
                );
                /* } else if (state is LoanTypesError) {
                return Text('Error: ${state.message}'); */
              } else {
                return CircularProgressIndicator();
              }
            },
          ),
          // Show an error message if no loan type is selected when the form is submitted
          /* if (widget.data.loanType == null && _formKey.currentState?.validate() == true)
            Text('Modalidad de Prestamo es requerido', style: TextStyle(color: Colors.red)), */
          /* FutureBuilder<List<LoanTypeModel>>(
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
           */
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
          Text(widget.data.signDate.toString() ?? 'No sign date'),
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
              if (widget.data?.signDate == null) {
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
                String formattedDate = DateFormat('yyyy-MM-dd').format(date);
                signDateController.text = formattedDate;
                //widget.onUpdate('signDate', date.toIso8601String());
                handleChanged('signDate', date.toIso8601String());
                signDateController.value = signDateController.value.copyWith(
                  text: formattedDate,
                );
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
              if (widget.data.firstPaymentDate == null) {
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
                String formattedDate = DateFormat('yyyy-MM-dd').format(date);
                firstPaymentDateController.text = formattedDate;
                widget.onUpdate('firstPaymentDate', date.toIso8601String());
                DateTime endDate = date.add(Duration(
                  days: ((widget.data.loanType?.weekDuration ?? 0) -1) * 7
                ));
                //DateTime endDateInLocalTimezone = endDate.toLocal();
                widget.onUpdate('endDate', endDate.toIso8601String());
              }
            },
          ),
          Text(widget.data.requestedAmount!.toString()),
          Text(widget.data.loanType?.name ?? 'No loan type selected'),
          Text(widget.data.endDate.toString()),
          Text(widget.data.weeklyPayment.toString()),
          Text(widget.data.amountToPay.toString()),
          Text(widget.data.firstPaymentDate.toString()),
          // Loan Resume Section
          if (widget.data.loanType != null &&
              widget.data.requestedAmount != null &&
              widget.data.endDate != null)
            Card(
              margin: const EdgeInsets.all(10),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text('Resumen de prestamo',
                        style: TextStyle(fontSize: 20)),
                    Text('Modalidad: ${widget.data.loanType?.name}'),
                    Text(
                        'Cantidad Solicitada: \$${widget.data.requestedAmount}'),
                    Text(
                        'Cantidad Otorgada: \$${widget.data.requestedAmount}'),
                    const Text('Deuda Actual: ---TODO---: 0'),
                    Text('Fecha Termino: ${DateFormat('dd/MM/yyyy').format(widget.data.endDate ?? DateTime.now())}'),
                    Text('No Semanas: ${widget.data.loanType?.weekDuration}'),
                    Text(
                        'Pago Semanal: \$${(widget.data.weeklyPayment ?? 0).round()}',
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    Text(
                        'Cantidad a pagar: \$${(widget.data.amountToPay ?? 0).round()}',
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            )
          else
            Card(
              margin: const EdgeInsets.all(10),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text('Advertencia',
                        style: TextStyle(fontSize: 20, color: Colors.red)),
                    if (widget.data.loanType == null)
                      const Text(
                          'Es necesario seleccionar un tipo de préstamo.'),
                    if (widget.data.requestedAmount == null)
                      const Text(
                          'Es necesario ingresar la cantidad solicitada.'),
                    if (widget.data.endDate == null)
                      const Text(
                          'Es necesario seleccionar la fecha de primer pago.'),
                  ],
                ),
              ),
            )
        ],
      ),
    );
  }
}
