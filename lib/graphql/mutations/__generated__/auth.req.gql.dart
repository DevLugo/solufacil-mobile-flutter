// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:solufacil_mobile/__generated__/serializers.gql.dart' as _i6;
import 'package:solufacil_mobile/graphql/mutations/__generated__/auth.ast.gql.dart'
    as _i5;
import 'package:solufacil_mobile/graphql/mutations/__generated__/auth.data.gql.dart'
    as _i2;
import 'package:solufacil_mobile/graphql/mutations/__generated__/auth.var.gql.dart'
    as _i3;

part 'auth.req.gql.g.dart';

abstract class GsignUpReq
    implements
        Built<GsignUpReq, GsignUpReqBuilder>,
        _i1.OperationRequest<_i2.GsignUpData, _i3.GsignUpVars> {
  GsignUpReq._();

  factory GsignUpReq([void Function(GsignUpReqBuilder b) updates]) =
      _$GsignUpReq;

  static void _initializeBuilder(GsignUpReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'signUp',
    )
    ..executeOnListen = true;

  @override
  _i3.GsignUpVars get vars;
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
  _i2.GsignUpData? Function(
    _i2.GsignUpData?,
    _i2.GsignUpData?,
  )? get updateResult;
  @override
  _i2.GsignUpData? get optimisticResponse;
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
  _i2.GsignUpData? parseData(Map<String, dynamic> json) =>
      _i2.GsignUpData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GsignUpData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GsignUpData, _i3.GsignUpVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GsignUpReq> get serializer => _$gsignUpReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GsignUpReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsignUpReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GsignUpReq.serializer,
        json,
      );
}
