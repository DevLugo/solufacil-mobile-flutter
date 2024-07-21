import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solufacil_mobile/__generated__/schema.schema.gql.dart';
import 'package:solufacil_mobile/app/presentation/blocs/loan_cubit/loan_cubit.dart';
import 'package:solufacil_mobile/app/presentation/screens/lead/lead_resume/granted_loans/createLoanForm/loanConfForm.dart';
import 'package:solufacil_mobile/app/presentation/screens/lead/lead_resume/granted_loans/createLoanForm/personalDataForm.dart';
import 'package:solufacil_mobile/app/presentation/screens/lead/lead_resume/granted_loans/createLoanForm/resumeForm.dart';
import 'package:solufacil_mobile/graphql/queries/__generated__/loan.data.gql.dart';

enum StepType { client, aval, loanConf }

class LoanForm extends StatefulWidget {
  final String leadId;
  final String locationId;
  const LoanForm({Key? key, required this.leadId, required this.locationId}) : super(key: key);

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
  bool hasErrors = false;

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
    "birthDate",
    "hasErrors"
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
    this.hasErrors = false,
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
      "hasErrors": hasErrors,
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
      "hasErrors": hasErrors,
    };
  }

  //add phone number to the list
  void addPhoneNumber() {
    phoneNumbers.add('');
  }
}

class LoanConfState {
  String? loanTypeId; // create a class for this
  double? requestedAmount;
  double? givedAmount;
  double? amountToPay;
  //LoanTypeModel? loanType; // create a class for this
  GGetLoanTypesData_getLoanTypes? loanType;

  DateTime? endDate;
  DateTime? signDate;
  DateTime? firstPaymentDate;
  
  double? weeklyPayment;
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
    'weeklyPayment',
    'amountToPay'
  ];

  LoanConfState({
    this.loanTypeId,
    this.requestedAmount = 3000,
    this.givedAmount = 3000,
    this.signDate,
    this.endDate,
    this.firstPaymentDate,
    this.previousLoanPendingAmount,
    this.loanType,
    this.weeklyPayment,
    this.amountToPay,
  });

  Map<String, dynamic> toJson() {
    return {
      'loanTypeId': loanTypeId,
      'requestedAmount': requestedAmount,
      'givedAmount': givedAmount,
      'endDate': endDate?.toIso8601String(),
      'signDate': signDate?.toIso8601String(),
      'firstPaymentDate': firstPaymentDate?.toIso8601String(),
      'previousLoanPendingAmount': previousLoanPendingAmount,
      'loanType': loanType,
      'weeklyPayment': weeklyPayment,
      'amountToPay': amountToPay
      // Agrega los demás campos aquí...
    };
  }

  Map<String, dynamic> toMap() {
    return {
      'requestedAmount': requestedAmount,
      'givedAmount': givedAmount,
      'endDate': endDate?.toIso8601String(),
      'signDate': signDate?.toIso8601String(),
      'firstPaymentDate': firstPaymentDate?.toIso8601String(),
      'previousLoanPendingAmount': previousLoanPendingAmount,
      'loanType': loanType,
      'weeklyPayment': weeklyPayment,

      // Add other fields here
    };
  }
}

class LoanFormState {
  PersonalDataState? client;
  PersonalDataState? aval;
  LoanConfState? loanConf;
  String leadId;
  String locationId;

  LoanFormState({
    this.client,
    this.aval,
    this.loanConf,
    required this.leadId,
    required this.locationId,
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
  LoanFormState? formData;
  final clientForm = GlobalKey<FormState>();
  final avalForm = GlobalKey<FormState>();
  final loanConfForm = GlobalKey<FormState>();
  bool isClientFormValid = true;
  bool isAvalFormValid = true;
  bool isLoanConfFormValid = true;
  List<int> visitedSteps = [0];
  final ScrollController scrollController = ScrollController();
  late final GLoanCreateInput loanCreateInput;

  @override
  void initState() {
    super.initState();
    formData = LoanFormState(
      locationId: widget.locationId,
      leadId: widget.leadId,
      aval: PersonalDataState(
        phoneNumbers: [''],
      ),
      client: PersonalDataState(
        phoneNumbers: [''],
      ),
      loanConf: LoanConfState(),
    );
  }

  handleCreateLoan() async {
    // Implement your logic to fetch the localities here
    // You can use an API call or any other method to retrieve the data
    // Once you have the data, update the localities list using setState
    // Example:
    final loanCubit = context.read<LoanCubit>();
    try {
      final res = await loanCubit.createLoanRequest(context, formData!, widget.locationId);
    } catch (e) {
      print(e);
    }
  }

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
      case 'hasErrors':
        data?.hasErrors = value == 'true';
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
        data?.loanType = value as GGetLoanTypesData_getLoanTypes?;
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
      case 'weeklyPayment':
        data?.weeklyPayment = double.parse(value);
        break;
      case 'amountToPay':
        data?.amountToPay = double.parse(value);
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
            formData!.client?.phoneNumbers ??= [];
            formData!.client?.phoneNumbers.add(value);
          } else {
            updateFields(formData!.client, field, value, index);
          }
          break;
        case StepType.aval:
          if (field == 'phoneNumbers' && index == null) {
            formData!.aval?.phoneNumbers ??= [];
            formData!.aval?.phoneNumbers.add(value);
          } else {
            updateFields(formData!.aval, field, value, index);
          }
          break;
        case StepType.loanConf:
          // Add this block
          
          if(field == 'loanType'){
            updateLoanConfigFields(formData!.loanConf, field, value, index);
            updateLoanConfigFields(formData!.loanConf, 'loanTypeId', value.id);
          }

          // Add this block
          
          if (
            formData!.loanConf!.firstPaymentDate != null &&
            formData!.loanConf!.loanType != null &&
            formData!.loanConf!.requestedAmount != null &&
            formData!.loanConf!.signDate != null
            ) {
            double totalAmountToPay = (formData!.loanConf!.requestedAmount ?? 0) * (1 + (formData!.loanConf!.loanType?.rate ?? 0));
            print("totalAmountToPay: $totalAmountToPay");
            double weeklyPayment = totalAmountToPay / (formData!.loanConf!.loanType?.weekDuration ?? 1);
            print("weeklyPayment: $weeklyPayment");
            print("formData!.loanConf!.amountToPay: ${formData!.loanConf!.amountToPay}");
            print("formData!.loanConf!.weeklyPayment: ${formData!.loanConf!.weeklyPayment}");
            // Only update the state if the values have changed
            if (totalAmountToPay.toDouble() != formData!.loanConf!.amountToPay || weeklyPayment.toDouble() != formData!.loanConf!.weeklyPayment) {
              updateLoanConfigFields(formData!.loanConf, 'amountToPay', totalAmountToPay.toString());
              updateLoanConfigFields(formData!.loanConf, 'weeklyPayment', weeklyPayment.toString());
            }
          }
          if (field == 'signDate' || field == 'firstPaymentDate' || field == 'requestedAmount') {
            updateLoanConfigFields(formData!.loanConf, field, value, index);
            if(field == 'firstPaymentDate'){
              DateTime date = DateTime.parse(value);
              DateTime endDate = date.add(Duration(
                  days: ((formData?.loanConf?.loanType?.weekDuration ?? 0) -1) * 7
              ));
              updateLoanConfigFields(formData!.loanConf, 'endDate', endDate.toIso8601String());
            }
          }
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nuevo prestamo'),
      ),
      body: BlocListener<LoanCubit, LoanCreationState>(
        listener: (context, state) {
          // Handle state changes
          if (state.status == LoanStatus.succeed) {
            Navigator.of(context).pop(); // Close modal or navigate
          }
          if (state.status == LoanStatus.failed) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.errorMessage ?? 'Error desconocido'),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        child: Column(
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
                        onPressed: () async {
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
                                controlsDetails.onStepContinue!();
                                }
                              break;
                            case 3:
                              //validateForm(loanConfForm, (isValid) => isLoanConfFormValid = isValid);
                              
                                try {
                                  
                                  await handleCreateLoan();
                                } catch (e) {
                                  print(e);
                                }
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
                          : (formData!.client != null
                              ? (_currentStep == 0
                                  ? StepState.editing
                                  : (isClientFormValid
                                      ? StepState.complete
                                      : StepState.error))
                              : StepState.indexed),
                      content: Form(
                        key: clientForm,
                        child: PersonalDataForm(
                            data: formData!.client!,
                            onUpdate: (String field, String value, [int? index]) {
                              if (!PersonalDataState.attributes.contains(field)) {
                                throw ArgumentError('Invalid field: $field');
                              }
                              _updateFormData(
                                  field, value, StepType.client, index);
                            },
                            isFormValid: isClientFormValid,
                            /* validateForm: validateForm(clientForm, (isValid) => isClientFormValid = isValid) */
                            validateForm: (formKey, updateIsValid) => validateForm(clientForm, (isValid) => isClientFormValid = isValid)
                            ),
                      )),
                  Step(
                    title: Text(''),
                    label: Text('Aval'),
                    isActive: _currentStep == 1,
                    state: !visitedSteps.contains(_currentStep)
                        ? StepState.disabled
                        : (formData!.aval != null
                            ? (_currentStep == 1
                                ? StepState.editing
                                : (isAvalFormValid
                                    ? StepState.complete
                                    : StepState.error))
                            : StepState.indexed),
                    content: PersonalDataForm(
                        data: formData!.aval!,
                        onUpdate: (String field, String value, [int? index]) {
                          if (!PersonalDataState.attributes.contains(field)) {
                            throw ArgumentError('Invalid field: $field');
                          }
                          _updateFormData(field, value, StepType.aval, index);
                        },
                        isFormValid: isAvalFormValid,
                        validateForm: (formKey, updateIsValid) => validateForm(avalForm, (isValid) => isClientFormValid = isValid)
                        ),
                  ),
                  Step(
                    title: Text(''),
                    label: Text('Prestamo'),
                    isActive: _currentStep == 2,
                    state: !visitedSteps.contains(_currentStep)
                        ? StepState.disabled
                        : (formData!.loanConf != null
                            ? (_currentStep == 2
                                ? StepState.editing
                                : (isLoanConfFormValid
                                    ? StepState.complete
                                    : StepState.error))
                            : StepState.indexed),
                    content: LoanConfForm(
                        data: formData!.loanConf!,
                        onUpdate: (String field, dynamic value, [int? index]) {
                          print("------------------");
                          print("field: $field, value: $value, index: $index");
                          print("------------------");
                          if (!LoanConfState.attributes.contains(field)) {
                            throw ArgumentError('Invalid field: $field');
                          }
                          _updateFormData(field, value, StepType.loanConf, index);
                        },
                        isFormValid: isLoanConfFormValid,
                        validateForm: (formKey, updateIsValid) => validateForm(loanConfForm, (isValid) => isLoanConfFormValid = isValid)
                        ),

                        
                  ),
                  Step(
                    title: Text(''),
                    label: Text('Resumen'),
                    isActive: _currentStep == 3,
                    state: _currentStep == 3
                        ? StepState.complete
                        : StepState.indexed,
                    content: LoanResumeForm(
                      loanFormState: formData!,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
  );
  }
}
