// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:solufacil_mobile/__generated__/schema.schema.gql.dart' as _i1;
import 'package:solufacil_mobile/__generated__/serializers.gql.dart' as _i2;

part 'auth.var.gql.g.dart';

abstract class GSignUpVars implements Built<GSignUpVars, GSignUpVarsBuilder> {
  GSignUpVars._();

  factory GSignUpVars([void Function(GSignUpVarsBuilder b) updates]) =
      _$GSignUpVars;

  _i1.GUserCreateInput get input;
  static Serializer<GSignUpVars> get serializer => _$gSignUpVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSignUpVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSignUpVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSignUpVars.serializer,
        json,
      );
}

abstract class GSignInVars implements Built<GSignInVars, GSignInVarsBuilder> {
  GSignInVars._();

  factory GSignInVars([void Function(GSignInVarsBuilder b) updates]) =
      _$GSignInVars;

  _i1.GSignInInput get input;
  static Serializer<GSignInVars> get serializer => _$gSignInVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSignInVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSignInVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSignInVars.serializer,
        json,
      );
}
