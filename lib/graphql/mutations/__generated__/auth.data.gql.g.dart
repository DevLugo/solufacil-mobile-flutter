// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GsignUpData> _$gsignUpDataSerializer = new _$GsignUpDataSerializer();
Serializer<GsignUpData_signUp> _$gsignUpDataSignUpSerializer =
    new _$GsignUpData_signUpSerializer();

class _$GsignUpDataSerializer implements StructuredSerializer<GsignUpData> {
  @override
  final Iterable<Type> types = const [GsignUpData, _$GsignUpData];
  @override
  final String wireName = 'GsignUpData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GsignUpData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'signUp',
      serializers.serialize(object.signUp,
          specifiedType: const FullType(GsignUpData_signUp)),
    ];

    return result;
  }

  @override
  GsignUpData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GsignUpDataBuilder();

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
        case 'signUp':
          result.signUp.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GsignUpData_signUp))!
              as GsignUpData_signUp);
          break;
      }
    }

    return result.build();
  }
}

class _$GsignUpData_signUpSerializer
    implements StructuredSerializer<GsignUpData_signUp> {
  @override
  final Iterable<Type> types = const [GsignUpData_signUp, _$GsignUpData_signUp];
  @override
  final String wireName = 'GsignUpData_signUp';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GsignUpData_signUp object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GsignUpData_signUp deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GsignUpData_signUpBuilder();

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
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GsignUpData extends GsignUpData {
  @override
  final String G__typename;
  @override
  final GsignUpData_signUp signUp;

  factory _$GsignUpData([void Function(GsignUpDataBuilder)? updates]) =>
      (new GsignUpDataBuilder()..update(updates))._build();

  _$GsignUpData._({required this.G__typename, required this.signUp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GsignUpData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(signUp, r'GsignUpData', 'signUp');
  }

  @override
  GsignUpData rebuild(void Function(GsignUpDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GsignUpDataBuilder toBuilder() => new GsignUpDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GsignUpData &&
        G__typename == other.G__typename &&
        signUp == other.signUp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, signUp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GsignUpData')
          ..add('G__typename', G__typename)
          ..add('signUp', signUp))
        .toString();
  }
}

class GsignUpDataBuilder implements Builder<GsignUpData, GsignUpDataBuilder> {
  _$GsignUpData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GsignUpData_signUpBuilder? _signUp;
  GsignUpData_signUpBuilder get signUp =>
      _$this._signUp ??= new GsignUpData_signUpBuilder();
  set signUp(GsignUpData_signUpBuilder? signUp) => _$this._signUp = signUp;

  GsignUpDataBuilder() {
    GsignUpData._initializeBuilder(this);
  }

  GsignUpDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _signUp = $v.signUp.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GsignUpData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GsignUpData;
  }

  @override
  void update(void Function(GsignUpDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GsignUpData build() => _build();

  _$GsignUpData _build() {
    _$GsignUpData _$result;
    try {
      _$result = _$v ??
          new _$GsignUpData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GsignUpData', 'G__typename'),
              signUp: signUp.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'signUp';
        signUp.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GsignUpData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GsignUpData_signUp extends GsignUpData_signUp {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String email;

  factory _$GsignUpData_signUp(
          [void Function(GsignUpData_signUpBuilder)? updates]) =>
      (new GsignUpData_signUpBuilder()..update(updates))._build();

  _$GsignUpData_signUp._(
      {required this.G__typename, required this.id, required this.email})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GsignUpData_signUp', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GsignUpData_signUp', 'id');
    BuiltValueNullFieldError.checkNotNull(
        email, r'GsignUpData_signUp', 'email');
  }

  @override
  GsignUpData_signUp rebuild(
          void Function(GsignUpData_signUpBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GsignUpData_signUpBuilder toBuilder() =>
      new GsignUpData_signUpBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GsignUpData_signUp &&
        G__typename == other.G__typename &&
        id == other.id &&
        email == other.email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GsignUpData_signUp')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('email', email))
        .toString();
  }
}

class GsignUpData_signUpBuilder
    implements Builder<GsignUpData_signUp, GsignUpData_signUpBuilder> {
  _$GsignUpData_signUp? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  GsignUpData_signUpBuilder() {
    GsignUpData_signUp._initializeBuilder(this);
  }

  GsignUpData_signUpBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GsignUpData_signUp other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GsignUpData_signUp;
  }

  @override
  void update(void Function(GsignUpData_signUpBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GsignUpData_signUp build() => _build();

  _$GsignUpData_signUp _build() {
    final _$result = _$v ??
        new _$GsignUpData_signUp._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GsignUpData_signUp', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GsignUpData_signUp', 'id'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'GsignUpData_signUp', 'email'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
