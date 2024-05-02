// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;
import 'package:solufacil_mobile/__generated__/schema.schema.gql.dart'
    show
        GBorrowerCreateInput,
        GBorrowerWhereInput,
        GBorrowerWhereUniqueInput,
        GCreateAddressInput,
        GCreatePersonalDataInput,
        GCreatePhoneInput,
        GDate,
        GDateTime,
        GDecimal,
        GEmployeeWhereUniqueInput,
        GEmployeesTypes,
        GLoanByBorrowerWhereUniqueInput,
        GLoanCreateInput,
        GLoanState,
        GLoanTypeWhereInput,
        GLocationWhereInput,
        GPayLoanPaymentInput,
        GPaymentScheduleWhereInput,
        GPaymentState,
        GRouteWhereInput,
        GSignInInput,
        GUserCreateInput;
import 'package:solufacil_mobile/graphql/mutations/__generated__/auth.data.gql.dart'
    show
        GSignInData,
        GSignInData_signIn,
        GSignInData_signIn_user,
        GSignInData_signIn_user_employee,
        GSignInData_signIn_user_employee_personalData,
        GSignUpData,
        GSignUpData_signUp;
import 'package:solufacil_mobile/graphql/mutations/__generated__/auth.req.gql.dart'
    show GSignInReq, GSignUpReq;
import 'package:solufacil_mobile/graphql/mutations/__generated__/auth.var.gql.dart'
    show GSignInVars, GSignUpVars;
import 'package:solufacil_mobile/graphql/queries/__generated__/locality.data.gql.dart'
    show
        GLocationsData,
        GLocationsData_locations,
        GLocationsData_locations_leads,
        GLocationsData_locations_leads_personalData,
        GLocationsData_locations_municipality,
        GLocationsData_locations_state;
import 'package:solufacil_mobile/graphql/queries/__generated__/locality.req.gql.dart'
    show GLocationsReq;
import 'package:solufacil_mobile/graphql/queries/__generated__/locality.var.gql.dart'
    show GLocationsVars;
import 'package:solufacil_mobile/graphql/queries/__generated__/route.data.gql.dart'
    show GGetRoutesData, GGetRoutesData_getRoutes;
import 'package:solufacil_mobile/graphql/queries/__generated__/route.req.gql.dart'
    show GGetRoutesReq;
import 'package:solufacil_mobile/graphql/queries/__generated__/route.var.gql.dart'
    show GGetRoutesVars;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GBorrowerCreateInput,
  GBorrowerWhereInput,
  GBorrowerWhereUniqueInput,
  GCreateAddressInput,
  GCreatePersonalDataInput,
  GCreatePhoneInput,
  GDate,
  GDateTime,
  GDecimal,
  GEmployeeWhereUniqueInput,
  GEmployeesTypes,
  GGetRoutesData,
  GGetRoutesData_getRoutes,
  GGetRoutesReq,
  GGetRoutesVars,
  GLoanByBorrowerWhereUniqueInput,
  GLoanCreateInput,
  GLoanState,
  GLoanTypeWhereInput,
  GLocationWhereInput,
  GLocationsData,
  GLocationsData_locations,
  GLocationsData_locations_leads,
  GLocationsData_locations_leads_personalData,
  GLocationsData_locations_municipality,
  GLocationsData_locations_state,
  GLocationsReq,
  GLocationsVars,
  GPayLoanPaymentInput,
  GPaymentScheduleWhereInput,
  GPaymentState,
  GRouteWhereInput,
  GSignInData,
  GSignInData_signIn,
  GSignInData_signIn_user,
  GSignInData_signIn_user_employee,
  GSignInData_signIn_user_employee_personalData,
  GSignInInput,
  GSignInReq,
  GSignInVars,
  GSignUpData,
  GSignUpData_signUp,
  GSignUpReq,
  GSignUpVars,
  GUserCreateInput,
])
final Serializers serializers = _serializersBuilder.build();
