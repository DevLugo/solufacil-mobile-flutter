// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locality.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GLocationsVars> _$gLocationsVarsSerializer =
    new _$GLocationsVarsSerializer();

class _$GLocationsVarsSerializer
    implements StructuredSerializer<GLocationsVars> {
  @override
  final Iterable<Type> types = const [GLocationsVars, _$GLocationsVars];
  @override
  final String wireName = 'GLocationsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GLocationsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'where',
      serializers.serialize(object.where,
          specifiedType: const FullType(_i1.GLocationWhereInput)),
    ];

    return result;
  }

  @override
  GLocationsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLocationsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'where':
          result.where.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GLocationWhereInput))!
              as _i1.GLocationWhereInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GLocationsVars extends GLocationsVars {
  @override
  final _i1.GLocationWhereInput where;

  factory _$GLocationsVars([void Function(GLocationsVarsBuilder)? updates]) =>
      (new GLocationsVarsBuilder()..update(updates))._build();

  _$GLocationsVars._({required this.where}) : super._() {
    BuiltValueNullFieldError.checkNotNull(where, r'GLocationsVars', 'where');
  }

  @override
  GLocationsVars rebuild(void Function(GLocationsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLocationsVarsBuilder toBuilder() =>
      new GLocationsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLocationsVars && where == other.where;
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
    return (newBuiltValueToStringHelper(r'GLocationsVars')..add('where', where))
        .toString();
  }
}

class GLocationsVarsBuilder
    implements Builder<GLocationsVars, GLocationsVarsBuilder> {
  _$GLocationsVars? _$v;

  _i1.GLocationWhereInputBuilder? _where;
  _i1.GLocationWhereInputBuilder get where =>
      _$this._where ??= new _i1.GLocationWhereInputBuilder();
  set where(_i1.GLocationWhereInputBuilder? where) => _$this._where = where;

  GLocationsVarsBuilder();

  GLocationsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _where = $v.where.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLocationsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLocationsVars;
  }

  @override
  void update(void Function(GLocationsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLocationsVars build() => _build();

  _$GLocationsVars _build() {
    _$GLocationsVars _$result;
    try {
      _$result = _$v ?? new _$GLocationsVars._(where: where.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'where';
        where.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GLocationsVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
