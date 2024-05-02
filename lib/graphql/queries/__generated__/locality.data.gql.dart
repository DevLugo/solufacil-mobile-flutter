// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:solufacil_mobile/__generated__/serializers.gql.dart' as _i1;

part 'locality.data.gql.g.dart';

abstract class GLocationsData
    implements Built<GLocationsData, GLocationsDataBuilder> {
  GLocationsData._();

  factory GLocationsData([void Function(GLocationsDataBuilder b) updates]) =
      _$GLocationsData;

  static void _initializeBuilder(GLocationsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GLocationsData_locations> get locations;
  static Serializer<GLocationsData> get serializer =>
      _$gLocationsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLocationsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLocationsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLocationsData.serializer,
        json,
      );
}

abstract class GLocationsData_locations
    implements
        Built<GLocationsData_locations, GLocationsData_locationsBuilder> {
  GLocationsData_locations._();

  factory GLocationsData_locations(
          [void Function(GLocationsData_locationsBuilder b) updates]) =
      _$GLocationsData_locations;

  static void _initializeBuilder(GLocationsData_locationsBuilder b) =>
      b..G__typename = 'Location';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  GLocationsData_locations_municipality get municipality;
  GLocationsData_locations_state? get state;
  BuiltList<GLocationsData_locations_leads> get leads;
  static Serializer<GLocationsData_locations> get serializer =>
      _$gLocationsDataLocationsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLocationsData_locations.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLocationsData_locations? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLocationsData_locations.serializer,
        json,
      );
}

abstract class GLocationsData_locations_municipality
    implements
        Built<GLocationsData_locations_municipality,
            GLocationsData_locations_municipalityBuilder> {
  GLocationsData_locations_municipality._();

  factory GLocationsData_locations_municipality(
      [void Function(GLocationsData_locations_municipalityBuilder b)
          updates]) = _$GLocationsData_locations_municipality;

  static void _initializeBuilder(
          GLocationsData_locations_municipalityBuilder b) =>
      b..G__typename = 'Municipality';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<GLocationsData_locations_municipality> get serializer =>
      _$gLocationsDataLocationsMunicipalitySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLocationsData_locations_municipality.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLocationsData_locations_municipality? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLocationsData_locations_municipality.serializer,
        json,
      );
}

abstract class GLocationsData_locations_state
    implements
        Built<GLocationsData_locations_state,
            GLocationsData_locations_stateBuilder> {
  GLocationsData_locations_state._();

  factory GLocationsData_locations_state(
          [void Function(GLocationsData_locations_stateBuilder b) updates]) =
      _$GLocationsData_locations_state;

  static void _initializeBuilder(GLocationsData_locations_stateBuilder b) =>
      b..G__typename = 'State';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<GLocationsData_locations_state> get serializer =>
      _$gLocationsDataLocationsStateSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLocationsData_locations_state.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLocationsData_locations_state? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLocationsData_locations_state.serializer,
        json,
      );
}

abstract class GLocationsData_locations_leads
    implements
        Built<GLocationsData_locations_leads,
            GLocationsData_locations_leadsBuilder> {
  GLocationsData_locations_leads._();

  factory GLocationsData_locations_leads(
          [void Function(GLocationsData_locations_leadsBuilder b) updates]) =
      _$GLocationsData_locations_leads;

  static void _initializeBuilder(GLocationsData_locations_leadsBuilder b) =>
      b..G__typename = 'Employee';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  GLocationsData_locations_leads_personalData get personalData;
  static Serializer<GLocationsData_locations_leads> get serializer =>
      _$gLocationsDataLocationsLeadsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLocationsData_locations_leads.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLocationsData_locations_leads? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLocationsData_locations_leads.serializer,
        json,
      );
}

abstract class GLocationsData_locations_leads_personalData
    implements
        Built<GLocationsData_locations_leads_personalData,
            GLocationsData_locations_leads_personalDataBuilder> {
  GLocationsData_locations_leads_personalData._();

  factory GLocationsData_locations_leads_personalData(
      [void Function(GLocationsData_locations_leads_personalDataBuilder b)
          updates]) = _$GLocationsData_locations_leads_personalData;

  static void _initializeBuilder(
          GLocationsData_locations_leads_personalDataBuilder b) =>
      b..G__typename = 'PersonalData';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get fullName;
  static Serializer<GLocationsData_locations_leads_personalData>
      get serializer => _$gLocationsDataLocationsLeadsPersonalDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLocationsData_locations_leads_personalData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLocationsData_locations_leads_personalData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLocationsData_locations_leads_personalData.serializer,
        json,
      );
}
