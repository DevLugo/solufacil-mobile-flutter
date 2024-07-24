// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:solufacil_mobile/__generated__/schema.schema.gql.dart' as _i1;
import 'package:solufacil_mobile/__generated__/serializers.gql.dart' as _i2;

part 'payment.var.gql.g.dart';

abstract class GpayPaymentVars
    implements Built<GpayPaymentVars, GpayPaymentVarsBuilder> {
  GpayPaymentVars._();

  factory GpayPaymentVars([void Function(GpayPaymentVarsBuilder b) updates]) =
      _$GpayPaymentVars;

  _i1.GPayLoanPaymentInput get input;
  static Serializer<GpayPaymentVars> get serializer =>
      _$gpayPaymentVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GpayPaymentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GpayPaymentVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GpayPaymentVars.serializer,
        json,
      );
}

abstract class GpayMultiplePaymentsVars
    implements
        Built<GpayMultiplePaymentsVars, GpayMultiplePaymentsVarsBuilder> {
  GpayMultiplePaymentsVars._();

  factory GpayMultiplePaymentsVars(
          [void Function(GpayMultiplePaymentsVarsBuilder b) updates]) =
      _$GpayMultiplePaymentsVars;

  BuiltList<_i1.GPayLoanPaymentInput> get input;
  static Serializer<GpayMultiplePaymentsVars> get serializer =>
      _$gpayMultiplePaymentsVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GpayMultiplePaymentsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GpayMultiplePaymentsVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GpayMultiplePaymentsVars.serializer,
        json,
      );
}
