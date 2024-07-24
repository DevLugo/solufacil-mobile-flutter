// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:solufacil_mobile/__generated__/serializers.gql.dart' as _i6;
import 'package:solufacil_mobile/graphql/mutations/__generated__/payment.ast.gql.dart'
    as _i5;
import 'package:solufacil_mobile/graphql/mutations/__generated__/payment.data.gql.dart'
    as _i2;
import 'package:solufacil_mobile/graphql/mutations/__generated__/payment.var.gql.dart'
    as _i3;

part 'payment.req.gql.g.dart';

abstract class GpayPaymentReq
    implements
        Built<GpayPaymentReq, GpayPaymentReqBuilder>,
        _i1.OperationRequest<_i2.GpayPaymentData, _i3.GpayPaymentVars> {
  GpayPaymentReq._();

  factory GpayPaymentReq([void Function(GpayPaymentReqBuilder b) updates]) =
      _$GpayPaymentReq;

  static void _initializeBuilder(GpayPaymentReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'payPayment',
    )
    ..executeOnListen = true;

  @override
  _i3.GpayPaymentVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GpayPaymentData? Function(
    _i2.GpayPaymentData?,
    _i2.GpayPaymentData?,
  )? get updateResult;
  @override
  _i2.GpayPaymentData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GpayPaymentData? parseData(Map<String, dynamic> json) =>
      _i2.GpayPaymentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GpayPaymentData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GpayPaymentData, _i3.GpayPaymentVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GpayPaymentReq> get serializer =>
      _$gpayPaymentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GpayPaymentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GpayPaymentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GpayPaymentReq.serializer,
        json,
      );
}

abstract class GpayMultiplePaymentsReq
    implements
        Built<GpayMultiplePaymentsReq, GpayMultiplePaymentsReqBuilder>,
        _i1.OperationRequest<_i2.GpayMultiplePaymentsData,
            _i3.GpayMultiplePaymentsVars> {
  GpayMultiplePaymentsReq._();

  factory GpayMultiplePaymentsReq(
          [void Function(GpayMultiplePaymentsReqBuilder b) updates]) =
      _$GpayMultiplePaymentsReq;

  static void _initializeBuilder(GpayMultiplePaymentsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'payMultiplePayments',
    )
    ..executeOnListen = true;

  @override
  _i3.GpayMultiplePaymentsVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GpayMultiplePaymentsData? Function(
    _i2.GpayMultiplePaymentsData?,
    _i2.GpayMultiplePaymentsData?,
  )? get updateResult;
  @override
  _i2.GpayMultiplePaymentsData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GpayMultiplePaymentsData? parseData(Map<String, dynamic> json) =>
      _i2.GpayMultiplePaymentsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GpayMultiplePaymentsData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GpayMultiplePaymentsData,
      _i3.GpayMultiplePaymentsVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GpayMultiplePaymentsReq> get serializer =>
      _$gpayMultiplePaymentsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GpayMultiplePaymentsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GpayMultiplePaymentsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GpayMultiplePaymentsReq.serializer,
        json,
      );
}
