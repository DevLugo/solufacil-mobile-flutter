// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:solufacil_mobile/__generated__/serializers.gql.dart' as _i1;

part 'auth.data.gql.g.dart';

abstract class GSignUpData implements Built<GSignUpData, GSignUpDataBuilder> {
  GSignUpData._();

  factory GSignUpData([void Function(GSignUpDataBuilder b) updates]) =
      _$GSignUpData;

  static void _initializeBuilder(GSignUpDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSignUpData_signUp get signUp;
  static Serializer<GSignUpData> get serializer => _$gSignUpDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSignUpData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSignUpData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSignUpData.serializer,
        json,
      );
}

abstract class GSignUpData_signUp
    implements Built<GSignUpData_signUp, GSignUpData_signUpBuilder> {
  GSignUpData_signUp._();

  factory GSignUpData_signUp(
          [void Function(GSignUpData_signUpBuilder b) updates]) =
      _$GSignUpData_signUp;

  static void _initializeBuilder(GSignUpData_signUpBuilder b) =>
      b..G__typename = 'User';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get email;
  static Serializer<GSignUpData_signUp> get serializer =>
      _$gSignUpDataSignUpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSignUpData_signUp.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSignUpData_signUp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSignUpData_signUp.serializer,
        json,
      );
}

abstract class GSignInData implements Built<GSignInData, GSignInDataBuilder> {
  GSignInData._();

  factory GSignInData([void Function(GSignInDataBuilder b) updates]) =
      _$GSignInData;

  static void _initializeBuilder(GSignInDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSignInData_signIn get signIn;
  static Serializer<GSignInData> get serializer => _$gSignInDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSignInData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSignInData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSignInData.serializer,
        json,
      );
}

abstract class GSignInData_signIn
    implements Built<GSignInData_signIn, GSignInData_signInBuilder> {
  GSignInData_signIn._();

  factory GSignInData_signIn(
          [void Function(GSignInData_signInBuilder b) updates]) =
      _$GSignInData_signIn;

  static void _initializeBuilder(GSignInData_signInBuilder b) =>
      b..G__typename = 'SignInOutput';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get token;
  GSignInData_signIn_user get user;
  static Serializer<GSignInData_signIn> get serializer =>
      _$gSignInDataSignInSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSignInData_signIn.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSignInData_signIn? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSignInData_signIn.serializer,
        json,
      );
}

abstract class GSignInData_signIn_user
    implements Built<GSignInData_signIn_user, GSignInData_signIn_userBuilder> {
  GSignInData_signIn_user._();

  factory GSignInData_signIn_user(
          [void Function(GSignInData_signIn_userBuilder b) updates]) =
      _$GSignInData_signIn_user;

  static void _initializeBuilder(GSignInData_signIn_userBuilder b) =>
      b..G__typename = 'User';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  GSignInData_signIn_user_employee get employee;
  static Serializer<GSignInData_signIn_user> get serializer =>
      _$gSignInDataSignInUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSignInData_signIn_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSignInData_signIn_user? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSignInData_signIn_user.serializer,
        json,
      );
}

abstract class GSignInData_signIn_user_employee
    implements
        Built<GSignInData_signIn_user_employee,
            GSignInData_signIn_user_employeeBuilder> {
  GSignInData_signIn_user_employee._();

  factory GSignInData_signIn_user_employee(
          [void Function(GSignInData_signIn_user_employeeBuilder b) updates]) =
      _$GSignInData_signIn_user_employee;

  static void _initializeBuilder(GSignInData_signIn_user_employeeBuilder b) =>
      b..G__typename = 'Employee';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSignInData_signIn_user_employee_personalData get personalData;
  static Serializer<GSignInData_signIn_user_employee> get serializer =>
      _$gSignInDataSignInUserEmployeeSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSignInData_signIn_user_employee.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSignInData_signIn_user_employee? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSignInData_signIn_user_employee.serializer,
        json,
      );
}

abstract class GSignInData_signIn_user_employee_personalData
    implements
        Built<GSignInData_signIn_user_employee_personalData,
            GSignInData_signIn_user_employee_personalDataBuilder> {
  GSignInData_signIn_user_employee_personalData._();

  factory GSignInData_signIn_user_employee_personalData(
      [void Function(GSignInData_signIn_user_employee_personalDataBuilder b)
          updates]) = _$GSignInData_signIn_user_employee_personalData;

  static void _initializeBuilder(
          GSignInData_signIn_user_employee_personalDataBuilder b) =>
      b..G__typename = 'PersonalData';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get fullName;
  static Serializer<GSignInData_signIn_user_employee_personalData>
      get serializer => _$gSignInDataSignInUserEmployeePersonalDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSignInData_signIn_user_employee_personalData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSignInData_signIn_user_employee_personalData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSignInData_signIn_user_employee_personalData.serializer,
        json,
      );
}
