// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GSignUpData> _$gSignUpDataSerializer = new _$GSignUpDataSerializer();
Serializer<GSignUpData_signUp> _$gSignUpDataSignUpSerializer =
    new _$GSignUpData_signUpSerializer();
Serializer<GSignInData> _$gSignInDataSerializer = new _$GSignInDataSerializer();
Serializer<GSignInData_signIn> _$gSignInDataSignInSerializer =
    new _$GSignInData_signInSerializer();
Serializer<GSignInData_signIn_user> _$gSignInDataSignInUserSerializer =
    new _$GSignInData_signIn_userSerializer();
Serializer<GSignInData_signIn_user_employee>
    _$gSignInDataSignInUserEmployeeSerializer =
    new _$GSignInData_signIn_user_employeeSerializer();
Serializer<GSignInData_signIn_user_employee_personalData>
    _$gSignInDataSignInUserEmployeePersonalDataSerializer =
    new _$GSignInData_signIn_user_employee_personalDataSerializer();

class _$GSignUpDataSerializer implements StructuredSerializer<GSignUpData> {
  @override
  final Iterable<Type> types = const [GSignUpData, _$GSignUpData];
  @override
  final String wireName = 'GSignUpData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSignUpData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'signUp',
      serializers.serialize(object.signUp,
          specifiedType: const FullType(GSignUpData_signUp)),
    ];

    return result;
  }

  @override
  GSignUpData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSignUpDataBuilder();

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
                  specifiedType: const FullType(GSignUpData_signUp))!
              as GSignUpData_signUp);
          break;
      }
    }

    return result.build();
  }
}

class _$GSignUpData_signUpSerializer
    implements StructuredSerializer<GSignUpData_signUp> {
  @override
  final Iterable<Type> types = const [GSignUpData_signUp, _$GSignUpData_signUp];
  @override
  final String wireName = 'GSignUpData_signUp';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSignUpData_signUp object,
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
  GSignUpData_signUp deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSignUpData_signUpBuilder();

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

class _$GSignInDataSerializer implements StructuredSerializer<GSignInData> {
  @override
  final Iterable<Type> types = const [GSignInData, _$GSignInData];
  @override
  final String wireName = 'GSignInData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSignInData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'signIn',
      serializers.serialize(object.signIn,
          specifiedType: const FullType(GSignInData_signIn)),
    ];

    return result;
  }

  @override
  GSignInData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSignInDataBuilder();

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
        case 'signIn':
          result.signIn.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GSignInData_signIn))!
              as GSignInData_signIn);
          break;
      }
    }

    return result.build();
  }
}

class _$GSignInData_signInSerializer
    implements StructuredSerializer<GSignInData_signIn> {
  @override
  final Iterable<Type> types = const [GSignInData_signIn, _$GSignInData_signIn];
  @override
  final String wireName = 'GSignInData_signIn';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSignInData_signIn object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
      'user',
      serializers.serialize(object.user,
          specifiedType: const FullType(GSignInData_signIn_user)),
    ];

    return result;
  }

  @override
  GSignInData_signIn deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSignInData_signInBuilder();

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
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GSignInData_signIn_user))!
              as GSignInData_signIn_user);
          break;
      }
    }

    return result.build();
  }
}

class _$GSignInData_signIn_userSerializer
    implements StructuredSerializer<GSignInData_signIn_user> {
  @override
  final Iterable<Type> types = const [
    GSignInData_signIn_user,
    _$GSignInData_signIn_user
  ];
  @override
  final String wireName = 'GSignInData_signIn_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSignInData_signIn_user object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'employee',
      serializers.serialize(object.employee,
          specifiedType: const FullType(GSignInData_signIn_user_employee)),
    ];

    return result;
  }

  @override
  GSignInData_signIn_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSignInData_signIn_userBuilder();

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
        case 'employee':
          result.employee.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GSignInData_signIn_user_employee))!
              as GSignInData_signIn_user_employee);
          break;
      }
    }

    return result.build();
  }
}

class _$GSignInData_signIn_user_employeeSerializer
    implements StructuredSerializer<GSignInData_signIn_user_employee> {
  @override
  final Iterable<Type> types = const [
    GSignInData_signIn_user_employee,
    _$GSignInData_signIn_user_employee
  ];
  @override
  final String wireName = 'GSignInData_signIn_user_employee';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSignInData_signIn_user_employee object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'personalData',
      serializers.serialize(object.personalData,
          specifiedType:
              const FullType(GSignInData_signIn_user_employee_personalData)),
    ];

    return result;
  }

  @override
  GSignInData_signIn_user_employee deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSignInData_signIn_user_employeeBuilder();

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
        case 'personalData':
          result.personalData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GSignInData_signIn_user_employee_personalData))!
              as GSignInData_signIn_user_employee_personalData);
          break;
      }
    }

    return result.build();
  }
}

class _$GSignInData_signIn_user_employee_personalDataSerializer
    implements
        StructuredSerializer<GSignInData_signIn_user_employee_personalData> {
  @override
  final Iterable<Type> types = const [
    GSignInData_signIn_user_employee_personalData,
    _$GSignInData_signIn_user_employee_personalData
  ];
  @override
  final String wireName = 'GSignInData_signIn_user_employee_personalData';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSignInData_signIn_user_employee_personalData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'fullName',
      serializers.serialize(object.fullName,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GSignInData_signIn_user_employee_personalData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSignInData_signIn_user_employee_personalDataBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GSignUpData extends GSignUpData {
  @override
  final String G__typename;
  @override
  final GSignUpData_signUp signUp;

  factory _$GSignUpData([void Function(GSignUpDataBuilder)? updates]) =>
      (new GSignUpDataBuilder()..update(updates))._build();

  _$GSignUpData._({required this.G__typename, required this.signUp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSignUpData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(signUp, r'GSignUpData', 'signUp');
  }

  @override
  GSignUpData rebuild(void Function(GSignUpDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSignUpDataBuilder toBuilder() => new GSignUpDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSignUpData &&
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
    return (newBuiltValueToStringHelper(r'GSignUpData')
          ..add('G__typename', G__typename)
          ..add('signUp', signUp))
        .toString();
  }
}

class GSignUpDataBuilder implements Builder<GSignUpData, GSignUpDataBuilder> {
  _$GSignUpData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSignUpData_signUpBuilder? _signUp;
  GSignUpData_signUpBuilder get signUp =>
      _$this._signUp ??= new GSignUpData_signUpBuilder();
  set signUp(GSignUpData_signUpBuilder? signUp) => _$this._signUp = signUp;

  GSignUpDataBuilder() {
    GSignUpData._initializeBuilder(this);
  }

  GSignUpDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _signUp = $v.signUp.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSignUpData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSignUpData;
  }

  @override
  void update(void Function(GSignUpDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSignUpData build() => _build();

  _$GSignUpData _build() {
    _$GSignUpData _$result;
    try {
      _$result = _$v ??
          new _$GSignUpData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GSignUpData', 'G__typename'),
              signUp: signUp.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'signUp';
        signUp.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSignUpData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSignUpData_signUp extends GSignUpData_signUp {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String email;

  factory _$GSignUpData_signUp(
          [void Function(GSignUpData_signUpBuilder)? updates]) =>
      (new GSignUpData_signUpBuilder()..update(updates))._build();

  _$GSignUpData_signUp._(
      {required this.G__typename, required this.id, required this.email})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSignUpData_signUp', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GSignUpData_signUp', 'id');
    BuiltValueNullFieldError.checkNotNull(
        email, r'GSignUpData_signUp', 'email');
  }

  @override
  GSignUpData_signUp rebuild(
          void Function(GSignUpData_signUpBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSignUpData_signUpBuilder toBuilder() =>
      new GSignUpData_signUpBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSignUpData_signUp &&
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
    return (newBuiltValueToStringHelper(r'GSignUpData_signUp')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('email', email))
        .toString();
  }
}

class GSignUpData_signUpBuilder
    implements Builder<GSignUpData_signUp, GSignUpData_signUpBuilder> {
  _$GSignUpData_signUp? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  GSignUpData_signUpBuilder() {
    GSignUpData_signUp._initializeBuilder(this);
  }

  GSignUpData_signUpBuilder get _$this {
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
  void replace(GSignUpData_signUp other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSignUpData_signUp;
  }

  @override
  void update(void Function(GSignUpData_signUpBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSignUpData_signUp build() => _build();

  _$GSignUpData_signUp _build() {
    final _$result = _$v ??
        new _$GSignUpData_signUp._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GSignUpData_signUp', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GSignUpData_signUp', 'id'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'GSignUpData_signUp', 'email'));
    replace(_$result);
    return _$result;
  }
}

class _$GSignInData extends GSignInData {
  @override
  final String G__typename;
  @override
  final GSignInData_signIn signIn;

  factory _$GSignInData([void Function(GSignInDataBuilder)? updates]) =>
      (new GSignInDataBuilder()..update(updates))._build();

  _$GSignInData._({required this.G__typename, required this.signIn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSignInData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(signIn, r'GSignInData', 'signIn');
  }

  @override
  GSignInData rebuild(void Function(GSignInDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSignInDataBuilder toBuilder() => new GSignInDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSignInData &&
        G__typename == other.G__typename &&
        signIn == other.signIn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, signIn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSignInData')
          ..add('G__typename', G__typename)
          ..add('signIn', signIn))
        .toString();
  }
}

class GSignInDataBuilder implements Builder<GSignInData, GSignInDataBuilder> {
  _$GSignInData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSignInData_signInBuilder? _signIn;
  GSignInData_signInBuilder get signIn =>
      _$this._signIn ??= new GSignInData_signInBuilder();
  set signIn(GSignInData_signInBuilder? signIn) => _$this._signIn = signIn;

  GSignInDataBuilder() {
    GSignInData._initializeBuilder(this);
  }

  GSignInDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _signIn = $v.signIn.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSignInData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSignInData;
  }

  @override
  void update(void Function(GSignInDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSignInData build() => _build();

  _$GSignInData _build() {
    _$GSignInData _$result;
    try {
      _$result = _$v ??
          new _$GSignInData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GSignInData', 'G__typename'),
              signIn: signIn.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'signIn';
        signIn.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSignInData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSignInData_signIn extends GSignInData_signIn {
  @override
  final String G__typename;
  @override
  final String token;
  @override
  final GSignInData_signIn_user user;

  factory _$GSignInData_signIn(
          [void Function(GSignInData_signInBuilder)? updates]) =>
      (new GSignInData_signInBuilder()..update(updates))._build();

  _$GSignInData_signIn._(
      {required this.G__typename, required this.token, required this.user})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSignInData_signIn', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        token, r'GSignInData_signIn', 'token');
    BuiltValueNullFieldError.checkNotNull(user, r'GSignInData_signIn', 'user');
  }

  @override
  GSignInData_signIn rebuild(
          void Function(GSignInData_signInBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSignInData_signInBuilder toBuilder() =>
      new GSignInData_signInBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSignInData_signIn &&
        G__typename == other.G__typename &&
        token == other.token &&
        user == other.user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSignInData_signIn')
          ..add('G__typename', G__typename)
          ..add('token', token)
          ..add('user', user))
        .toString();
  }
}

class GSignInData_signInBuilder
    implements Builder<GSignInData_signIn, GSignInData_signInBuilder> {
  _$GSignInData_signIn? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  GSignInData_signIn_userBuilder? _user;
  GSignInData_signIn_userBuilder get user =>
      _$this._user ??= new GSignInData_signIn_userBuilder();
  set user(GSignInData_signIn_userBuilder? user) => _$this._user = user;

  GSignInData_signInBuilder() {
    GSignInData_signIn._initializeBuilder(this);
  }

  GSignInData_signInBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _token = $v.token;
      _user = $v.user.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSignInData_signIn other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSignInData_signIn;
  }

  @override
  void update(void Function(GSignInData_signInBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSignInData_signIn build() => _build();

  _$GSignInData_signIn _build() {
    _$GSignInData_signIn _$result;
    try {
      _$result = _$v ??
          new _$GSignInData_signIn._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GSignInData_signIn', 'G__typename'),
              token: BuiltValueNullFieldError.checkNotNull(
                  token, r'GSignInData_signIn', 'token'),
              user: user.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSignInData_signIn', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSignInData_signIn_user extends GSignInData_signIn_user {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final GSignInData_signIn_user_employee employee;

  factory _$GSignInData_signIn_user(
          [void Function(GSignInData_signIn_userBuilder)? updates]) =>
      (new GSignInData_signIn_userBuilder()..update(updates))._build();

  _$GSignInData_signIn_user._(
      {required this.G__typename, required this.id, required this.employee})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSignInData_signIn_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GSignInData_signIn_user', 'id');
    BuiltValueNullFieldError.checkNotNull(
        employee, r'GSignInData_signIn_user', 'employee');
  }

  @override
  GSignInData_signIn_user rebuild(
          void Function(GSignInData_signIn_userBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSignInData_signIn_userBuilder toBuilder() =>
      new GSignInData_signIn_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSignInData_signIn_user &&
        G__typename == other.G__typename &&
        id == other.id &&
        employee == other.employee;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, employee.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSignInData_signIn_user')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('employee', employee))
        .toString();
  }
}

class GSignInData_signIn_userBuilder
    implements
        Builder<GSignInData_signIn_user, GSignInData_signIn_userBuilder> {
  _$GSignInData_signIn_user? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GSignInData_signIn_user_employeeBuilder? _employee;
  GSignInData_signIn_user_employeeBuilder get employee =>
      _$this._employee ??= new GSignInData_signIn_user_employeeBuilder();
  set employee(GSignInData_signIn_user_employeeBuilder? employee) =>
      _$this._employee = employee;

  GSignInData_signIn_userBuilder() {
    GSignInData_signIn_user._initializeBuilder(this);
  }

  GSignInData_signIn_userBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _employee = $v.employee.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSignInData_signIn_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSignInData_signIn_user;
  }

  @override
  void update(void Function(GSignInData_signIn_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSignInData_signIn_user build() => _build();

  _$GSignInData_signIn_user _build() {
    _$GSignInData_signIn_user _$result;
    try {
      _$result = _$v ??
          new _$GSignInData_signIn_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GSignInData_signIn_user', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GSignInData_signIn_user', 'id'),
              employee: employee.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'employee';
        employee.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSignInData_signIn_user', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSignInData_signIn_user_employee
    extends GSignInData_signIn_user_employee {
  @override
  final String G__typename;
  @override
  final GSignInData_signIn_user_employee_personalData personalData;

  factory _$GSignInData_signIn_user_employee(
          [void Function(GSignInData_signIn_user_employeeBuilder)? updates]) =>
      (new GSignInData_signIn_user_employeeBuilder()..update(updates))._build();

  _$GSignInData_signIn_user_employee._(
      {required this.G__typename, required this.personalData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSignInData_signIn_user_employee', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        personalData, r'GSignInData_signIn_user_employee', 'personalData');
  }

  @override
  GSignInData_signIn_user_employee rebuild(
          void Function(GSignInData_signIn_user_employeeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSignInData_signIn_user_employeeBuilder toBuilder() =>
      new GSignInData_signIn_user_employeeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSignInData_signIn_user_employee &&
        G__typename == other.G__typename &&
        personalData == other.personalData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, personalData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSignInData_signIn_user_employee')
          ..add('G__typename', G__typename)
          ..add('personalData', personalData))
        .toString();
  }
}

class GSignInData_signIn_user_employeeBuilder
    implements
        Builder<GSignInData_signIn_user_employee,
            GSignInData_signIn_user_employeeBuilder> {
  _$GSignInData_signIn_user_employee? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSignInData_signIn_user_employee_personalDataBuilder? _personalData;
  GSignInData_signIn_user_employee_personalDataBuilder get personalData =>
      _$this._personalData ??=
          new GSignInData_signIn_user_employee_personalDataBuilder();
  set personalData(
          GSignInData_signIn_user_employee_personalDataBuilder? personalData) =>
      _$this._personalData = personalData;

  GSignInData_signIn_user_employeeBuilder() {
    GSignInData_signIn_user_employee._initializeBuilder(this);
  }

  GSignInData_signIn_user_employeeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _personalData = $v.personalData.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSignInData_signIn_user_employee other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSignInData_signIn_user_employee;
  }

  @override
  void update(void Function(GSignInData_signIn_user_employeeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSignInData_signIn_user_employee build() => _build();

  _$GSignInData_signIn_user_employee _build() {
    _$GSignInData_signIn_user_employee _$result;
    try {
      _$result = _$v ??
          new _$GSignInData_signIn_user_employee._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GSignInData_signIn_user_employee', 'G__typename'),
              personalData: personalData.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'personalData';
        personalData.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSignInData_signIn_user_employee', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSignInData_signIn_user_employee_personalData
    extends GSignInData_signIn_user_employee_personalData {
  @override
  final String G__typename;
  @override
  final String fullName;

  factory _$GSignInData_signIn_user_employee_personalData(
          [void Function(GSignInData_signIn_user_employee_personalDataBuilder)?
              updates]) =>
      (new GSignInData_signIn_user_employee_personalDataBuilder()
            ..update(updates))
          ._build();

  _$GSignInData_signIn_user_employee_personalData._(
      {required this.G__typename, required this.fullName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GSignInData_signIn_user_employee_personalData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        fullName, r'GSignInData_signIn_user_employee_personalData', 'fullName');
  }

  @override
  GSignInData_signIn_user_employee_personalData rebuild(
          void Function(GSignInData_signIn_user_employee_personalDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSignInData_signIn_user_employee_personalDataBuilder toBuilder() =>
      new GSignInData_signIn_user_employee_personalDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSignInData_signIn_user_employee_personalData &&
        G__typename == other.G__typename &&
        fullName == other.fullName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GSignInData_signIn_user_employee_personalData')
          ..add('G__typename', G__typename)
          ..add('fullName', fullName))
        .toString();
  }
}

class GSignInData_signIn_user_employee_personalDataBuilder
    implements
        Builder<GSignInData_signIn_user_employee_personalData,
            GSignInData_signIn_user_employee_personalDataBuilder> {
  _$GSignInData_signIn_user_employee_personalData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  GSignInData_signIn_user_employee_personalDataBuilder() {
    GSignInData_signIn_user_employee_personalData._initializeBuilder(this);
  }

  GSignInData_signIn_user_employee_personalDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _fullName = $v.fullName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSignInData_signIn_user_employee_personalData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSignInData_signIn_user_employee_personalData;
  }

  @override
  void update(
      void Function(GSignInData_signIn_user_employee_personalDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSignInData_signIn_user_employee_personalData build() => _build();

  _$GSignInData_signIn_user_employee_personalData _build() {
    final _$result = _$v ??
        new _$GSignInData_signIn_user_employee_personalData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GSignInData_signIn_user_employee_personalData',
                'G__typename'),
            fullName: BuiltValueNullFieldError.checkNotNull(fullName,
                r'GSignInData_signIn_user_employee_personalData', 'fullName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
