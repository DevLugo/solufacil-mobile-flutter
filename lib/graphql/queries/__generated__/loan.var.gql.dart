// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:solufacil_mobile/__generated__/schema.schema.gql.dart' as _i1;
import 'package:solufacil_mobile/__generated__/serializers.gql.dart' as _i2;

part 'loan.var.gql.g.dart';

abstract class GGetLoanTypesVars
    implements Built<GGetLoanTypesVars, GGetLoanTypesVarsBuilder> {
  GGetLoanTypesVars._();

  factory GGetLoanTypesVars(
          [void Function(GGetLoanTypesVarsBuilder b) updates]) =
      _$GGetLoanTypesVars;

  _i1.GLoanTypeWhereInput? get where;
  static Serializer<GGetLoanTypesVars> get serializer =>
      _$gGetLoanTypesVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GGetLoanTypesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetLoanTypesVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GGetLoanTypesVars.serializer,
        json,
      );
}
