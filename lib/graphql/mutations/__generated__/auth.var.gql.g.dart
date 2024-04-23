// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GSignUpVars> _$gSignUpVarsSerializer = new _$GSignUpVarsSerializer();
Serializer<GSignInVars> _$gSignInVarsSerializer = new _$GSignInVarsSerializer();

class _$GSignUpVarsSerializer implements StructuredSerializer<GSignUpVars> {
  @override
  final Iterable<Type> types = const [GSignUpVars, _$GSignUpVars];
  @override
  final String wireName = 'GSignUpVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSignUpVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i1.GUserCreateInput)),
    ];

    return result;
  }

  @override
  GSignUpVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSignUpVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GUserCreateInput))!
              as _i1.GUserCreateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GSignInVarsSerializer implements StructuredSerializer<GSignInVars> {
  @override
  final Iterable<Type> types = const [GSignInVars, _$GSignInVars];
  @override
  final String wireName = 'GSignInVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSignInVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i1.GSignInInput)),
    ];

    return result;
  }

  @override
  GSignInVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSignInVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GSignInInput))!
              as _i1.GSignInInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GSignUpVars extends GSignUpVars {
  @override
  final _i1.GUserCreateInput input;

  factory _$GSignUpVars([void Function(GSignUpVarsBuilder)? updates]) =>
      (new GSignUpVarsBuilder()..update(updates))._build();

  _$GSignUpVars._({required this.input}) : super._() {
    BuiltValueNullFieldError.checkNotNull(input, r'GSignUpVars', 'input');
  }

  @override
  GSignUpVars rebuild(void Function(GSignUpVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSignUpVarsBuilder toBuilder() => new GSignUpVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSignUpVars && input == other.input;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, input.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSignUpVars')..add('input', input))
        .toString();
  }
}

class GSignUpVarsBuilder implements Builder<GSignUpVars, GSignUpVarsBuilder> {
  _$GSignUpVars? _$v;

  _i1.GUserCreateInputBuilder? _input;
  _i1.GUserCreateInputBuilder get input =>
      _$this._input ??= new _i1.GUserCreateInputBuilder();
  set input(_i1.GUserCreateInputBuilder? input) => _$this._input = input;

  GSignUpVarsBuilder();

  GSignUpVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSignUpVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSignUpVars;
  }

  @override
  void update(void Function(GSignUpVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSignUpVars build() => _build();

  _$GSignUpVars _build() {
    _$GSignUpVars _$result;
    try {
      _$result = _$v ?? new _$GSignUpVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSignUpVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSignInVars extends GSignInVars {
  @override
  final _i1.GSignInInput input;

  factory _$GSignInVars([void Function(GSignInVarsBuilder)? updates]) =>
      (new GSignInVarsBuilder()..update(updates))._build();

  _$GSignInVars._({required this.input}) : super._() {
    BuiltValueNullFieldError.checkNotNull(input, r'GSignInVars', 'input');
  }

  @override
  GSignInVars rebuild(void Function(GSignInVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSignInVarsBuilder toBuilder() => new GSignInVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSignInVars && input == other.input;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, input.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSignInVars')..add('input', input))
        .toString();
  }
}

class GSignInVarsBuilder implements Builder<GSignInVars, GSignInVarsBuilder> {
  _$GSignInVars? _$v;

  _i1.GSignInInputBuilder? _input;
  _i1.GSignInInputBuilder get input =>
      _$this._input ??= new _i1.GSignInInputBuilder();
  set input(_i1.GSignInInputBuilder? input) => _$this._input = input;

  GSignInVarsBuilder();

  GSignInVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSignInVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSignInVars;
  }

  @override
  void update(void Function(GSignInVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSignInVars build() => _build();

  _$GSignInVars _build() {
    _$GSignInVars _$result;
    try {
      _$result = _$v ?? new _$GSignInVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSignInVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
