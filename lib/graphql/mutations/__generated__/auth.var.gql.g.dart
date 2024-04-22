// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GsignUpVars> _$gsignUpVarsSerializer = new _$GsignUpVarsSerializer();

class _$GsignUpVarsSerializer implements StructuredSerializer<GsignUpVars> {
  @override
  final Iterable<Type> types = const [GsignUpVars, _$GsignUpVars];
  @override
  final String wireName = 'GsignUpVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GsignUpVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i1.GUserCreateInput)),
    ];

    return result;
  }

  @override
  GsignUpVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GsignUpVarsBuilder();

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

class _$GsignUpVars extends GsignUpVars {
  @override
  final _i1.GUserCreateInput input;

  factory _$GsignUpVars([void Function(GsignUpVarsBuilder)? updates]) =>
      (new GsignUpVarsBuilder()..update(updates))._build();

  _$GsignUpVars._({required this.input}) : super._() {
    BuiltValueNullFieldError.checkNotNull(input, r'GsignUpVars', 'input');
  }

  @override
  GsignUpVars rebuild(void Function(GsignUpVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GsignUpVarsBuilder toBuilder() => new GsignUpVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GsignUpVars && input == other.input;
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
    return (newBuiltValueToStringHelper(r'GsignUpVars')..add('input', input))
        .toString();
  }
}

class GsignUpVarsBuilder implements Builder<GsignUpVars, GsignUpVarsBuilder> {
  _$GsignUpVars? _$v;

  _i1.GUserCreateInputBuilder? _input;
  _i1.GUserCreateInputBuilder get input =>
      _$this._input ??= new _i1.GUserCreateInputBuilder();
  set input(_i1.GUserCreateInputBuilder? input) => _$this._input = input;

  GsignUpVarsBuilder();

  GsignUpVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GsignUpVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GsignUpVars;
  }

  @override
  void update(void Function(GsignUpVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GsignUpVars build() => _build();

  _$GsignUpVars _build() {
    _$GsignUpVars _$result;
    try {
      _$result = _$v ?? new _$GsignUpVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GsignUpVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
