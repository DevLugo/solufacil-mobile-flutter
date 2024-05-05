// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateLoanVars> _$gCreateLoanVarsSerializer =
    new _$GCreateLoanVarsSerializer();

class _$GCreateLoanVarsSerializer
    implements StructuredSerializer<GCreateLoanVars> {
  @override
  final Iterable<Type> types = const [GCreateLoanVars, _$GCreateLoanVars];
  @override
  final String wireName = 'GCreateLoanVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreateLoanVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i1.GLoanCreateInput)),
    ];

    return result;
  }

  @override
  GCreateLoanVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateLoanVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GLoanCreateInput))!
              as _i1.GLoanCreateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateLoanVars extends GCreateLoanVars {
  @override
  final _i1.GLoanCreateInput input;

  factory _$GCreateLoanVars([void Function(GCreateLoanVarsBuilder)? updates]) =>
      (new GCreateLoanVarsBuilder()..update(updates))._build();

  _$GCreateLoanVars._({required this.input}) : super._() {
    BuiltValueNullFieldError.checkNotNull(input, r'GCreateLoanVars', 'input');
  }

  @override
  GCreateLoanVars rebuild(void Function(GCreateLoanVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateLoanVarsBuilder toBuilder() =>
      new GCreateLoanVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateLoanVars && input == other.input;
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
    return (newBuiltValueToStringHelper(r'GCreateLoanVars')
          ..add('input', input))
        .toString();
  }
}

class GCreateLoanVarsBuilder
    implements Builder<GCreateLoanVars, GCreateLoanVarsBuilder> {
  _$GCreateLoanVars? _$v;

  _i1.GLoanCreateInputBuilder? _input;
  _i1.GLoanCreateInputBuilder get input =>
      _$this._input ??= new _i1.GLoanCreateInputBuilder();
  set input(_i1.GLoanCreateInputBuilder? input) => _$this._input = input;

  GCreateLoanVarsBuilder();

  GCreateLoanVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateLoanVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateLoanVars;
  }

  @override
  void update(void Function(GCreateLoanVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateLoanVars build() => _build();

  _$GCreateLoanVars _build() {
    _$GCreateLoanVars _$result;
    try {
      _$result = _$v ?? new _$GCreateLoanVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateLoanVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
