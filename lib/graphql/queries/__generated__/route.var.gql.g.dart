// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetRoutesVars> _$gGetRoutesVarsSerializer =
    new _$GGetRoutesVarsSerializer();

class _$GGetRoutesVarsSerializer
    implements StructuredSerializer<GGetRoutesVars> {
  @override
  final Iterable<Type> types = const [GGetRoutesVars, _$GGetRoutesVars];
  @override
  final String wireName = 'GGetRoutesVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetRoutesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'where',
      serializers.serialize(object.where,
          specifiedType: const FullType(_i1.GRouteWhereInput)),
    ];

    return result;
  }

  @override
  GGetRoutesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetRoutesVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'where':
          result.where.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GRouteWhereInput))!
              as _i1.GRouteWhereInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetRoutesVars extends GGetRoutesVars {
  @override
  final _i1.GRouteWhereInput where;

  factory _$GGetRoutesVars([void Function(GGetRoutesVarsBuilder)? updates]) =>
      (new GGetRoutesVarsBuilder()..update(updates))._build();

  _$GGetRoutesVars._({required this.where}) : super._() {
    BuiltValueNullFieldError.checkNotNull(where, r'GGetRoutesVars', 'where');
  }

  @override
  GGetRoutesVars rebuild(void Function(GGetRoutesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetRoutesVarsBuilder toBuilder() =>
      new GGetRoutesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetRoutesVars && where == other.where;
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
    return (newBuiltValueToStringHelper(r'GGetRoutesVars')..add('where', where))
        .toString();
  }
}

class GGetRoutesVarsBuilder
    implements Builder<GGetRoutesVars, GGetRoutesVarsBuilder> {
  _$GGetRoutesVars? _$v;

  _i1.GRouteWhereInputBuilder? _where;
  _i1.GRouteWhereInputBuilder get where =>
      _$this._where ??= new _i1.GRouteWhereInputBuilder();
  set where(_i1.GRouteWhereInputBuilder? where) => _$this._where = where;

  GGetRoutesVarsBuilder();

  GGetRoutesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _where = $v.where.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetRoutesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetRoutesVars;
  }

  @override
  void update(void Function(GGetRoutesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetRoutesVars build() => _build();

  _$GGetRoutesVars _build() {
    _$GGetRoutesVars _$result;
    try {
      _$result = _$v ?? new _$GGetRoutesVars._(where: where.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'where';
        where.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetRoutesVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
