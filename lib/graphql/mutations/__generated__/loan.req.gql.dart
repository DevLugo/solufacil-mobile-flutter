// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:solufacil_mobile/__generated__/serializers.gql.dart' as _i6;
import 'package:solufacil_mobile/graphql/mutations/__generated__/loan.ast.gql.dart'
    as _i5;
import 'package:solufacil_mobile/graphql/mutations/__generated__/loan.data.gql.dart'
    as _i2;
import 'package:solufacil_mobile/graphql/mutations/__generated__/loan.var.gql.dart'
    as _i3;

part 'loan.req.gql.g.dart';

abstract class GCreateLoanReq
    implements
        Built<GCreateLoanReq, GCreateLoanReqBuilder>,
        _i1.OperationRequest<_i2.GCreateLoanData, _i3.GCreateLoanVars> {
  GCreateLoanReq._();

  factory GCreateLoanReq([void Function(GCreateLoanReqBuilder b) updates]) =
      _$GCreateLoanReq;

  static void _initializeBuilder(GCreateLoanReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'CreateLoan',
    )
    ..executeOnListen = true;

  @override
  _i3.GCreateLoanVars get vars;
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
  _i2.GCreateLoanData? Function(
    _i2.GCreateLoanData?,
    _i2.GCreateLoanData?,
  )? get updateResult;
  @override
  _i2.GCreateLoanData? get optimisticResponse;
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
  _i2.GCreateLoanData? parseData(Map<String, dynamic> json) =>
      _i2.GCreateLoanData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GCreateLoanData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GCreateLoanData, _i3.GCreateLoanVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GCreateLoanReq> get serializer =>
      _$gCreateLoanReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GCreateLoanReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateLoanReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GCreateLoanReq.serializer,
        json,
      );
}
