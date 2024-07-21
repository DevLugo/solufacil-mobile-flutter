// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:solufacil_mobile/__generated__/schema.schema.gql.dart' as _i1;
import 'package:solufacil_mobile/__generated__/serializers.gql.dart' as _i2;

part 'employee.var.gql.g.dart';

abstract class GgetEmployeeVars
    implements Built<GgetEmployeeVars, GgetEmployeeVarsBuilder> {
  GgetEmployeeVars._();

  factory GgetEmployeeVars([void Function(GgetEmployeeVarsBuilder b) updates]) =
      _$GgetEmployeeVars;

  _i1.GEmployeeWhereUniqueInput get where;
  static Serializer<GgetEmployeeVars> get serializer =>
      _$ggetEmployeeVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GgetEmployeeVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetEmployeeVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GgetEmployeeVars.serializer,
        json,
      );
}
