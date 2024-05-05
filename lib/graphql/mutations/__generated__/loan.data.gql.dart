// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:solufacil_mobile/__generated__/schema.schema.gql.dart' as _i2;
import 'package:solufacil_mobile/__generated__/serializers.gql.dart' as _i1;

part 'loan.data.gql.g.dart';

abstract class GCreateLoanData
    implements Built<GCreateLoanData, GCreateLoanDataBuilder> {
  GCreateLoanData._();

  factory GCreateLoanData([void Function(GCreateLoanDataBuilder b) updates]) =
      _$GCreateLoanData;

  static void _initializeBuilder(GCreateLoanDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateLoanData_createLoan get createLoan;
  static Serializer<GCreateLoanData> get serializer =>
      _$gCreateLoanDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateLoanData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateLoanData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateLoanData.serializer,
        json,
      );
}

abstract class GCreateLoanData_createLoan
    implements
        Built<GCreateLoanData_createLoan, GCreateLoanData_createLoanBuilder> {
  GCreateLoanData_createLoan._();

  factory GCreateLoanData_createLoan(
          [void Function(GCreateLoanData_createLoanBuilder b) updates]) =
      _$GCreateLoanData_createLoan;

  static void _initializeBuilder(GCreateLoanData_createLoanBuilder b) =>
      b..G__typename = 'Loan';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  _i2.GLoanState get status;
  _i2.GDecimal get weeklyPaymentAmount;
  _i2.GDecimal? get previousAmountGived;
  _i2.GDecimal get amountGived;
  _i2.GDecimal get amountToPay;
  _i2.GDecimal get paidAmount;
  _i2.GDecimal get pendingAmount;
  String? get renovatedFromId;
  _i2.GDecimal get renovationProfitAmount;
  _i2.GDecimal get renovationPendingAmount;
  _i2.GDecimal get baseProfitAmount;
  _i2.GDecimal get totalProfitAmount;
  static Serializer<GCreateLoanData_createLoan> get serializer =>
      _$gCreateLoanDataCreateLoanSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateLoanData_createLoan.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateLoanData_createLoan? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateLoanData_createLoan.serializer,
        json,
      );
}
