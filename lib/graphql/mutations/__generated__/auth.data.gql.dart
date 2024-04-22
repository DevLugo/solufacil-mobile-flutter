// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:solufacil_mobile/__generated__/serializers.gql.dart' as _i1;

part 'auth.data.gql.g.dart';

abstract class GsignUpData implements Built<GsignUpData, GsignUpDataBuilder> {
  GsignUpData._();

  factory GsignUpData([void Function(GsignUpDataBuilder b) updates]) =
      _$GsignUpData;

  static void _initializeBuilder(GsignUpDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GsignUpData_signUp get signUp;
  static Serializer<GsignUpData> get serializer => _$gsignUpDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsignUpData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsignUpData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsignUpData.serializer,
        json,
      );
}

abstract class GsignUpData_signUp
    implements Built<GsignUpData_signUp, GsignUpData_signUpBuilder> {
  GsignUpData_signUp._();

  factory GsignUpData_signUp(
          [void Function(GsignUpData_signUpBuilder b) updates]) =
      _$GsignUpData_signUp;

  static void _initializeBuilder(GsignUpData_signUpBuilder b) =>
      b..G__typename = 'User';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get email;
  static Serializer<GsignUpData_signUp> get serializer =>
      _$gsignUpDataSignUpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsignUpData_signUp.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsignUpData_signUp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsignUpData_signUp.serializer,
        json,
      );
}
