// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GpayPaymentVars> _$gpayPaymentVarsSerializer =
    new _$GpayPaymentVarsSerializer();

class _$GpayPaymentVarsSerializer
    implements StructuredSerializer<GpayPaymentVars> {
  @override
  final Iterable<Type> types = const [GpayPaymentVars, _$GpayPaymentVars];
  @override
  final String wireName = 'GpayPaymentVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GpayPaymentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i1.GPayLoanPaymentInput)),
    ];

    return result;
  }

  @override
  GpayPaymentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GpayPaymentVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GPayLoanPaymentInput))!
              as _i1.GPayLoanPaymentInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GpayPaymentVars extends GpayPaymentVars {
  @override
  final _i1.GPayLoanPaymentInput input;

  factory _$GpayPaymentVars([void Function(GpayPaymentVarsBuilder)? updates]) =>
      (new GpayPaymentVarsBuilder()..update(updates))._build();

  _$GpayPaymentVars._({required this.input}) : super._() {
    BuiltValueNullFieldError.checkNotNull(input, r'GpayPaymentVars', 'input');
  }

  @override
  GpayPaymentVars rebuild(void Function(GpayPaymentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GpayPaymentVarsBuilder toBuilder() =>
      new GpayPaymentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GpayPaymentVars && input == other.input;
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
    return (newBuiltValueToStringHelper(r'GpayPaymentVars')
          ..add('input', input))
        .toString();
  }
}

class GpayPaymentVarsBuilder
    implements Builder<GpayPaymentVars, GpayPaymentVarsBuilder> {
  _$GpayPaymentVars? _$v;

  _i1.GPayLoanPaymentInputBuilder? _input;
  _i1.GPayLoanPaymentInputBuilder get input =>
      _$this._input ??= new _i1.GPayLoanPaymentInputBuilder();
  set input(_i1.GPayLoanPaymentInputBuilder? input) => _$this._input = input;

  GpayPaymentVarsBuilder();

  GpayPaymentVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GpayPaymentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GpayPaymentVars;
  }

  @override
  void update(void Function(GpayPaymentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GpayPaymentVars build() => _build();

  _$GpayPaymentVars _build() {
    _$GpayPaymentVars _$result;
    try {
      _$result = _$v ?? new _$GpayPaymentVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GpayPaymentVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
