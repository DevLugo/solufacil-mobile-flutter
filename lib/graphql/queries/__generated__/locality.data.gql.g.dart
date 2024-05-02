// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locality.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GLocationsData> _$gLocationsDataSerializer =
    new _$GLocationsDataSerializer();
Serializer<GLocationsData_locations> _$gLocationsDataLocationsSerializer =
    new _$GLocationsData_locationsSerializer();
Serializer<GLocationsData_locations_municipality>
    _$gLocationsDataLocationsMunicipalitySerializer =
    new _$GLocationsData_locations_municipalitySerializer();
Serializer<GLocationsData_locations_state>
    _$gLocationsDataLocationsStateSerializer =
    new _$GLocationsData_locations_stateSerializer();
Serializer<GLocationsData_locations_leads>
    _$gLocationsDataLocationsLeadsSerializer =
    new _$GLocationsData_locations_leadsSerializer();
Serializer<GLocationsData_locations_leads_personalData>
    _$gLocationsDataLocationsLeadsPersonalDataSerializer =
    new _$GLocationsData_locations_leads_personalDataSerializer();

class _$GLocationsDataSerializer
    implements StructuredSerializer<GLocationsData> {
  @override
  final Iterable<Type> types = const [GLocationsData, _$GLocationsData];
  @override
  final String wireName = 'GLocationsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GLocationsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'locations',
      serializers.serialize(object.locations,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GLocationsData_locations)])),
    ];

    return result;
  }

  @override
  GLocationsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLocationsDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'locations':
          result.locations.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GLocationsData_locations)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GLocationsData_locationsSerializer
    implements StructuredSerializer<GLocationsData_locations> {
  @override
  final Iterable<Type> types = const [
    GLocationsData_locations,
    _$GLocationsData_locations
  ];
  @override
  final String wireName = 'GLocationsData_locations';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLocationsData_locations object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'municipality',
      serializers.serialize(object.municipality,
          specifiedType: const FullType(GLocationsData_locations_municipality)),
      'leads',
      serializers.serialize(object.leads,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GLocationsData_locations_leads)])),
    ];
    Object? value;
    value = object.state;
    if (value != null) {
      result
        ..add('state')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GLocationsData_locations_state)));
    }
    return result;
  }

  @override
  GLocationsData_locations deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLocationsData_locationsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'municipality':
          result.municipality.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GLocationsData_locations_municipality))!
              as GLocationsData_locations_municipality);
          break;
        case 'state':
          result.state.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GLocationsData_locations_state))!
              as GLocationsData_locations_state);
          break;
        case 'leads':
          result.leads.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GLocationsData_locations_leads)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GLocationsData_locations_municipalitySerializer
    implements StructuredSerializer<GLocationsData_locations_municipality> {
  @override
  final Iterable<Type> types = const [
    GLocationsData_locations_municipality,
    _$GLocationsData_locations_municipality
  ];
  @override
  final String wireName = 'GLocationsData_locations_municipality';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLocationsData_locations_municipality object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GLocationsData_locations_municipality deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLocationsData_locations_municipalityBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GLocationsData_locations_stateSerializer
    implements StructuredSerializer<GLocationsData_locations_state> {
  @override
  final Iterable<Type> types = const [
    GLocationsData_locations_state,
    _$GLocationsData_locations_state
  ];
  @override
  final String wireName = 'GLocationsData_locations_state';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLocationsData_locations_state object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GLocationsData_locations_state deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLocationsData_locations_stateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GLocationsData_locations_leadsSerializer
    implements StructuredSerializer<GLocationsData_locations_leads> {
  @override
  final Iterable<Type> types = const [
    GLocationsData_locations_leads,
    _$GLocationsData_locations_leads
  ];
  @override
  final String wireName = 'GLocationsData_locations_leads';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLocationsData_locations_leads object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'personalData',
      serializers.serialize(object.personalData,
          specifiedType:
              const FullType(GLocationsData_locations_leads_personalData)),
    ];

    return result;
  }

  @override
  GLocationsData_locations_leads deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLocationsData_locations_leadsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'personalData':
          result.personalData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GLocationsData_locations_leads_personalData))!
              as GLocationsData_locations_leads_personalData);
          break;
      }
    }

    return result.build();
  }
}

class _$GLocationsData_locations_leads_personalDataSerializer
    implements
        StructuredSerializer<GLocationsData_locations_leads_personalData> {
  @override
  final Iterable<Type> types = const [
    GLocationsData_locations_leads_personalData,
    _$GLocationsData_locations_leads_personalData
  ];
  @override
  final String wireName = 'GLocationsData_locations_leads_personalData';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GLocationsData_locations_leads_personalData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'fullName',
      serializers.serialize(object.fullName,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GLocationsData_locations_leads_personalData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLocationsData_locations_leads_personalDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'fullName':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GLocationsData extends GLocationsData {
  @override
  final String G__typename;
  @override
  final BuiltList<GLocationsData_locations> locations;

  factory _$GLocationsData([void Function(GLocationsDataBuilder)? updates]) =>
      (new GLocationsDataBuilder()..update(updates))._build();

  _$GLocationsData._({required this.G__typename, required this.locations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GLocationsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        locations, r'GLocationsData', 'locations');
  }

  @override
  GLocationsData rebuild(void Function(GLocationsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLocationsDataBuilder toBuilder() =>
      new GLocationsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLocationsData &&
        G__typename == other.G__typename &&
        locations == other.locations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, locations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLocationsData')
          ..add('G__typename', G__typename)
          ..add('locations', locations))
        .toString();
  }
}

class GLocationsDataBuilder
    implements Builder<GLocationsData, GLocationsDataBuilder> {
  _$GLocationsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GLocationsData_locations>? _locations;
  ListBuilder<GLocationsData_locations> get locations =>
      _$this._locations ??= new ListBuilder<GLocationsData_locations>();
  set locations(ListBuilder<GLocationsData_locations>? locations) =>
      _$this._locations = locations;

  GLocationsDataBuilder() {
    GLocationsData._initializeBuilder(this);
  }

  GLocationsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _locations = $v.locations.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLocationsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLocationsData;
  }

  @override
  void update(void Function(GLocationsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLocationsData build() => _build();

  _$GLocationsData _build() {
    _$GLocationsData _$result;
    try {
      _$result = _$v ??
          new _$GLocationsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GLocationsData', 'G__typename'),
              locations: locations.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'locations';
        locations.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GLocationsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLocationsData_locations extends GLocationsData_locations {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final GLocationsData_locations_municipality municipality;
  @override
  final GLocationsData_locations_state? state;
  @override
  final BuiltList<GLocationsData_locations_leads> leads;

  factory _$GLocationsData_locations(
          [void Function(GLocationsData_locationsBuilder)? updates]) =>
      (new GLocationsData_locationsBuilder()..update(updates))._build();

  _$GLocationsData_locations._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.municipality,
      this.state,
      required this.leads})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GLocationsData_locations', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GLocationsData_locations', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GLocationsData_locations', 'name');
    BuiltValueNullFieldError.checkNotNull(
        municipality, r'GLocationsData_locations', 'municipality');
    BuiltValueNullFieldError.checkNotNull(
        leads, r'GLocationsData_locations', 'leads');
  }

  @override
  GLocationsData_locations rebuild(
          void Function(GLocationsData_locationsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLocationsData_locationsBuilder toBuilder() =>
      new GLocationsData_locationsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLocationsData_locations &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        municipality == other.municipality &&
        state == other.state &&
        leads == other.leads;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, municipality.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, leads.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLocationsData_locations')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('municipality', municipality)
          ..add('state', state)
          ..add('leads', leads))
        .toString();
  }
}

class GLocationsData_locationsBuilder
    implements
        Builder<GLocationsData_locations, GLocationsData_locationsBuilder> {
  _$GLocationsData_locations? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GLocationsData_locations_municipalityBuilder? _municipality;
  GLocationsData_locations_municipalityBuilder get municipality =>
      _$this._municipality ??=
          new GLocationsData_locations_municipalityBuilder();
  set municipality(
          GLocationsData_locations_municipalityBuilder? municipality) =>
      _$this._municipality = municipality;

  GLocationsData_locations_stateBuilder? _state;
  GLocationsData_locations_stateBuilder get state =>
      _$this._state ??= new GLocationsData_locations_stateBuilder();
  set state(GLocationsData_locations_stateBuilder? state) =>
      _$this._state = state;

  ListBuilder<GLocationsData_locations_leads>? _leads;
  ListBuilder<GLocationsData_locations_leads> get leads =>
      _$this._leads ??= new ListBuilder<GLocationsData_locations_leads>();
  set leads(ListBuilder<GLocationsData_locations_leads>? leads) =>
      _$this._leads = leads;

  GLocationsData_locationsBuilder() {
    GLocationsData_locations._initializeBuilder(this);
  }

  GLocationsData_locationsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _municipality = $v.municipality.toBuilder();
      _state = $v.state?.toBuilder();
      _leads = $v.leads.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLocationsData_locations other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLocationsData_locations;
  }

  @override
  void update(void Function(GLocationsData_locationsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLocationsData_locations build() => _build();

  _$GLocationsData_locations _build() {
    _$GLocationsData_locations _$result;
    try {
      _$result = _$v ??
          new _$GLocationsData_locations._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GLocationsData_locations', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GLocationsData_locations', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GLocationsData_locations', 'name'),
              municipality: municipality.build(),
              state: _state?.build(),
              leads: leads.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'municipality';
        municipality.build();
        _$failedField = 'state';
        _state?.build();
        _$failedField = 'leads';
        leads.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GLocationsData_locations', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLocationsData_locations_municipality
    extends GLocationsData_locations_municipality {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;

  factory _$GLocationsData_locations_municipality(
          [void Function(GLocationsData_locations_municipalityBuilder)?
              updates]) =>
      (new GLocationsData_locations_municipalityBuilder()..update(updates))
          ._build();

  _$GLocationsData_locations_municipality._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GLocationsData_locations_municipality', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GLocationsData_locations_municipality', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GLocationsData_locations_municipality', 'name');
  }

  @override
  GLocationsData_locations_municipality rebuild(
          void Function(GLocationsData_locations_municipalityBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLocationsData_locations_municipalityBuilder toBuilder() =>
      new GLocationsData_locations_municipalityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLocationsData_locations_municipality &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GLocationsData_locations_municipality')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GLocationsData_locations_municipalityBuilder
    implements
        Builder<GLocationsData_locations_municipality,
            GLocationsData_locations_municipalityBuilder> {
  _$GLocationsData_locations_municipality? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GLocationsData_locations_municipalityBuilder() {
    GLocationsData_locations_municipality._initializeBuilder(this);
  }

  GLocationsData_locations_municipalityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLocationsData_locations_municipality other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLocationsData_locations_municipality;
  }

  @override
  void update(
      void Function(GLocationsData_locations_municipalityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLocationsData_locations_municipality build() => _build();

  _$GLocationsData_locations_municipality _build() {
    final _$result = _$v ??
        new _$GLocationsData_locations_municipality._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GLocationsData_locations_municipality', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GLocationsData_locations_municipality', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GLocationsData_locations_municipality', 'name'));
    replace(_$result);
    return _$result;
  }
}

class _$GLocationsData_locations_state extends GLocationsData_locations_state {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;

  factory _$GLocationsData_locations_state(
          [void Function(GLocationsData_locations_stateBuilder)? updates]) =>
      (new GLocationsData_locations_stateBuilder()..update(updates))._build();

  _$GLocationsData_locations_state._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GLocationsData_locations_state', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GLocationsData_locations_state', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GLocationsData_locations_state', 'name');
  }

  @override
  GLocationsData_locations_state rebuild(
          void Function(GLocationsData_locations_stateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLocationsData_locations_stateBuilder toBuilder() =>
      new GLocationsData_locations_stateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLocationsData_locations_state &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLocationsData_locations_state')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GLocationsData_locations_stateBuilder
    implements
        Builder<GLocationsData_locations_state,
            GLocationsData_locations_stateBuilder> {
  _$GLocationsData_locations_state? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GLocationsData_locations_stateBuilder() {
    GLocationsData_locations_state._initializeBuilder(this);
  }

  GLocationsData_locations_stateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLocationsData_locations_state other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLocationsData_locations_state;
  }

  @override
  void update(void Function(GLocationsData_locations_stateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLocationsData_locations_state build() => _build();

  _$GLocationsData_locations_state _build() {
    final _$result = _$v ??
        new _$GLocationsData_locations_state._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GLocationsData_locations_state', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GLocationsData_locations_state', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GLocationsData_locations_state', 'name'));
    replace(_$result);
    return _$result;
  }
}

class _$GLocationsData_locations_leads extends GLocationsData_locations_leads {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final GLocationsData_locations_leads_personalData personalData;

  factory _$GLocationsData_locations_leads(
          [void Function(GLocationsData_locations_leadsBuilder)? updates]) =>
      (new GLocationsData_locations_leadsBuilder()..update(updates))._build();

  _$GLocationsData_locations_leads._(
      {required this.G__typename, required this.id, required this.personalData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GLocationsData_locations_leads', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GLocationsData_locations_leads', 'id');
    BuiltValueNullFieldError.checkNotNull(
        personalData, r'GLocationsData_locations_leads', 'personalData');
  }

  @override
  GLocationsData_locations_leads rebuild(
          void Function(GLocationsData_locations_leadsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLocationsData_locations_leadsBuilder toBuilder() =>
      new GLocationsData_locations_leadsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLocationsData_locations_leads &&
        G__typename == other.G__typename &&
        id == other.id &&
        personalData == other.personalData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, personalData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLocationsData_locations_leads')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('personalData', personalData))
        .toString();
  }
}

class GLocationsData_locations_leadsBuilder
    implements
        Builder<GLocationsData_locations_leads,
            GLocationsData_locations_leadsBuilder> {
  _$GLocationsData_locations_leads? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GLocationsData_locations_leads_personalDataBuilder? _personalData;
  GLocationsData_locations_leads_personalDataBuilder get personalData =>
      _$this._personalData ??=
          new GLocationsData_locations_leads_personalDataBuilder();
  set personalData(
          GLocationsData_locations_leads_personalDataBuilder? personalData) =>
      _$this._personalData = personalData;

  GLocationsData_locations_leadsBuilder() {
    GLocationsData_locations_leads._initializeBuilder(this);
  }

  GLocationsData_locations_leadsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _personalData = $v.personalData.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLocationsData_locations_leads other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLocationsData_locations_leads;
  }

  @override
  void update(void Function(GLocationsData_locations_leadsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLocationsData_locations_leads build() => _build();

  _$GLocationsData_locations_leads _build() {
    _$GLocationsData_locations_leads _$result;
    try {
      _$result = _$v ??
          new _$GLocationsData_locations_leads._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GLocationsData_locations_leads', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GLocationsData_locations_leads', 'id'),
              personalData: personalData.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'personalData';
        personalData.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GLocationsData_locations_leads', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLocationsData_locations_leads_personalData
    extends GLocationsData_locations_leads_personalData {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String fullName;

  factory _$GLocationsData_locations_leads_personalData(
          [void Function(GLocationsData_locations_leads_personalDataBuilder)?
              updates]) =>
      (new GLocationsData_locations_leads_personalDataBuilder()
            ..update(updates))
          ._build();

  _$GLocationsData_locations_leads_personalData._(
      {required this.G__typename, required this.id, required this.fullName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GLocationsData_locations_leads_personalData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GLocationsData_locations_leads_personalData', 'id');
    BuiltValueNullFieldError.checkNotNull(
        fullName, r'GLocationsData_locations_leads_personalData', 'fullName');
  }

  @override
  GLocationsData_locations_leads_personalData rebuild(
          void Function(GLocationsData_locations_leads_personalDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLocationsData_locations_leads_personalDataBuilder toBuilder() =>
      new GLocationsData_locations_leads_personalDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLocationsData_locations_leads_personalData &&
        G__typename == other.G__typename &&
        id == other.id &&
        fullName == other.fullName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GLocationsData_locations_leads_personalData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('fullName', fullName))
        .toString();
  }
}

class GLocationsData_locations_leads_personalDataBuilder
    implements
        Builder<GLocationsData_locations_leads_personalData,
            GLocationsData_locations_leads_personalDataBuilder> {
  _$GLocationsData_locations_leads_personalData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  GLocationsData_locations_leads_personalDataBuilder() {
    GLocationsData_locations_leads_personalData._initializeBuilder(this);
  }

  GLocationsData_locations_leads_personalDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _fullName = $v.fullName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLocationsData_locations_leads_personalData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLocationsData_locations_leads_personalData;
  }

  @override
  void update(
      void Function(GLocationsData_locations_leads_personalDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GLocationsData_locations_leads_personalData build() => _build();

  _$GLocationsData_locations_leads_personalData _build() {
    final _$result = _$v ??
        new _$GLocationsData_locations_leads_personalData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GLocationsData_locations_leads_personalData', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GLocationsData_locations_leads_personalData', 'id'),
            fullName: BuiltValueNullFieldError.checkNotNull(fullName,
                r'GLocationsData_locations_leads_personalData', 'fullName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
