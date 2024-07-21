// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gql_code_builder/src/serializers/default_scalar_serializer.dart'
    as _i2;
import 'package:solufacil_mobile/__generated__/serializers.gql.dart' as _i1;

part 'schema.schema.gql.g.dart';

abstract class GBorrowerCreateInput
    implements Built<GBorrowerCreateInput, GBorrowerCreateInputBuilder> {
  GBorrowerCreateInput._();

  factory GBorrowerCreateInput(
          [void Function(GBorrowerCreateInputBuilder b) updates]) =
      _$GBorrowerCreateInput;

  String? get email;
  GCreatePersonalDataInput get personalData;
  static Serializer<GBorrowerCreateInput> get serializer =>
      _$gBorrowerCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GBorrowerCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GBorrowerCreateInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GBorrowerCreateInput.serializer,
        json,
      );
}

abstract class GBorrowerWhereInput
    implements Built<GBorrowerWhereInput, GBorrowerWhereInputBuilder> {
  GBorrowerWhereInput._();

  factory GBorrowerWhereInput(
          [void Function(GBorrowerWhereInputBuilder b) updates]) =
      _$GBorrowerWhereInput;

  String? get locationId;
  String? get leadId;
  static Serializer<GBorrowerWhereInput> get serializer =>
      _$gBorrowerWhereInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GBorrowerWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GBorrowerWhereInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GBorrowerWhereInput.serializer,
        json,
      );
}

abstract class GBorrowerWhereUniqueInput
    implements
        Built<GBorrowerWhereUniqueInput, GBorrowerWhereUniqueInputBuilder> {
  GBorrowerWhereUniqueInput._();

  factory GBorrowerWhereUniqueInput(
          [void Function(GBorrowerWhereUniqueInputBuilder b) updates]) =
      _$GBorrowerWhereUniqueInput;

  String? get id;
  static Serializer<GBorrowerWhereUniqueInput> get serializer =>
      _$gBorrowerWhereUniqueInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GBorrowerWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GBorrowerWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GBorrowerWhereUniqueInput.serializer,
        json,
      );
}

abstract class GCreateAddressInput
    implements Built<GCreateAddressInput, GCreateAddressInputBuilder> {
  GCreateAddressInput._();

  factory GCreateAddressInput(
          [void Function(GCreateAddressInputBuilder b) updates]) =
      _$GCreateAddressInput;

  String get street;
  String get exteriorNumber;
  String get locationId;
  String? get interiorNumber;
  String get postalCode;
  String? get references;
  static Serializer<GCreateAddressInput> get serializer =>
      _$gCreateAddressInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateAddressInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateAddressInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateAddressInput.serializer,
        json,
      );
}

abstract class GCreatePersonalDataInput
    implements
        Built<GCreatePersonalDataInput, GCreatePersonalDataInputBuilder> {
  GCreatePersonalDataInput._();

  factory GCreatePersonalDataInput(
          [void Function(GCreatePersonalDataInputBuilder b) updates]) =
      _$GCreatePersonalDataInput;

  String get curp;
  String get firstName;
  String get lastName;
  GDate get birthDate;
  BuiltList<GCreatePhoneInput> get phones;
  BuiltList<GCreateAddressInput> get adresses;
  static Serializer<GCreatePersonalDataInput> get serializer =>
      _$gCreatePersonalDataInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreatePersonalDataInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreatePersonalDataInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreatePersonalDataInput.serializer,
        json,
      );
}

abstract class GCreatePhoneInput
    implements Built<GCreatePhoneInput, GCreatePhoneInputBuilder> {
  GCreatePhoneInput._();

  factory GCreatePhoneInput(
          [void Function(GCreatePhoneInputBuilder b) updates]) =
      _$GCreatePhoneInput;

  String get number;
  static Serializer<GCreatePhoneInput> get serializer =>
      _$gCreatePhoneInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreatePhoneInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreatePhoneInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreatePhoneInput.serializer,
        json,
      );
}

abstract class GDate implements Built<GDate, GDateBuilder> {
  GDate._();

  factory GDate([String? value]) =>
      _$GDate((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GDate> get serializer => _i2.DefaultScalarSerializer<GDate>(
      (Object serialized) => GDate((serialized as String?)));
}

abstract class GDateTime implements Built<GDateTime, GDateTimeBuilder> {
  GDateTime._();

  factory GDateTime([String? value]) =>
      _$GDateTime((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GDateTime> get serializer =>
      _i2.DefaultScalarSerializer<GDateTime>(
          (Object serialized) => GDateTime((serialized as String?)));
}

abstract class GDecimal implements Built<GDecimal, GDecimalBuilder> {
  GDecimal._();

  factory GDecimal([String? value]) =>
      _$GDecimal((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GDecimal> get serializer =>
      _i2.DefaultScalarSerializer<GDecimal>(
          (Object serialized) => GDecimal((serialized as String?)));
}

class GEmployeesTypes extends EnumClass {
  const GEmployeesTypes._(String name) : super(name);

  static const GEmployeesTypes LIAISON_EXECUTIVE =
      _$gEmployeesTypesLIAISON_EXECUTIVE;

  static const GEmployeesTypes LOAN_LEAD = _$gEmployeesTypesLOAN_LEAD;

  static Serializer<GEmployeesTypes> get serializer =>
      _$gEmployeesTypesSerializer;

  static BuiltSet<GEmployeesTypes> get values => _$gEmployeesTypesValues;

  static GEmployeesTypes valueOf(String name) => _$gEmployeesTypesValueOf(name);
}

abstract class GEmployeeWhereUniqueInput
    implements
        Built<GEmployeeWhereUniqueInput, GEmployeeWhereUniqueInputBuilder> {
  GEmployeeWhereUniqueInput._();

  factory GEmployeeWhereUniqueInput(
          [void Function(GEmployeeWhereUniqueInputBuilder b) updates]) =
      _$GEmployeeWhereUniqueInput;

  String get id;
  static Serializer<GEmployeeWhereUniqueInput> get serializer =>
      _$gEmployeeWhereUniqueInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GEmployeeWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GEmployeeWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GEmployeeWhereUniqueInput.serializer,
        json,
      );
}

abstract class GLoanByBorrowerWhereUniqueInput
    implements
        Built<GLoanByBorrowerWhereUniqueInput,
            GLoanByBorrowerWhereUniqueInputBuilder> {
  GLoanByBorrowerWhereUniqueInput._();

  factory GLoanByBorrowerWhereUniqueInput(
          [void Function(GLoanByBorrowerWhereUniqueInputBuilder b) updates]) =
      _$GLoanByBorrowerWhereUniqueInput;

  String get borrowerId;
  static Serializer<GLoanByBorrowerWhereUniqueInput> get serializer =>
      _$gLoanByBorrowerWhereUniqueInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLoanByBorrowerWhereUniqueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLoanByBorrowerWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLoanByBorrowerWhereUniqueInput.serializer,
        json,
      );
}

abstract class GLoanCreateInput
    implements Built<GLoanCreateInput, GLoanCreateInputBuilder> {
  GLoanCreateInput._();

  factory GLoanCreateInput([void Function(GLoanCreateInputBuilder b) updates]) =
      _$GLoanCreateInput;

  GDate get firstPaymentDate;
  bool get isRenovation;
  String? get borrowerId;
  GBorrowerCreateInput? get borrower;
  BuiltList<GCreatePersonalDataInput>? get avals;
  String get loanLeadId;
  double get amountGived;
  String get loanTypeId;
  GDate? get signDate;
  static Serializer<GLoanCreateInput> get serializer =>
      _$gLoanCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLoanCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLoanCreateInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLoanCreateInput.serializer,
        json,
      );
}

class GLoanState extends EnumClass {
  const GLoanState._(String name) : super(name);

  static const GLoanState REQUESTED = _$gLoanStateREQUESTED;

  static const GLoanState IN_REVIEW = _$gLoanStateIN_REVIEW;

  static const GLoanState APPROVED = _$gLoanStateAPPROVED;

  static const GLoanState REJECTED = _$gLoanStateREJECTED;

  static const GLoanState PAID_OUT = _$gLoanStatePAID_OUT;

  static const GLoanState POSTPONED = _$gLoanStatePOSTPONED;

  static Serializer<GLoanState> get serializer => _$gLoanStateSerializer;

  static BuiltSet<GLoanState> get values => _$gLoanStateValues;

  static GLoanState valueOf(String name) => _$gLoanStateValueOf(name);
}

abstract class GLoanTypeWhereInput
    implements Built<GLoanTypeWhereInput, GLoanTypeWhereInputBuilder> {
  GLoanTypeWhereInput._();

  factory GLoanTypeWhereInput(
          [void Function(GLoanTypeWhereInputBuilder b) updates]) =
      _$GLoanTypeWhereInput;

  GEmployeesTypes? get employeeType;
  static Serializer<GLoanTypeWhereInput> get serializer =>
      _$gLoanTypeWhereInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLoanTypeWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLoanTypeWhereInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLoanTypeWhereInput.serializer,
        json,
      );
}

abstract class GLocationWhereInput
    implements Built<GLocationWhereInput, GLocationWhereInputBuilder> {
  GLocationWhereInput._();

  factory GLocationWhereInput(
          [void Function(GLocationWhereInputBuilder b) updates]) =
      _$GLocationWhereInput;

  String get routeId;
  String? get name;
  static Serializer<GLocationWhereInput> get serializer =>
      _$gLocationWhereInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLocationWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLocationWhereInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLocationWhereInput.serializer,
        json,
      );
}

abstract class GPayLoanPaymentInput
    implements Built<GPayLoanPaymentInput, GPayLoanPaymentInputBuilder> {
  GPayLoanPaymentInput._();

  factory GPayLoanPaymentInput(
          [void Function(GPayLoanPaymentInputBuilder b) updates]) =
      _$GPayLoanPaymentInput;

  GDecimal get amount;
  GDateTime get paidDate;
  String get loanId;
  static Serializer<GPayLoanPaymentInput> get serializer =>
      _$gPayLoanPaymentInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPayLoanPaymentInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GPayLoanPaymentInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPayLoanPaymentInput.serializer,
        json,
      );
}

abstract class GPaymentScheduleWhereInput
    implements
        Built<GPaymentScheduleWhereInput, GPaymentScheduleWhereInputBuilder> {
  GPaymentScheduleWhereInput._();

  factory GPaymentScheduleWhereInput(
          [void Function(GPaymentScheduleWhereInputBuilder b) updates]) =
      _$GPaymentScheduleWhereInput;

  String? get leadId;
  GDateTime? get dueDate;
  BuiltList<GPaymentState>? get paymentState;
  static Serializer<GPaymentScheduleWhereInput> get serializer =>
      _$gPaymentScheduleWhereInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPaymentScheduleWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GPaymentScheduleWhereInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPaymentScheduleWhereInput.serializer,
        json,
      );
}

class GPaymentState extends EnumClass {
  const GPaymentState._(String name) : super(name);

  static const GPaymentState PENDING = _$gPaymentStatePENDING;

  static const GPaymentState PAID_OUT = _$gPaymentStatePAID_OUT;

  static const GPaymentState PARTIALLY_PAID = _$gPaymentStatePARTIALLY_PAID;

  static Serializer<GPaymentState> get serializer => _$gPaymentStateSerializer;

  static BuiltSet<GPaymentState> get values => _$gPaymentStateValues;

  static GPaymentState valueOf(String name) => _$gPaymentStateValueOf(name);
}

abstract class GRouteWhereInput
    implements Built<GRouteWhereInput, GRouteWhereInputBuilder> {
  GRouteWhereInput._();

  factory GRouteWhereInput([void Function(GRouteWhereInputBuilder b) updates]) =
      _$GRouteWhereInput;

  String? get name;
  static Serializer<GRouteWhereInput> get serializer =>
      _$gRouteWhereInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRouteWhereInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRouteWhereInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRouteWhereInput.serializer,
        json,
      );
}

abstract class GSignInInput
    implements Built<GSignInInput, GSignInInputBuilder> {
  GSignInInput._();

  factory GSignInInput([void Function(GSignInInputBuilder b) updates]) =
      _$GSignInInput;

  String get email;
  String get password;
  static Serializer<GSignInInput> get serializer => _$gSignInInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSignInInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSignInInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSignInInput.serializer,
        json,
      );
}

abstract class GUserCreateInput
    implements Built<GUserCreateInput, GUserCreateInputBuilder> {
  GUserCreateInput._();

  factory GUserCreateInput([void Function(GUserCreateInputBuilder b) updates]) =
      _$GUserCreateInput;

  String get email;
  String get password;
  String get firstName;
  String get lastName;
  static Serializer<GUserCreateInput> get serializer =>
      _$gUserCreateInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserCreateInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserCreateInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserCreateInput.serializer,
        json,
      );
}

const Map<String, Set<String>> possibleTypesMap = {};
