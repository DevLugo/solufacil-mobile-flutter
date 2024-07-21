// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:solufacil_mobile/__generated__/schema.schema.gql.dart' as _i1;
import 'package:solufacil_mobile/__generated__/serializers.gql.dart' as _i2;

part 'paymentSchedules.var.gql.g.dart';

abstract class GgetPaymentSchedulesVars
    implements
        Built<GgetPaymentSchedulesVars, GgetPaymentSchedulesVarsBuilder> {
  GgetPaymentSchedulesVars._();

  factory GgetPaymentSchedulesVars(
          [void Function(GgetPaymentSchedulesVarsBuilder b) updates]) =
      _$GgetPaymentSchedulesVars;

  _i1.GPaymentScheduleWhereInput? get where;
  static Serializer<GgetPaymentSchedulesVars> get serializer =>
      _$ggetPaymentSchedulesVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GgetPaymentSchedulesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPaymentSchedulesVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GgetPaymentSchedulesVars.serializer,
        json,
      );
}
