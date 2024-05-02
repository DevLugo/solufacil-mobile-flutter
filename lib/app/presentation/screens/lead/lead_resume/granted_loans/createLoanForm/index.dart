import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:powersync_flutter_demo/models/loan_type.model.dart';
import 'package:powersync_flutter_demo/services/loan.service.dart';
import 'package:powersync_flutter_demo/widgets/forms/createLoanForm/loanConfForm.dart';
import 'package:powersync_flutter_demo/widgets/forms/createLoanForm/personalDataForm.dart';
import 'package:powersync_flutter_demo/widgets/forms/createLoanForm/resumeForm.dart';
import 'package:powersync_flutter_demo/widgets/forms/loanLeadForm.dart';

enum StepType { client, aval, loanConf }

class LoanForm extends StatefulWidget {
  const LoanForm({Key? key}) : super(key: key);

  @override
  _LoanFormState createState() => _LoanFormState();
}

class PersonalDataState {
  String? email;
  String? firstName;
  String? lastName;
  List<String> phoneNumbers = [''];

  //Street
  String? street;
  String? internalNumber;
  String? exteriorNumber;
  String? references;
  String? postalCode;
  String? curp;
  String? electoralKey;
  String? municipality;

  bool isClient = false;
  DateTime birthDate = DateTime.now();
  TextEditingController dateController = TextEditingController();

  static const attributes = [
    'firstName',
    'lastName',
    'phoneNumbers',
    "email",
    "street",
    "internalNumber",
    "exteriorNumber",
    "references",
    "postalCode",
    "curp",
    "electoralKey",
    "municipality",
    "birthDate"
  ];

  PersonalDataState({
    this.email,
    this.firstName,
    this.lastName,
    this.street,
    this.internalNumber,
    this.exteriorNumber,
    this.references,
    this.postalCode,
    this.curp,
    this.electoralKey,
    this.municipality,
    required this.phoneNumbers,
  }) {
    // Initialize your lists here if needed
  }
  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
      'street': street,
      'internalNumber': internalNumber,
      'exteriorNumber': exteriorNumber,
      'references': references,
      'postalCode': postalCode,
      'curp': curp,
      'electoralKey': electoralKey,
      "municipality": municipality,
      "phoneNumbers": phoneNumbers,
      "birthDate": birthDate.toIso8601String(),
      // Agrega los demás campos aquí...
    };
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
      'phoneNumbers': phoneNumbers,
      "street": street,
      "internalNumber": internalNumber,
      "exteriorNumber": exteriorNumber,
      "references": references,
      "postalCode": postalCode,
      "curp": curp,
      "electoralKey": electoralKey,
      "municipality": municipality,
      "birthDate": birthDate.toIso8601String(),
    };
  }

  //add phone number to the list
  void addPhoneNumber() {
    phoneNumbers.add('');
  }
}

class LoanConfState {
  String? loanTypeId; // create a class for this
  LoanTypeModel? loanType;
  double? requestedAmount;
  double? givedAmount;

  DateTime? endDate;
  DateTime? signDate;
  DateTime? firstPaymentDate;

  double? previousLoanPendingAmount;

  static const attributes = [
    'loanTypeId',
    'loanType',
    'requestedAmount',
    'givedAmount',
    'startDate',
    'endDate',
    'signDate',
    'firstPaymentDate',
    'previousLoanPendingAmount',
  ];

  LoanConfState({
    this.loanTypeId,
    this.loanType,
    this.requestedAmount = 3000,
    this.givedAmount = 3000,
    this.signDate,
    this.endDate,
    this.firstPaymentDate,
    this.previousLoanPendingAmount,
  });

  Map<String, dynamic> toJson() {
    return {
      'loanTypeId': loanTypeId,
      'loanType': loanType,
      'requestedAmount': requestedAmount,
      'givedAmount': givedAmount,
      'endDate': endDate?.toIso8601String(),
      'signDate': signDate?.toIso8601String(),
      'firstPaymentDate': firstPaymentDate?.toIso8601String(),
      'previousLoanPendingAmount': previousLoanPendingAmount,
      // Agrega los demás campos aquí...
    };
  }

  Map<String, dynamic> toMap() {
    return {
      'loanType': loanType,
      'requestedAmount': requestedAmount,
      'givedAmount': givedAmount,
      'endDate': endDate?.toIso8601String(),
      'signDate': signDate?.toIso8601String(),
      'firstPaymentDate': firstPaymentDate?.toIso8601String(),
      'previousLoanPendingAmount': previousLoanPendingAmount,

      // Add other fields here
    };
  }
}

class LoanFormState {
  PersonalDataState? client;
  PersonalDataState? aval;
  LoanConfState? loanConf;

  LoanFormState({
    this.client,
    this.aval,
    this.loanConf,
  }) {
    client = PersonalDataState(
      phoneNumbers: [''],
    );
    aval = PersonalDataState(
      phoneNumbers: [''],
    );
    loanConf = LoanConfState();
  }

  Map<String, dynamic> toJson() {
    return {
      'client': client?.toJson(),
      'aval': aval?.toJson(),
      'loanConf': loanConf?.toJson(),
      // Agrega los demás campos aquí...
    };
  }
}

class _LoanFormState extends State<LoanForm> {
  int _currentStep = 0;
  LoanFormState formData = LoanFormState();
  final clientForm = GlobalKey<FormState>();
  final avalForm = GlobalKey<FormState>();
  final loanConfForm = GlobalKey<FormState>();
  bool isClientFormValid = true;
  bool isAvalFormValid = true;
  bool isLoanConfFormValid = true;
  List<int> visitedSteps = [0];
  final ScrollController scrollController = ScrollController();

  void validateForm(
      GlobalKey<FormState> formKey, ValueSetter<bool> updateIsValid) {
    if (formKey.currentState != null && !formKey.currentState!.validate()) {
      setState(() {
        updateIsValid(false);
      });
    } else {
      setState(() {
        updateIsValid(true);
      });
    }
  }

  //void updateFields(PersonalDataState? data, String field, String value) {
  void updateFields(PersonalDataState? data, String field, String value,
      [int? index]) {
    switch (field) {
      case 'email':
        data?.email = value;
        break;
      case 'firstName':
        data?.firstName = value;
        break;
      case 'lastName':
        data?.lastName = value;
        break;
      case 'phoneNumbers':
        //Allow to add more than one phone number and edit an specific one by index
        if (index != null &&
            data?.phoneNumbers != null &&
            index < data!.phoneNumbers.length) {
          data.phoneNumbers[index] = value;
        } else {
          data?.phoneNumbers = value.split(",");
        }
        break;
      case 'street':
        data?.street = value;
        break;
      case 'internalNumber':
        data?.internalNumber = value;
        break;
      case 'exteriorNumber':
        data?.exteriorNumber = value;
        break;
      case 'references':
        data?.references = value;
        break;
      case 'postalCode':
        data?.postalCode = value;
        break;
      case 'curp':
        data?.curp = value;
        break;
      case 'electoralKey':
        data?.electoralKey = value;
        break;
      case 'birthDate':
        data?.birthDate = DateTime.parse(value);
        break;
      // Add other fields here...
    }
  }

  void updateLoanConfigFields(LoanConfState? data, String field, dynamic value,
      [int? index]) {
    switch (field) {
      case 'loanTypeId':
        data?.loanTypeId = value;
        break;
      case 'loanType':
        data?.loanType = value as LoanTypeModel;
        break;
      case 'requestedAmount':
        data?.requestedAmount = double.parse(value);
        break;
      case 'givedAmount':
        data?.givedAmount = double.parse(value);
        break;
      case 'startDate':
        //data?.startDate = DateTime.parse(value);
        break;
      case 'endDate':
        data?.endDate = DateTime.parse(value);
        break;
      case 'firstPaymentDate':
        data?.firstPaymentDate = DateTime.parse(value);
        break;
      case 'signDate':
        data?.signDate = DateTime.parse(value);
        break;
      case 'previousLoanPendingAmount':
        data?.previousLoanPendingAmount = double.parse(value);
        break;
      // Add other fields here...
    }
  }

  void _updateFormData(String field, dynamic value, StepType type,
      [int? index]) {
    setState(() {
      switch (type) {
        case StepType.client:
          if (field == 'phoneNumbers' && index == null) {
            formData.client?.phoneNumbers ??= [];
            formData.client?.phoneNumbers.add(value);
          } else {
            updateFields(formData.client, field, value, index);
          }
          break;
        case StepType.aval:
          if (field == 'phoneNumbers' && index == null) {
            formData.aval?.phoneNumbers ??= [];
            formData.aval?.phoneNumbers.add(value);
          } else {
            updateFields(formData.aval, field, value, index);
          }
          break;
        case StepType.loanConf:
          updateLoanConfigFields(formData.loanConf, field, value, index);
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nuevo prestamo'),
      ),
      body: Column(
        children: [
          Expanded(
            // Agrega esto
            child: Stepper(
              controller: scrollController,
              type: StepperType.horizontal,
              currentStep: _currentStep,
              onStepTapped: (step) {
                if (visitedSteps.contains(step)) {
                  //add step to the visitedSteps
                  setState(() => _currentStep = step);
                  scrollController.animateTo(
                    0.0,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                }
              },
              controlsBuilder:
                  (BuildContext context, ControlsDetails controlsDetails) {
                return Row(
                  children: <Widget>[
                    TextButton(
                      onPressed: () {
                        bool isValid = true;
                        switch (_currentStep) {
                          case 0:
                            validateForm(clientForm,
                                (isValid) => isClientFormValid = isValid);
                            if (isClientFormValid)
                              controlsDetails.onStepContinue!();
                            break;
                          case 1:
                            validateForm(avalForm,
                                (isValid) => isAvalFormValid = isValid);
                            if (isAvalFormValid)
                              controlsDetails.onStepContinue!();
                            break;
                          case 2:
                            validateForm(loanConfForm,
                                (isValid) => isLoanConfFormValid = isValid);
                            if (isLoanConfFormValid){
                              try {
                                LoanService().createLoan(formData);
                              } catch (e) {
                                print(e);
                              }
                              }
                            break;
                          case 3:
                            break;
                        }
                      },
                      child: Text(_currentStep == 2 ? 'Otorgar' : 'Siguiente'),
                    ),
                    TextButton(
                      onPressed: controlsDetails.onStepCancel,
                      child: const Text('Regresar'),
                    ),
                  ],
                );
              },
              onStepContinue: () {
                if (_currentStep < 3) {
                  setState(() => _currentStep += 1);
                }
                // If the current step is valid, add it to visitedSteps
                if (!visitedSteps.contains(_currentStep)) {
                  setState(() {
                    visitedSteps.add(_currentStep);
                  });
                }
              },
              steps: [
                Step(
                    title: Text(''),
                    label: Text('Cliente'),
                    isActive: _currentStep == 0,
                    state: !visitedSteps.contains(_currentStep)
                        ? StepState.disabled
                        : (formData.client != null
                            ? (_currentStep == 0
                                ? StepState.editing
                                : (isClientFormValid
                                    ? StepState.complete
                                    : StepState.error))
                            : StepState.indexed),
                    content: Form(
                      key: clientForm,
                      child: PersonalDataForm(
                          data: formData.client!,
                          onUpdate: (String field, String value, [int? index]) {
                            if (!PersonalDataState.attributes.contains(field)) {
                              throw ArgumentError('Invalid field: $field');
                            }
                            _updateFormData(
                                field, value, StepType.client, index);
                          }),
                    )),
                Step(
                  title: Text(''),
                  label: Text('Aval'),
                  isActive: _currentStep == 1,
                  state: !visitedSteps.contains(_currentStep)
                      ? StepState.disabled
                      : (formData.aval != null
                          ? (_currentStep == 1
                              ? StepState.editing
                              : (isAvalFormValid
                                  ? StepState.complete
                                  : StepState.error))
                          : StepState.indexed),
                  content: PersonalDataForm(
                      data: formData.aval!,
                      onUpdate: (String field, String value, [int? index]) {
                        if (!PersonalDataState.attributes.contains(field)) {
                          throw ArgumentError('Invalid field: $field');
                        }
                        _updateFormData(field, value, StepType.aval, index);
                      }),
                ),
                Step(
                  title: Text(''),
                  label: Text('Prestamo'),
                  isActive: _currentStep == 2,
                  state: !visitedSteps.contains(_currentStep)
                      ? StepState.disabled
                      : (formData.loanConf != null
                          ? (_currentStep == 2
                              ? StepState.editing
                              : (isLoanConfFormValid
                                  ? StepState.complete
                                  : StepState.error))
                          : StepState.indexed),
                  content: LoanConfForm(
                      data: formData.loanConf!,
                      onUpdate: (String field, dynamic value, [int? index]) {
                        print("------------------");
                        print("field: $field, value: $value, index: $index");
                        print("------------------");
                        if (!LoanConfState.attributes.contains(field)) {
                          throw ArgumentError('Invalid field: $field');
                        }
                        _updateFormData(field, value, StepType.loanConf, index);
                      }),
                ),
                Step(
                  title: Text(''),
                  label: Text('Resumen'),
                  isActive: _currentStep == 3,
                  state: _currentStep == 3
                      ? StepState.complete
                      : StepState.indexed,
                  content: LoanResumeForm(
                    loanFormState: formData,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
