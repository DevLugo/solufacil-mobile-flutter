// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetEmployeeData> _$ggetEmployeeDataSerializer =
    new _$GgetEmployeeDataSerializer();
Serializer<GgetEmployeeData_getEmployee>
    _$ggetEmployeeDataGetEmployeeSerializer =
    new _$GgetEmployeeData_getEmployeeSerializer();
Serializer<GgetEmployeeData_getEmployee_personalData>
    _$ggetEmployeeDataGetEmployeePersonalDataSerializer =
    new _$GgetEmployeeData_getEmployee_personalDataSerializer();
Serializer<GgetEmployeeData_getEmployee_personalData_addresses>
    _$ggetEmployeeDataGetEmployeePersonalDataAddressesSerializer =
    new _$GgetEmployeeData_getEmployee_personalData_addressesSerializer();
Serializer<GgetEmployeeData_getEmployee_personalData_addresses_location>
    _$ggetEmployeeDataGetEmployeePersonalDataAddressesLocationSerializer =
    new _$GgetEmployeeData_getEmployee_personalData_addresses_locationSerializer();
Serializer<
        GgetEmployeeData_getEmployee_personalData_addresses_location_municipality>
    _$ggetEmployeeDataGetEmployeePersonalDataAddressesLocationMunicipalitySerializer =
    new _$GgetEmployeeData_getEmployee_personalData_addresses_location_municipalitySerializer();

class _$GgetEmployeeDataSerializer
    implements StructuredSerializer<GgetEmployeeData> {
  @override
  final Iterable<Type> types = const [GgetEmployeeData, _$GgetEmployeeData];
  @override
  final String wireName = 'GgetEmployeeData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GgetEmployeeData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getEmployee',
      serializers.serialize(object.getEmployee,
          specifiedType: const FullType(GgetEmployeeData_getEmployee)),
    ];

    return result;
  }

  @override
  GgetEmployeeData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetEmployeeDataBuilder();

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
        case 'getEmployee':
          result.getEmployee.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GgetEmployeeData_getEmployee))!
              as GgetEmployeeData_getEmployee);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetEmployeeData_getEmployeeSerializer
    implements StructuredSerializer<GgetEmployeeData_getEmployee> {
  @override
  final Iterable<Type> types = const [
    GgetEmployeeData_getEmployee,
    _$GgetEmployeeData_getEmployee
  ];
  @override
  final String wireName = 'GgetEmployeeData_getEmployee';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetEmployeeData_getEmployee object,
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
              const FullType(GgetEmployeeData_getEmployee_personalData)),
    ];
    Object? value;
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GgetEmployeeData_getEmployee deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetEmployeeData_getEmployeeBuilder();

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
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'personalData':
          result.personalData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetEmployeeData_getEmployee_personalData))!
              as GgetEmployeeData_getEmployee_personalData);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetEmployeeData_getEmployee_personalDataSerializer
    implements StructuredSerializer<GgetEmployeeData_getEmployee_personalData> {
  @override
  final Iterable<Type> types = const [
    GgetEmployeeData_getEmployee_personalData,
    _$GgetEmployeeData_getEmployee_personalData
  ];
  @override
  final String wireName = 'GgetEmployeeData_getEmployee_personalData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetEmployeeData_getEmployee_personalData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'fullName',
      serializers.serialize(object.fullName,
          specifiedType: const FullType(String)),
      'addresses',
      serializers.serialize(object.addresses,
          specifiedType: const FullType(BuiltList, const [
            const FullType(GgetEmployeeData_getEmployee_personalData_addresses)
          ])),
    ];

    return result;
  }

  @override
  GgetEmployeeData_getEmployee_personalData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetEmployeeData_getEmployee_personalDataBuilder();

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
        case 'fullName':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'addresses':
          result.addresses.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GgetEmployeeData_getEmployee_personalData_addresses)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetEmployeeData_getEmployee_personalData_addressesSerializer
    implements
        StructuredSerializer<
            GgetEmployeeData_getEmployee_personalData_addresses> {
  @override
  final Iterable<Type> types = const [
    GgetEmployeeData_getEmployee_personalData_addresses,
    _$GgetEmployeeData_getEmployee_personalData_addresses
  ];
  @override
  final String wireName = 'GgetEmployeeData_getEmployee_personalData_addresses';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetEmployeeData_getEmployee_personalData_addresses object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'locationId',
      serializers.serialize(object.locationId,
          specifiedType: const FullType(String)),
      'location',
      serializers.serialize(object.location,
          specifiedType: const FullType(
              GgetEmployeeData_getEmployee_personalData_addresses_location)),
    ];

    return result;
  }

  @override
  GgetEmployeeData_getEmployee_personalData_addresses deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetEmployeeData_getEmployee_personalData_addressesBuilder();

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
        case 'locationId':
          result.locationId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'location':
          result.location.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetEmployeeData_getEmployee_personalData_addresses_location))!
              as GgetEmployeeData_getEmployee_personalData_addresses_location);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetEmployeeData_getEmployee_personalData_addresses_locationSerializer
    implements
        StructuredSerializer<
            GgetEmployeeData_getEmployee_personalData_addresses_location> {
  @override
  final Iterable<Type> types = const [
    GgetEmployeeData_getEmployee_personalData_addresses_location,
    _$GgetEmployeeData_getEmployee_personalData_addresses_location
  ];
  @override
  final String wireName =
      'GgetEmployeeData_getEmployee_personalData_addresses_location';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetEmployeeData_getEmployee_personalData_addresses_location object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'municipality',
      serializers.serialize(object.municipality,
          specifiedType: const FullType(
              GgetEmployeeData_getEmployee_personalData_addresses_location_municipality)),
    ];

    return result;
  }

  @override
  GgetEmployeeData_getEmployee_personalData_addresses_location deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetEmployeeData_getEmployee_personalData_addresses_locationBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'municipality':
          result.municipality.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetEmployeeData_getEmployee_personalData_addresses_location_municipality))!
              as GgetEmployeeData_getEmployee_personalData_addresses_location_municipality);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetEmployeeData_getEmployee_personalData_addresses_location_municipalitySerializer
    implements
        StructuredSerializer<
            GgetEmployeeData_getEmployee_personalData_addresses_location_municipality> {
  @override
  final Iterable<Type> types = const [
    GgetEmployeeData_getEmployee_personalData_addresses_location_municipality,
    _$GgetEmployeeData_getEmployee_personalData_addresses_location_municipality
  ];
  @override
  final String wireName =
      'GgetEmployeeData_getEmployee_personalData_addresses_location_municipality';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GgetEmployeeData_getEmployee_personalData_addresses_location_municipality
          object,
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
  GgetEmployeeData_getEmployee_personalData_addresses_location_municipality
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetEmployeeData_getEmployee_personalData_addresses_location_municipalityBuilder();

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

class _$GgetEmployeeData extends GgetEmployeeData {
  @override
  final String G__typename;
  @override
  final GgetEmployeeData_getEmployee getEmployee;

  factory _$GgetEmployeeData(
          [void Function(GgetEmployeeDataBuilder)? updates]) =>
      (new GgetEmployeeDataBuilder()..update(updates))._build();

  _$GgetEmployeeData._({required this.G__typename, required this.getEmployee})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetEmployeeData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        getEmployee, r'GgetEmployeeData', 'getEmployee');
  }

  @override
  GgetEmployeeData rebuild(void Function(GgetEmployeeDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetEmployeeDataBuilder toBuilder() =>
      new GgetEmployeeDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetEmployeeData &&
        G__typename == other.G__typename &&
        getEmployee == other.getEmployee;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getEmployee.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetEmployeeData')
          ..add('G__typename', G__typename)
          ..add('getEmployee', getEmployee))
        .toString();
  }
}

class GgetEmployeeDataBuilder
    implements Builder<GgetEmployeeData, GgetEmployeeDataBuilder> {
  _$GgetEmployeeData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GgetEmployeeData_getEmployeeBuilder? _getEmployee;
  GgetEmployeeData_getEmployeeBuilder get getEmployee =>
      _$this._getEmployee ??= new GgetEmployeeData_getEmployeeBuilder();
  set getEmployee(GgetEmployeeData_getEmployeeBuilder? getEmployee) =>
      _$this._getEmployee = getEmployee;

  GgetEmployeeDataBuilder() {
    GgetEmployeeData._initializeBuilder(this);
  }

  GgetEmployeeDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getEmployee = $v.getEmployee.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetEmployeeData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetEmployeeData;
  }

  @override
  void update(void Function(GgetEmployeeDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetEmployeeData build() => _build();

  _$GgetEmployeeData _build() {
    _$GgetEmployeeData _$result;
    try {
      _$result = _$v ??
          new _$GgetEmployeeData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GgetEmployeeData', 'G__typename'),
              getEmployee: getEmployee.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getEmployee';
        getEmployee.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetEmployeeData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetEmployeeData_getEmployee extends GgetEmployeeData_getEmployee {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? userId;
  @override
  final GgetEmployeeData_getEmployee_personalData personalData;

  factory _$GgetEmployeeData_getEmployee(
          [void Function(GgetEmployeeData_getEmployeeBuilder)? updates]) =>
      (new GgetEmployeeData_getEmployeeBuilder()..update(updates))._build();

  _$GgetEmployeeData_getEmployee._(
      {required this.G__typename,
      required this.id,
      this.userId,
      required this.personalData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetEmployeeData_getEmployee', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GgetEmployeeData_getEmployee', 'id');
    BuiltValueNullFieldError.checkNotNull(
        personalData, r'GgetEmployeeData_getEmployee', 'personalData');
  }

  @override
  GgetEmployeeData_getEmployee rebuild(
          void Function(GgetEmployeeData_getEmployeeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetEmployeeData_getEmployeeBuilder toBuilder() =>
      new GgetEmployeeData_getEmployeeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetEmployeeData_getEmployee &&
        G__typename == other.G__typename &&
        id == other.id &&
        userId == other.userId &&
        personalData == other.personalData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, personalData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetEmployeeData_getEmployee')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('userId', userId)
          ..add('personalData', personalData))
        .toString();
  }
}

class GgetEmployeeData_getEmployeeBuilder
    implements
        Builder<GgetEmployeeData_getEmployee,
            GgetEmployeeData_getEmployeeBuilder> {
  _$GgetEmployeeData_getEmployee? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  GgetEmployeeData_getEmployee_personalDataBuilder? _personalData;
  GgetEmployeeData_getEmployee_personalDataBuilder get personalData =>
      _$this._personalData ??=
          new GgetEmployeeData_getEmployee_personalDataBuilder();
  set personalData(
          GgetEmployeeData_getEmployee_personalDataBuilder? personalData) =>
      _$this._personalData = personalData;

  GgetEmployeeData_getEmployeeBuilder() {
    GgetEmployeeData_getEmployee._initializeBuilder(this);
  }

  GgetEmployeeData_getEmployeeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _userId = $v.userId;
      _personalData = $v.personalData.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetEmployeeData_getEmployee other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetEmployeeData_getEmployee;
  }

  @override
  void update(void Function(GgetEmployeeData_getEmployeeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetEmployeeData_getEmployee build() => _build();

  _$GgetEmployeeData_getEmployee _build() {
    _$GgetEmployeeData_getEmployee _$result;
    try {
      _$result = _$v ??
          new _$GgetEmployeeData_getEmployee._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GgetEmployeeData_getEmployee', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GgetEmployeeData_getEmployee', 'id'),
              userId: userId,
              personalData: personalData.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'personalData';
        personalData.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetEmployeeData_getEmployee', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetEmployeeData_getEmployee_personalData
    extends GgetEmployeeData_getEmployee_personalData {
  @override
  final String G__typename;
  @override
  final String fullName;
  @override
  final BuiltList<GgetEmployeeData_getEmployee_personalData_addresses>
      addresses;

  factory _$GgetEmployeeData_getEmployee_personalData(
          [void Function(GgetEmployeeData_getEmployee_personalDataBuilder)?
              updates]) =>
      (new GgetEmployeeData_getEmployee_personalDataBuilder()..update(updates))
          ._build();

  _$GgetEmployeeData_getEmployee_personalData._(
      {required this.G__typename,
      required this.fullName,
      required this.addresses})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetEmployeeData_getEmployee_personalData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        fullName, r'GgetEmployeeData_getEmployee_personalData', 'fullName');
    BuiltValueNullFieldError.checkNotNull(
        addresses, r'GgetEmployeeData_getEmployee_personalData', 'addresses');
  }

  @override
  GgetEmployeeData_getEmployee_personalData rebuild(
          void Function(GgetEmployeeData_getEmployee_personalDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetEmployeeData_getEmployee_personalDataBuilder toBuilder() =>
      new GgetEmployeeData_getEmployee_personalDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetEmployeeData_getEmployee_personalData &&
        G__typename == other.G__typename &&
        fullName == other.fullName &&
        addresses == other.addresses;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jc(_$hash, addresses.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetEmployeeData_getEmployee_personalData')
          ..add('G__typename', G__typename)
          ..add('fullName', fullName)
          ..add('addresses', addresses))
        .toString();
  }
}

class GgetEmployeeData_getEmployee_personalDataBuilder
    implements
        Builder<GgetEmployeeData_getEmployee_personalData,
            GgetEmployeeData_getEmployee_personalDataBuilder> {
  _$GgetEmployeeData_getEmployee_personalData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  ListBuilder<GgetEmployeeData_getEmployee_personalData_addresses>? _addresses;
  ListBuilder<GgetEmployeeData_getEmployee_personalData_addresses>
      get addresses => _$this._addresses ??= new ListBuilder<
          GgetEmployeeData_getEmployee_personalData_addresses>();
  set addresses(
          ListBuilder<GgetEmployeeData_getEmployee_personalData_addresses>?
              addresses) =>
      _$this._addresses = addresses;

  GgetEmployeeData_getEmployee_personalDataBuilder() {
    GgetEmployeeData_getEmployee_personalData._initializeBuilder(this);
  }

  GgetEmployeeData_getEmployee_personalDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _fullName = $v.fullName;
      _addresses = $v.addresses.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetEmployeeData_getEmployee_personalData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetEmployeeData_getEmployee_personalData;
  }

  @override
  void update(
      void Function(GgetEmployeeData_getEmployee_personalDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetEmployeeData_getEmployee_personalData build() => _build();

  _$GgetEmployeeData_getEmployee_personalData _build() {
    _$GgetEmployeeData_getEmployee_personalData _$result;
    try {
      _$result = _$v ??
          new _$GgetEmployeeData_getEmployee_personalData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GgetEmployeeData_getEmployee_personalData', 'G__typename'),
              fullName: BuiltValueNullFieldError.checkNotNull(fullName,
                  r'GgetEmployeeData_getEmployee_personalData', 'fullName'),
              addresses: addresses.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'addresses';
        addresses.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetEmployeeData_getEmployee_personalData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetEmployeeData_getEmployee_personalData_addresses
    extends GgetEmployeeData_getEmployee_personalData_addresses {
  @override
  final String G__typename;
  @override
  final String locationId;
  @override
  final GgetEmployeeData_getEmployee_personalData_addresses_location location;

  factory _$GgetEmployeeData_getEmployee_personalData_addresses(
          [void Function(
                  GgetEmployeeData_getEmployee_personalData_addressesBuilder)?
              updates]) =>
      (new GgetEmployeeData_getEmployee_personalData_addressesBuilder()
            ..update(updates))
          ._build();

  _$GgetEmployeeData_getEmployee_personalData_addresses._(
      {required this.G__typename,
      required this.locationId,
      required this.location})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetEmployeeData_getEmployee_personalData_addresses', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(locationId,
        r'GgetEmployeeData_getEmployee_personalData_addresses', 'locationId');
    BuiltValueNullFieldError.checkNotNull(location,
        r'GgetEmployeeData_getEmployee_personalData_addresses', 'location');
  }

  @override
  GgetEmployeeData_getEmployee_personalData_addresses rebuild(
          void Function(
                  GgetEmployeeData_getEmployee_personalData_addressesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetEmployeeData_getEmployee_personalData_addressesBuilder toBuilder() =>
      new GgetEmployeeData_getEmployee_personalData_addressesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetEmployeeData_getEmployee_personalData_addresses &&
        G__typename == other.G__typename &&
        locationId == other.locationId &&
        location == other.location;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, locationId.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetEmployeeData_getEmployee_personalData_addresses')
          ..add('G__typename', G__typename)
          ..add('locationId', locationId)
          ..add('location', location))
        .toString();
  }
}

class GgetEmployeeData_getEmployee_personalData_addressesBuilder
    implements
        Builder<GgetEmployeeData_getEmployee_personalData_addresses,
            GgetEmployeeData_getEmployee_personalData_addressesBuilder> {
  _$GgetEmployeeData_getEmployee_personalData_addresses? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _locationId;
  String? get locationId => _$this._locationId;
  set locationId(String? locationId) => _$this._locationId = locationId;

  GgetEmployeeData_getEmployee_personalData_addresses_locationBuilder?
      _location;
  GgetEmployeeData_getEmployee_personalData_addresses_locationBuilder
      get location => _$this._location ??=
          new GgetEmployeeData_getEmployee_personalData_addresses_locationBuilder();
  set location(
          GgetEmployeeData_getEmployee_personalData_addresses_locationBuilder?
              location) =>
      _$this._location = location;

  GgetEmployeeData_getEmployee_personalData_addressesBuilder() {
    GgetEmployeeData_getEmployee_personalData_addresses._initializeBuilder(
        this);
  }

  GgetEmployeeData_getEmployee_personalData_addressesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _locationId = $v.locationId;
      _location = $v.location.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetEmployeeData_getEmployee_personalData_addresses other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetEmployeeData_getEmployee_personalData_addresses;
  }

  @override
  void update(
      void Function(GgetEmployeeData_getEmployee_personalData_addressesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetEmployeeData_getEmployee_personalData_addresses build() => _build();

  _$GgetEmployeeData_getEmployee_personalData_addresses _build() {
    _$GgetEmployeeData_getEmployee_personalData_addresses _$result;
    try {
      _$result = _$v ??
          new _$GgetEmployeeData_getEmployee_personalData_addresses._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GgetEmployeeData_getEmployee_personalData_addresses',
                  'G__typename'),
              locationId: BuiltValueNullFieldError.checkNotNull(
                  locationId,
                  r'GgetEmployeeData_getEmployee_personalData_addresses',
                  'locationId'),
              location: location.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'location';
        location.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetEmployeeData_getEmployee_personalData_addresses',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetEmployeeData_getEmployee_personalData_addresses_location
    extends GgetEmployeeData_getEmployee_personalData_addresses_location {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final GgetEmployeeData_getEmployee_personalData_addresses_location_municipality
      municipality;

  factory _$GgetEmployeeData_getEmployee_personalData_addresses_location(
          [void Function(
                  GgetEmployeeData_getEmployee_personalData_addresses_locationBuilder)?
              updates]) =>
      (new GgetEmployeeData_getEmployee_personalData_addresses_locationBuilder()
            ..update(updates))
          ._build();

  _$GgetEmployeeData_getEmployee_personalData_addresses_location._(
      {required this.G__typename,
      required this.name,
      required this.municipality})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetEmployeeData_getEmployee_personalData_addresses_location',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name,
        r'GgetEmployeeData_getEmployee_personalData_addresses_location',
        'name');
    BuiltValueNullFieldError.checkNotNull(
        municipality,
        r'GgetEmployeeData_getEmployee_personalData_addresses_location',
        'municipality');
  }

  @override
  GgetEmployeeData_getEmployee_personalData_addresses_location rebuild(
          void Function(
                  GgetEmployeeData_getEmployee_personalData_addresses_locationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetEmployeeData_getEmployee_personalData_addresses_locationBuilder
      toBuilder() =>
          new GgetEmployeeData_getEmployee_personalData_addresses_locationBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GgetEmployeeData_getEmployee_personalData_addresses_location &&
        G__typename == other.G__typename &&
        name == other.name &&
        municipality == other.municipality;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, municipality.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetEmployeeData_getEmployee_personalData_addresses_location')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('municipality', municipality))
        .toString();
  }
}

class GgetEmployeeData_getEmployee_personalData_addresses_locationBuilder
    implements
        Builder<GgetEmployeeData_getEmployee_personalData_addresses_location,
            GgetEmployeeData_getEmployee_personalData_addresses_locationBuilder> {
  _$GgetEmployeeData_getEmployee_personalData_addresses_location? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GgetEmployeeData_getEmployee_personalData_addresses_location_municipalityBuilder?
      _municipality;
  GgetEmployeeData_getEmployee_personalData_addresses_location_municipalityBuilder
      get municipality => _$this._municipality ??=
          new GgetEmployeeData_getEmployee_personalData_addresses_location_municipalityBuilder();
  set municipality(
          GgetEmployeeData_getEmployee_personalData_addresses_location_municipalityBuilder?
              municipality) =>
      _$this._municipality = municipality;

  GgetEmployeeData_getEmployee_personalData_addresses_locationBuilder() {
    GgetEmployeeData_getEmployee_personalData_addresses_location
        ._initializeBuilder(this);
  }

  GgetEmployeeData_getEmployee_personalData_addresses_locationBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _municipality = $v.municipality.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GgetEmployeeData_getEmployee_personalData_addresses_location other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$GgetEmployeeData_getEmployee_personalData_addresses_location;
  }

  @override
  void update(
      void Function(
              GgetEmployeeData_getEmployee_personalData_addresses_locationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetEmployeeData_getEmployee_personalData_addresses_location build() =>
      _build();

  _$GgetEmployeeData_getEmployee_personalData_addresses_location _build() {
    _$GgetEmployeeData_getEmployee_personalData_addresses_location _$result;
    try {
      _$result = _$v ??
          new _$GgetEmployeeData_getEmployee_personalData_addresses_location._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GgetEmployeeData_getEmployee_personalData_addresses_location',
                  'G__typename'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name,
                  r'GgetEmployeeData_getEmployee_personalData_addresses_location',
                  'name'),
              municipality: municipality.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'municipality';
        municipality.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetEmployeeData_getEmployee_personalData_addresses_location',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetEmployeeData_getEmployee_personalData_addresses_location_municipality
    extends GgetEmployeeData_getEmployee_personalData_addresses_location_municipality {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;

  factory _$GgetEmployeeData_getEmployee_personalData_addresses_location_municipality(
          [void Function(
                  GgetEmployeeData_getEmployee_personalData_addresses_location_municipalityBuilder)?
              updates]) =>
      (new GgetEmployeeData_getEmployee_personalData_addresses_location_municipalityBuilder()
            ..update(updates))
          ._build();

  _$GgetEmployeeData_getEmployee_personalData_addresses_location_municipality._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetEmployeeData_getEmployee_personalData_addresses_location_municipality',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GgetEmployeeData_getEmployee_personalData_addresses_location_municipality',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        name,
        r'GgetEmployeeData_getEmployee_personalData_addresses_location_municipality',
        'name');
  }

  @override
  GgetEmployeeData_getEmployee_personalData_addresses_location_municipality rebuild(
          void Function(
                  GgetEmployeeData_getEmployee_personalData_addresses_location_municipalityBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetEmployeeData_getEmployee_personalData_addresses_location_municipalityBuilder
      toBuilder() =>
          new GgetEmployeeData_getEmployee_personalData_addresses_location_municipalityBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GgetEmployeeData_getEmployee_personalData_addresses_location_municipality &&
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
            r'GgetEmployeeData_getEmployee_personalData_addresses_location_municipality')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GgetEmployeeData_getEmployee_personalData_addresses_location_municipalityBuilder
    implements
        Builder<
            GgetEmployeeData_getEmployee_personalData_addresses_location_municipality,
            GgetEmployeeData_getEmployee_personalData_addresses_location_municipalityBuilder> {
  _$GgetEmployeeData_getEmployee_personalData_addresses_location_municipality?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GgetEmployeeData_getEmployee_personalData_addresses_location_municipalityBuilder() {
    GgetEmployeeData_getEmployee_personalData_addresses_location_municipality
        ._initializeBuilder(this);
  }

  GgetEmployeeData_getEmployee_personalData_addresses_location_municipalityBuilder
      get _$this {
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
  void replace(
      GgetEmployeeData_getEmployee_personalData_addresses_location_municipality
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GgetEmployeeData_getEmployee_personalData_addresses_location_municipality;
  }

  @override
  void update(
      void Function(
              GgetEmployeeData_getEmployee_personalData_addresses_location_municipalityBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetEmployeeData_getEmployee_personalData_addresses_location_municipality
      build() => _build();

  _$GgetEmployeeData_getEmployee_personalData_addresses_location_municipality
      _build() {
    final _$result = _$v ??
        new _$GgetEmployeeData_getEmployee_personalData_addresses_location_municipality
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetEmployeeData_getEmployee_personalData_addresses_location_municipality',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'GgetEmployeeData_getEmployee_personalData_addresses_location_municipality',
                'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name,
                r'GgetEmployeeData_getEmployee_personalData_addresses_location_municipality',
                'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
