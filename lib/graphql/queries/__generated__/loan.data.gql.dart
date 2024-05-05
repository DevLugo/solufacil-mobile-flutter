// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:solufacil_mobile/__generated__/schema.schema.gql.dart' as _i2;
import 'package:solufacil_mobile/__generated__/serializers.gql.dart' as _i1;

part 'loan.data.gql.g.dart';

abstract class GGetLoanTypesData
    implements Built<GGetLoanTypesData, GGetLoanTypesDataBuilder> {
  GGetLoanTypesData._();

  factory GGetLoanTypesData(
          [void Function(GGetLoanTypesDataBuilder b) updates]) =
      _$GGetLoanTypesData;

  static void _initializeBuilder(GGetLoanTypesDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetLoanTypesData_getLoanTypes> get getLoanTypes;
  static Serializer<GGetLoanTypesData> get serializer =>
      _$gGetLoanTypesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetLoanTypesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetLoanTypesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetLoanTypesData.serializer,
        json,
      );
}

abstract class GGetLoanTypesData_getLoanTypes
    implements
        Built<GGetLoanTypesData_getLoanTypes,
            GGetLoanTypesData_getLoanTypesBuilder> {
  GGetLoanTypesData_getLoanTypes._();

  factory GGetLoanTypesData_getLoanTypes(
          [void Function(GGetLoanTypesData_getLoanTypesBuilder b) updates]) =
      _$GGetLoanTypesData_getLoanTypes;

  static void _initializeBuilder(GGetLoanTypesData_getLoanTypesBuilder b) =>
      b..G__typename = 'LoanType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  String get id;
  int get weekDuration;
  double get rate;
  double get overdueRate;
  double get initialAmount;
  double get maximunAmount;
  double get amountToIncrease;
  int get increaseEveryNLoans;
  _i2.GEmployeesTypes get availableFor;
  _i2.GDateTime get createdAt;
  _i2.GDateTime get updatedAt;
  static Serializer<GGetLoanTypesData_getLoanTypes> get serializer =>
      _$gGetLoanTypesDataGetLoanTypesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetLoanTypesData_getLoanTypes.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetLoanTypesData_getLoanTypes? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetLoanTypesData_getLoanTypes.serializer,
        json,
      );
}
