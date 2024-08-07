// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(FetchPolicy.serializer)
      ..add(GBorrowerCreateInput.serializer)
      ..add(GBorrowerWhereInput.serializer)
      ..add(GBorrowerWhereUniqueInput.serializer)
      ..add(GCreateAddressInput.serializer)
      ..add(GCreateLoanData.serializer)
      ..add(GCreateLoanData_createLoan.serializer)
      ..add(GCreateLoanReq.serializer)
      ..add(GCreateLoanVars.serializer)
      ..add(GCreatePersonalDataInput.serializer)
      ..add(GCreatePhoneInput.serializer)
      ..add(GDate.serializer)
      ..add(GDateTime.serializer)
      ..add(GDecimal.serializer)
      ..add(GEmployeeWhereUniqueInput.serializer)
      ..add(GEmployeesTypes.serializer)
      ..add(GGetLoanTypesData.serializer)
      ..add(GGetLoanTypesData_getLoanTypes.serializer)
      ..add(GGetLoanTypesReq.serializer)
      ..add(GGetLoanTypesVars.serializer)
      ..add(GGetRoutesData.serializer)
      ..add(GGetRoutesData_getRoutes.serializer)
      ..add(GGetRoutesReq.serializer)
      ..add(GGetRoutesVars.serializer)
      ..add(GLoanByBorrowerWhereUniqueInput.serializer)
      ..add(GLoanCreateInput.serializer)
      ..add(GLoanState.serializer)
      ..add(GLoanTypeWhereInput.serializer)
      ..add(GLocationWhereInput.serializer)
      ..add(GLocationsData.serializer)
      ..add(GLocationsData_locations.serializer)
      ..add(GLocationsData_locations_leads.serializer)
      ..add(GLocationsData_locations_leads_personalData.serializer)
      ..add(GLocationsData_locations_municipality.serializer)
      ..add(GLocationsData_locations_state.serializer)
      ..add(GLocationsReq.serializer)
      ..add(GLocationsVars.serializer)
      ..add(GPayLoanPaymentInput.serializer)
      ..add(GPaymentScheduleWhereInput.serializer)
      ..add(GPaymentState.serializer)
      ..add(GRouteWhereInput.serializer)
      ..add(GSignInData.serializer)
      ..add(GSignInData_signIn.serializer)
      ..add(GSignInData_signIn_user.serializer)
      ..add(GSignInData_signIn_user_employee.serializer)
      ..add(GSignInData_signIn_user_employee_personalData.serializer)
      ..add(GSignInInput.serializer)
      ..add(GSignInReq.serializer)
      ..add(GSignInVars.serializer)
      ..add(GSignUpData.serializer)
      ..add(GSignUpData_signUp.serializer)
      ..add(GSignUpReq.serializer)
      ..add(GSignUpVars.serializer)
      ..add(GUserCreateInput.serializer)
      ..add(GgetEmployeeData.serializer)
      ..add(GgetEmployeeData_getEmployee.serializer)
      ..add(GgetEmployeeData_getEmployee_personalData.serializer)
      ..add(GgetEmployeeData_getEmployee_personalData_addresses.serializer)
      ..add(GgetEmployeeData_getEmployee_personalData_addresses_location
          .serializer)
      ..add(
          GgetEmployeeData_getEmployee_personalData_addresses_location_municipality
              .serializer)
      ..add(GgetEmployeeReq.serializer)
      ..add(GgetEmployeeVars.serializer)
      ..add(GgetPaymentSchedulesData.serializer)
      ..add(GgetPaymentSchedulesData_getPaymentSchedules.serializer)
      ..add(GgetPaymentSchedulesData_getPaymentSchedules_borrower.serializer)
      ..add(GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalData
          .serializer)
      ..add(GgetPaymentSchedulesReq.serializer)
      ..add(GgetPaymentSchedulesVars.serializer)
      ..add(GpayMultiplePaymentsData.serializer)
      ..add(GpayMultiplePaymentsData_payMultiplePayments.serializer)
      ..add(GpayMultiplePaymentsReq.serializer)
      ..add(GpayMultiplePaymentsVars.serializer)
      ..add(GpayPaymentData.serializer)
      ..add(GpayPaymentData_payPayment.serializer)
      ..add(GpayPaymentReq.serializer)
      ..add(GpayPaymentVars.serializer)
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GCreatePersonalDataInput)]),
          () => new ListBuilder<GCreatePersonalDataInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GCreatePhoneInput)]),
          () => new ListBuilder<GCreatePhoneInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GCreateAddressInput)]),
          () => new ListBuilder<GCreateAddressInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GEmployeesTypes)]),
          () => new ListBuilder<GEmployeesTypes>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GGetLoanTypesData_getLoanTypes)]),
          () => new ListBuilder<GGetLoanTypesData_getLoanTypes>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GGetRoutesData_getRoutes)]),
          () => new ListBuilder<GGetRoutesData_getRoutes>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GLocationsData_locations)]),
          () => new ListBuilder<GLocationsData_locations>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GLocationsData_locations_leads)]),
          () => new ListBuilder<GLocationsData_locations_leads>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GPayLoanPaymentInput)]),
          () => new ListBuilder<GPayLoanPaymentInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GPaymentState)]),
          () => new ListBuilder<GPaymentState>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GgetEmployeeData_getEmployee_personalData_addresses)
          ]),
          () => new ListBuilder<
              GgetEmployeeData_getEmployee_personalData_addresses>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GgetPaymentSchedulesData_getPaymentSchedules)
          ]),
          () => new ListBuilder<GgetPaymentSchedulesData_getPaymentSchedules>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GpayMultiplePaymentsData_payMultiplePayments)
          ]),
          () =>
              new ListBuilder<GpayMultiplePaymentsData_payMultiplePayments>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
