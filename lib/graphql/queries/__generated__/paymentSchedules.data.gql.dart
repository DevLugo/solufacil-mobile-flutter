// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:solufacil_mobile/__generated__/schema.schema.gql.dart' as _i2;
import 'package:solufacil_mobile/__generated__/serializers.gql.dart' as _i1;

part 'paymentSchedules.data.gql.g.dart';

abstract class GgetPaymentSchedulesData
    implements
        Built<GgetPaymentSchedulesData, GgetPaymentSchedulesDataBuilder> {
  GgetPaymentSchedulesData._();

  factory GgetPaymentSchedulesData(
          [void Function(GgetPaymentSchedulesDataBuilder b) updates]) =
      _$GgetPaymentSchedulesData;

  static void _initializeBuilder(GgetPaymentSchedulesDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GgetPaymentSchedulesData_getPaymentSchedules>
      get getPaymentSchedules;
  static Serializer<GgetPaymentSchedulesData> get serializer =>
      _$ggetPaymentSchedulesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPaymentSchedulesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPaymentSchedulesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetPaymentSchedulesData.serializer,
        json,
      );
}

abstract class GgetPaymentSchedulesData_getPaymentSchedules
    implements
        Built<GgetPaymentSchedulesData_getPaymentSchedules,
            GgetPaymentSchedulesData_getPaymentSchedulesBuilder> {
  GgetPaymentSchedulesData_getPaymentSchedules._();

  factory GgetPaymentSchedulesData_getPaymentSchedules(
      [void Function(GgetPaymentSchedulesData_getPaymentSchedulesBuilder b)
          updates]) = _$GgetPaymentSchedulesData_getPaymentSchedules;

  static void _initializeBuilder(
          GgetPaymentSchedulesData_getPaymentSchedulesBuilder b) =>
      b..G__typename = 'PaymentSchedule';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get loanId;
  int get numeration;
  _i2.GDecimal get amountToPay;
  _i2.GDecimal get pendingAmount;
  _i2.GDecimal get paidAmount;
  _i2.GDecimal get returnToCapital;
  _i2.GDecimal get profit;
  _i2.GPaymentState get status;
  String? get details;
  bool get delayed;
  _i2.GDateTime get dueDate;
  _i2.GDateTime get createdAt;
  _i2.GDateTime get updatedAt;
  GgetPaymentSchedulesData_getPaymentSchedules_borrower get borrower;
  static Serializer<GgetPaymentSchedulesData_getPaymentSchedules>
      get serializer => _$ggetPaymentSchedulesDataGetPaymentSchedulesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPaymentSchedulesData_getPaymentSchedules.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPaymentSchedulesData_getPaymentSchedules? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetPaymentSchedulesData_getPaymentSchedules.serializer,
        json,
      );
}

abstract class GgetPaymentSchedulesData_getPaymentSchedules_borrower
    implements
        Built<GgetPaymentSchedulesData_getPaymentSchedules_borrower,
            GgetPaymentSchedulesData_getPaymentSchedules_borrowerBuilder> {
  GgetPaymentSchedulesData_getPaymentSchedules_borrower._();

  factory GgetPaymentSchedulesData_getPaymentSchedules_borrower(
      [void Function(
              GgetPaymentSchedulesData_getPaymentSchedules_borrowerBuilder b)
          updates]) = _$GgetPaymentSchedulesData_getPaymentSchedules_borrower;

  static void _initializeBuilder(
          GgetPaymentSchedulesData_getPaymentSchedules_borrowerBuilder b) =>
      b..G__typename = 'Borrower';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalData
      get personalData;
  static Serializer<GgetPaymentSchedulesData_getPaymentSchedules_borrower>
      get serializer =>
          _$ggetPaymentSchedulesDataGetPaymentSchedulesBorrowerSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPaymentSchedulesData_getPaymentSchedules_borrower.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPaymentSchedulesData_getPaymentSchedules_borrower? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetPaymentSchedulesData_getPaymentSchedules_borrower.serializer,
        json,
      );
}

abstract class GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalData
    implements
        Built<
            GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalData,
            GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalDataBuilder> {
  GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalData._();

  factory GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalData(
          [void Function(
                  GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalDataBuilder
                      b)
              updates]) =
      _$GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalData;

  static void _initializeBuilder(
          GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalDataBuilder
              b) =>
      b..G__typename = 'PersonalData';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get fullName;
  static Serializer<
          GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalData>
      get serializer =>
          _$ggetPaymentSchedulesDataGetPaymentSchedulesBorrowerPersonalDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalData
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalData?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalData
                .serializer,
            json,
          );
}
