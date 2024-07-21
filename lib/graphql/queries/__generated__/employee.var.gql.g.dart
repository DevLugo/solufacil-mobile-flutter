// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetEmployeeVars> _$ggetEmployeeVarsSerializer =
    new _$GgetEmployeeVarsSerializer();

class _$GgetEmployeeVarsSerializer
    implements StructuredSerializer<GgetEmployeeVars> {
  @override
  final Iterable<Type> types = const [GgetEmployeeVars, _$GgetEmployeeVars];
  @override
  final String wireName = 'GgetEmployeeVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GgetEmployeeVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'where',
      serializers.serialize(object.where,
          specifiedType: const FullType(_i1.GEmployeeWhereUniqueInput)),
    ];

    return result;
  }

  @override
  GgetEmployeeVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetEmployeeVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'where':
          result.where.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GEmployeeWhereUniqueInput))!
              as _i1.GEmployeeWhereUniqueInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetEmployeeVars extends GgetEmployeeVars {
  @override
  final _i1.GEmployeeWhereUniqueInput where;

  factory _$GgetEmployeeVars(
          [void Function(GgetEmployeeVarsBuilder)? updates]) =>
      (new GgetEmployeeVarsBuilder()..update(updates))._build();

  _$GgetEmployeeVars._({required this.where}) : super._() {
    BuiltValueNullFieldError.checkNotNull(where, r'GgetEmployeeVars', 'where');
  }

  @override
  GgetEmployeeVars rebuild(void Function(GgetEmployeeVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetEmployeeVarsBuilder toBuilder() =>
      new GgetEmployeeVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetEmployeeVars && where == other.where;
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
    return (newBuiltValueToStringHelper(r'GgetEmployeeVars')
          ..add('where', where))
        .toString();
  }
}

class GgetEmployeeVarsBuilder
    implements Builder<GgetEmployeeVars, GgetEmployeeVarsBuilder> {
  _$GgetEmployeeVars? _$v;

  _i1.GEmployeeWhereUniqueInputBuilder? _where;
  _i1.GEmployeeWhereUniqueInputBuilder get where =>
      _$this._where ??= new _i1.GEmployeeWhereUniqueInputBuilder();
  set where(_i1.GEmployeeWhereUniqueInputBuilder? where) =>
      _$this._where = where;

  GgetEmployeeVarsBuilder();

  GgetEmployeeVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _where = $v.where.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetEmployeeVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetEmployeeVars;
  }

  @override
  void update(void Function(GgetEmployeeVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetEmployeeVars build() => _build();

  _$GgetEmployeeVars _build() {
    _$GgetEmployeeVars _$result;
    try {
      _$result = _$v ?? new _$GgetEmployeeVars._(where: where.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'where';
        where.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetEmployeeVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
