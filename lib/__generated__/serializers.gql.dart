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
        GPayLoanPaymentInput,
        GPaymentScheduleWhereInput,
        GPaymentState,
        GRouteWhereInput,
        GSignInInput,
        GUserCreateInput;
import 'package:solufacil_mobile/graphql/mutations/__generated__/auth.data.gql.dart'
    show GsignUpData, GsignUpData_signUp;
import 'package:solufacil_mobile/graphql/mutations/__generated__/auth.req.gql.dart'
    show GsignUpReq;
import 'package:solufacil_mobile/graphql/mutations/__generated__/auth.var.gql.dart'
    show GsignUpVars;

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
  GLoanByBorrowerWhereUniqueInput,
  GLoanCreateInput,
  GLoanState,
  GLoanTypeWhereInput,
  GPayLoanPaymentInput,
  GPaymentScheduleWhereInput,
  GPaymentState,
  GRouteWhereInput,
  GSignInInput,
  GUserCreateInput,
  GsignUpData,
  GsignUpData_signUp,
  GsignUpReq,
  GsignUpVars,
])
final Serializers serializers = _serializersBuilder.build();
