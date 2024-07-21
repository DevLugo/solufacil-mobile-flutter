// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paymentSchedules.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetPaymentSchedulesVars> _$ggetPaymentSchedulesVarsSerializer =
    new _$GgetPaymentSchedulesVarsSerializer();

class _$GgetPaymentSchedulesVarsSerializer
    implements StructuredSerializer<GgetPaymentSchedulesVars> {
  @override
  final Iterable<Type> types = const [
    GgetPaymentSchedulesVars,
    _$GgetPaymentSchedulesVars
  ];
  @override
  final String wireName = 'GgetPaymentSchedulesVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetPaymentSchedulesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.where;
    if (value != null) {
      result
        ..add('where')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GPaymentScheduleWhereInput)));
    }
    return result;
  }

  @override
  GgetPaymentSchedulesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetPaymentSchedulesVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'where':
          result.where.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i1.GPaymentScheduleWhereInput))!
              as _i1.GPaymentScheduleWhereInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetPaymentSchedulesVars extends GgetPaymentSchedulesVars {
  @override
  final _i1.GPaymentScheduleWhereInput? where;

  factory _$GgetPaymentSchedulesVars(
          [void Function(GgetPaymentSchedulesVarsBuilder)? updates]) =>
      (new GgetPaymentSchedulesVarsBuilder()..update(updates))._build();

  _$GgetPaymentSchedulesVars._({this.where}) : super._();

  @override
  GgetPaymentSchedulesVars rebuild(
          void Function(GgetPaymentSchedulesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetPaymentSchedulesVarsBuilder toBuilder() =>
      new GgetPaymentSchedulesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetPaymentSchedulesVars && where == other.where;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, where.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetPaymentSchedulesVars')
          ..add('where', where))
        .toString();
  }
}

class GgetPaymentSchedulesVarsBuilder
    implements
        Builder<GgetPaymentSchedulesVars, GgetPaymentSchedulesVarsBuilder> {
  _$GgetPaymentSchedulesVars? _$v;

  _i1.GPaymentScheduleWhereInputBuilder? _where;
  _i1.GPaymentScheduleWhereInputBuilder get where =>
      _$this._where ??= new _i1.GPaymentScheduleWhereInputBuilder();
  set where(_i1.GPaymentScheduleWhereInputBuilder? where) =>
      _$this._where = where;

  GgetPaymentSchedulesVarsBuilder();

  GgetPaymentSchedulesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _where = $v.where?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetPaymentSchedulesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetPaymentSchedulesVars;
  }

  @override
  void update(void Function(GgetPaymentSchedulesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetPaymentSchedulesVars build() => _build();

  _$GgetPaymentSchedulesVars _build() {
    _$GgetPaymentSchedulesVars _$result;
    try {
      _$result =
          _$v ?? new _$GgetPaymentSchedulesVars._(where: _where?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'where';
        _where?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetPaymentSchedulesVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
