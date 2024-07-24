// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
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

abstract class GpayMultiplePaymentsData
    implements
        Built<GpayMultiplePaymentsData, GpayMultiplePaymentsDataBuilder> {
  GpayMultiplePaymentsData._();

  factory GpayMultiplePaymentsData(
          [void Function(GpayMultiplePaymentsDataBuilder b) updates]) =
      _$GpayMultiplePaymentsData;

  static void _initializeBuilder(GpayMultiplePaymentsDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GpayMultiplePaymentsData_payMultiplePayments>
      get payMultiplePayments;
  static Serializer<GpayMultiplePaymentsData> get serializer =>
      _$gpayMultiplePaymentsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GpayMultiplePaymentsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GpayMultiplePaymentsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GpayMultiplePaymentsData.serializer,
        json,
      );
}

abstract class GpayMultiplePaymentsData_payMultiplePayments
    implements
        Built<GpayMultiplePaymentsData_payMultiplePayments,
            GpayMultiplePaymentsData_payMultiplePaymentsBuilder> {
  GpayMultiplePaymentsData_payMultiplePayments._();

  factory GpayMultiplePaymentsData_payMultiplePayments(
      [void Function(GpayMultiplePaymentsData_payMultiplePaymentsBuilder b)
          updates]) = _$GpayMultiplePaymentsData_payMultiplePayments;

  static void _initializeBuilder(
          GpayMultiplePaymentsData_payMultiplePaymentsBuilder b) =>
      b..G__typename = 'Loan';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GpayMultiplePaymentsData_payMultiplePayments>
      get serializer => _$gpayMultiplePaymentsDataPayMultiplePaymentsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GpayMultiplePaymentsData_payMultiplePayments.serializer,
        this,
      ) as Map<String, dynamic>);

  static GpayMultiplePaymentsData_payMultiplePayments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GpayMultiplePaymentsData_payMultiplePayments.serializer,
        json,
      );
}
