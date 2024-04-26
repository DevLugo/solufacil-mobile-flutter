// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetRoutesData> _$gGetRoutesDataSerializer =
    new _$GGetRoutesDataSerializer();
Serializer<GGetRoutesData_getRoutes> _$gGetRoutesDataGetRoutesSerializer =
    new _$GGetRoutesData_getRoutesSerializer();

class _$GGetRoutesDataSerializer
    implements StructuredSerializer<GGetRoutesData> {
  @override
  final Iterable<Type> types = const [GGetRoutesData, _$GGetRoutesData];
  @override
  final String wireName = 'GGetRoutesData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetRoutesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getRoutes',
      serializers.serialize(object.getRoutes,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GGetRoutesData_getRoutes)])),
    ];

    return result;
  }

  @override
  GGetRoutesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetRoutesDataBuilder();

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
        case 'getRoutes':
          result.getRoutes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetRoutesData_getRoutes)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetRoutesData_getRoutesSerializer
    implements StructuredSerializer<GGetRoutesData_getRoutes> {
  @override
  final Iterable<Type> types = const [
    GGetRoutesData_getRoutes,
    _$GGetRoutesData_getRoutes
  ];
  @override
  final String wireName = 'GGetRoutesData_getRoutes';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetRoutesData_getRoutes object,
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
  GGetRoutesData_getRoutes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetRoutesData_getRoutesBuilder();

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

class _$GGetRoutesData extends GGetRoutesData {
  @override
  final String G__typename;
  @override
  final BuiltList<GGetRoutesData_getRoutes> getRoutes;

  factory _$GGetRoutesData([void Function(GGetRoutesDataBuilder)? updates]) =>
      (new GGetRoutesDataBuilder()..update(updates))._build();

  _$GGetRoutesData._({required this.G__typename, required this.getRoutes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetRoutesData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        getRoutes, r'GGetRoutesData', 'getRoutes');
  }

  @override
  GGetRoutesData rebuild(void Function(GGetRoutesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetRoutesDataBuilder toBuilder() =>
      new GGetRoutesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetRoutesData &&
        G__typename == other.G__typename &&
        getRoutes == other.getRoutes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getRoutes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetRoutesData')
          ..add('G__typename', G__typename)
          ..add('getRoutes', getRoutes))
        .toString();
  }
}

class GGetRoutesDataBuilder
    implements Builder<GGetRoutesData, GGetRoutesDataBuilder> {
  _$GGetRoutesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGetRoutesData_getRoutes>? _getRoutes;
  ListBuilder<GGetRoutesData_getRoutes> get getRoutes =>
      _$this._getRoutes ??= new ListBuilder<GGetRoutesData_getRoutes>();
  set getRoutes(ListBuilder<GGetRoutesData_getRoutes>? getRoutes) =>
      _$this._getRoutes = getRoutes;

  GGetRoutesDataBuilder() {
    GGetRoutesData._initializeBuilder(this);
  }

  GGetRoutesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getRoutes = $v.getRoutes.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetRoutesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetRoutesData;
  }

  @override
  void update(void Function(GGetRoutesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetRoutesData build() => _build();

  _$GGetRoutesData _build() {
    _$GGetRoutesData _$result;
    try {
      _$result = _$v ??
          new _$GGetRoutesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GGetRoutesData', 'G__typename'),
              getRoutes: getRoutes.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getRoutes';
        getRoutes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetRoutesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetRoutesData_getRoutes extends GGetRoutesData_getRoutes {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;

  factory _$GGetRoutesData_getRoutes(
          [void Function(GGetRoutesData_getRoutesBuilder)? updates]) =>
      (new GGetRoutesData_getRoutesBuilder()..update(updates))._build();

  _$GGetRoutesData_getRoutes._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetRoutesData_getRoutes', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GGetRoutesData_getRoutes', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GGetRoutesData_getRoutes', 'name');
  }

  @override
  GGetRoutesData_getRoutes rebuild(
          void Function(GGetRoutesData_getRoutesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetRoutesData_getRoutesBuilder toBuilder() =>
      new GGetRoutesData_getRoutesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetRoutesData_getRoutes &&
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
    return (newBuiltValueToStringHelper(r'GGetRoutesData_getRoutes')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GGetRoutesData_getRoutesBuilder
    implements
        Builder<GGetRoutesData_getRoutes, GGetRoutesData_getRoutesBuilder> {
  _$GGetRoutesData_getRoutes? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GGetRoutesData_getRoutesBuilder() {
    GGetRoutesData_getRoutes._initializeBuilder(this);
  }

  GGetRoutesData_getRoutesBuilder get _$this {
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
  void replace(GGetRoutesData_getRoutes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetRoutesData_getRoutes;
  }

  @override
  void update(void Function(GGetRoutesData_getRoutesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetRoutesData_getRoutes build() => _build();

  _$GGetRoutesData_getRoutes _build() {
    final _$result = _$v ??
        new _$GGetRoutesData_getRoutes._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GGetRoutesData_getRoutes', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GGetRoutesData_getRoutes', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GGetRoutesData_getRoutes', 'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
