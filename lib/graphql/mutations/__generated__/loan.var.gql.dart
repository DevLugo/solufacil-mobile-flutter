// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:solufacil_mobile/__generated__/schema.schema.gql.dart' as _i1;
import 'package:solufacil_mobile/__generated__/serializers.gql.dart' as _i2;

part 'loan.var.gql.g.dart';

abstract class GCreateLoanVars
    implements Built<GCreateLoanVars, GCreateLoanVarsBuilder> {
  GCreateLoanVars._();

  factory GCreateLoanVars([void Function(GCreateLoanVarsBuilder b) updates]) =
      _$GCreateLoanVars;

  _i1.GLoanCreateInput get input;
  static Serializer<GCreateLoanVars> get serializer =>
      _$gCreateLoanVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateLoanVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateLoanVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateLoanVars.serializer,
        json,
      );
}
