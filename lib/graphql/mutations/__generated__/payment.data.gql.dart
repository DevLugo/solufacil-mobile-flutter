// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:solufacil_mobile/__generated__/serializers.gql.dart' as _i1;

part 'payment.data.gql.g.dart';

abstract class GpayPaymentData
    implements Built<GpayPaymentData, GpayPaymentDataBuilder> {
  GpayPaymentData._();

  factory GpayPaymentData([void Function(GpayPaymentDataBuilder b) updates]) =
      _$GpayPaymentData;

  static void _initializeBuilder(GpayPaymentDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GpayPaymentData_payPayment get payPayment;
  static Serializer<GpayPaymentData> get serializer =>
      _$gpayPaymentDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GpayPaymentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GpayPaymentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GpayPaymentData.serializer,
        json,
      );
}

abstract class GpayPaymentData_payPayment
    implements
        Built<GpayPaymentData_payPayment, GpayPaymentData_payPaymentBuilder> {
  GpayPaymentData_payPayment._();

  factory GpayPaymentData_payPayment(
          [void Function(GpayPaymentData_payPaymentBuilder b) updates]) =
      _$GpayPaymentData_payPayment;

  static void _initializeBuilder(GpayPaymentData_payPaymentBuilder b) =>
      b..G__typename = 'Loan';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GpayPaymentData_payPayment> get serializer =>
      _$gpayPaymentDataPayPaymentSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GpayPaymentData_payPayment.serializer,
        this,
      ) as Map<String, dynamic>);

  static GpayPaymentData_payPayment? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GpayPaymentData_payPayment.serializer,
        json,
      );
}
