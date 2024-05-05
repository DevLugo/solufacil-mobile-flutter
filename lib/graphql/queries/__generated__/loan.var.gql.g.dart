// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetLoanTypesVars> _$gGetLoanTypesVarsSerializer =
    new _$GGetLoanTypesVarsSerializer();

class _$GGetLoanTypesVarsSerializer
    implements StructuredSerializer<GGetLoanTypesVars> {
  @override
  final Iterable<Type> types = const [GGetLoanTypesVars, _$GGetLoanTypesVars];
  @override
  final String wireName = 'GGetLoanTypesVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetLoanTypesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.where;
    if (value != null) {
      result
        ..add('where')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GLoanTypeWhereInput)));
    }
    return result;
  }

  @override
  GGetLoanTypesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetLoanTypesVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'where':
          result.where.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GLoanTypeWhereInput))!
              as _i1.GLoanTypeWhereInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetLoanTypesVars extends GGetLoanTypesVars {
  @override
  final _i1.GLoanTypeWhereInput? where;

  factory _$GGetLoanTypesVars(
          [void Function(GGetLoanTypesVarsBuilder)? updates]) =>
      (new GGetLoanTypesVarsBuilder()..update(updates))._build();

  _$GGetLoanTypesVars._({this.where}) : super._();

  @override
  GGetLoanTypesVars rebuild(void Function(GGetLoanTypesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetLoanTypesVarsBuilder toBuilder() =>
      new GGetLoanTypesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetLoanTypesVars && where == other.where;
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
    return (newBuiltValueToStringHelper(r'GGetLoanTypesVars')
          ..add('where', where))
        .toString();
  }
}

class GGetLoanTypesVarsBuilder
    implements Builder<GGetLoanTypesVars, GGetLoanTypesVarsBuilder> {
  _$GGetLoanTypesVars? _$v;

  _i1.GLoanTypeWhereInputBuilder? _where;
  _i1.GLoanTypeWhereInputBuilder get where =>
      _$this._where ??= new _i1.GLoanTypeWhereInputBuilder();
  set where(_i1.GLoanTypeWhereInputBuilder? where) => _$this._where = where;

  GGetLoanTypesVarsBuilder();

  GGetLoanTypesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _where = $v.where?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetLoanTypesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetLoanTypesVars;
  }

  @override
  void update(void Function(GGetLoanTypesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetLoanTypesVars build() => _build();

  _$GGetLoanTypesVars _build() {
    _$GGetLoanTypesVars _$result;
    try {
      _$result = _$v ?? new _$GGetLoanTypesVars._(where: _where?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'where';
        _where?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetLoanTypesVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
