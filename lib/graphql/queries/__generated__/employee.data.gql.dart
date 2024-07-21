// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:solufacil_mobile/__generated__/serializers.gql.dart' as _i1;

part 'employee.data.gql.g.dart';

abstract class GgetEmployeeData
    implements Built<GgetEmployeeData, GgetEmployeeDataBuilder> {
  GgetEmployeeData._();

  factory GgetEmployeeData([void Function(GgetEmployeeDataBuilder b) updates]) =
      _$GgetEmployeeData;

  static void _initializeBuilder(GgetEmployeeDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetEmployeeData_getEmployee get getEmployee;
  static Serializer<GgetEmployeeData> get serializer =>
      _$ggetEmployeeDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetEmployeeData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetEmployeeData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetEmployeeData.serializer,
        json,
      );
}

abstract class GgetEmployeeData_getEmployee
    implements
        Built<GgetEmployeeData_getEmployee,
            GgetEmployeeData_getEmployeeBuilder> {
  GgetEmployeeData_getEmployee._();

  factory GgetEmployeeData_getEmployee(
          [void Function(GgetEmployeeData_getEmployeeBuilder b) updates]) =
      _$GgetEmployeeData_getEmployee;

  static void _initializeBuilder(GgetEmployeeData_getEmployeeBuilder b) =>
      b..G__typename = 'Employee';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get userId;
  GgetEmployeeData_getEmployee_personalData get personalData;
  static Serializer<GgetEmployeeData_getEmployee> get serializer =>
      _$ggetEmployeeDataGetEmployeeSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetEmployeeData_getEmployee.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetEmployeeData_getEmployee? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetEmployeeData_getEmployee.serializer,
        json,
      );
}

abstract class GgetEmployeeData_getEmployee_personalData
    implements
        Built<GgetEmployeeData_getEmployee_personalData,
            GgetEmployeeData_getEmployee_personalDataBuilder> {
  GgetEmployeeData_getEmployee_personalData._();

  factory GgetEmployeeData_getEmployee_personalData(
      [void Function(GgetEmployeeData_getEmployee_personalDataBuilder b)
          updates]) = _$GgetEmployeeData_getEmployee_personalData;

  static void _initializeBuilder(
          GgetEmployeeData_getEmployee_personalDataBuilder b) =>
      b..G__typename = 'PersonalData';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get fullName;
  BuiltList<GgetEmployeeData_getEmployee_personalData_addresses> get addresses;
  static Serializer<GgetEmployeeData_getEmployee_personalData> get serializer =>
      _$ggetEmployeeDataGetEmployeePersonalDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetEmployeeData_getEmployee_personalData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetEmployeeData_getEmployee_personalData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetEmployeeData_getEmployee_personalData.serializer,
        json,
      );
}

abstract class GgetEmployeeData_getEmployee_personalData_addresses
    implements
        Built<GgetEmployeeData_getEmployee_personalData_addresses,
            GgetEmployeeData_getEmployee_personalData_addressesBuilder> {
  GgetEmployeeData_getEmployee_personalData_addresses._();

  factory GgetEmployeeData_getEmployee_personalData_addresses(
      [void Function(
              GgetEmployeeData_getEmployee_personalData_addressesBuilder b)
          updates]) = _$GgetEmployeeData_getEmployee_personalData_addresses;

  static void _initializeBuilder(
          GgetEmployeeData_getEmployee_personalData_addressesBuilder b) =>
      b..G__typename = 'Address';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get locationId;
  GgetEmployeeData_getEmployee_personalData_addresses_location get location;
  static Serializer<GgetEmployeeData_getEmployee_personalData_addresses>
      get serializer =>
          _$ggetEmployeeDataGetEmployeePersonalDataAddressesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetEmployeeData_getEmployee_personalData_addresses.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetEmployeeData_getEmployee_personalData_addresses? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetEmployeeData_getEmployee_personalData_addresses.serializer,
        json,
      );
}

abstract class GgetEmployeeData_getEmployee_personalData_addresses_location
    implements
        Built<GgetEmployeeData_getEmployee_personalData_addresses_location,
            GgetEmployeeData_getEmployee_personalData_addresses_locationBuilder> {
  GgetEmployeeData_getEmployee_personalData_addresses_location._();

  factory GgetEmployeeData_getEmployee_personalData_addresses_location(
          [void Function(
                  GgetEmployeeData_getEmployee_personalData_addresses_locationBuilder
                      b)
              updates]) =
      _$GgetEmployeeData_getEmployee_personalData_addresses_location;

  static void _initializeBuilder(
          GgetEmployeeData_getEmployee_personalData_addresses_locationBuilder
              b) =>
      b..G__typename = 'Location';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  GgetEmployeeData_getEmployee_personalData_addresses_location_municipality
      get municipality;
  static Serializer<
          GgetEmployeeData_getEmployee_personalData_addresses_location>
      get serializer =>
          _$ggetEmployeeDataGetEmployeePersonalDataAddressesLocationSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetEmployeeData_getEmployee_personalData_addresses_location.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetEmployeeData_getEmployee_personalData_addresses_location? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetEmployeeData_getEmployee_personalData_addresses_location.serializer,
        json,
      );
}

abstract class GgetEmployeeData_getEmployee_personalData_addresses_location_municipality
    implements
        Built<
            GgetEmployeeData_getEmployee_personalData_addresses_location_municipality,
            GgetEmployeeData_getEmployee_personalData_addresses_location_municipalityBuilder> {
  GgetEmployeeData_getEmployee_personalData_addresses_location_municipality._();

  factory GgetEmployeeData_getEmployee_personalData_addresses_location_municipality(
          [void Function(
                  GgetEmployeeData_getEmployee_personalData_addresses_location_municipalityBuilder
                      b)
              updates]) =
      _$GgetEmployeeData_getEmployee_personalData_addresses_location_municipality;

  static void _initializeBuilder(
          GgetEmployeeData_getEmployee_personalData_addresses_location_municipalityBuilder
              b) =>
      b..G__typename = 'Municipality';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<
          GgetEmployeeData_getEmployee_personalData_addresses_location_municipality>
      get serializer =>
          _$ggetEmployeeDataGetEmployeePersonalDataAddressesLocationMunicipalitySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetEmployeeData_getEmployee_personalData_addresses_location_municipality
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetEmployeeData_getEmployee_personalData_addresses_location_municipality?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GgetEmployeeData_getEmployee_personalData_addresses_location_municipality
                .serializer,
            json,
          );
}
