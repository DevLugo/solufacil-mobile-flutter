// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetLoanTypesData> _$gGetLoanTypesDataSerializer =
    new _$GGetLoanTypesDataSerializer();
Serializer<GGetLoanTypesData_getLoanTypes>
    _$gGetLoanTypesDataGetLoanTypesSerializer =
    new _$GGetLoanTypesData_getLoanTypesSerializer();

class _$GGetLoanTypesDataSerializer
    implements StructuredSerializer<GGetLoanTypesData> {
  @override
  final Iterable<Type> types = const [GGetLoanTypesData, _$GGetLoanTypesData];
  @override
  final String wireName = 'GGetLoanTypesData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetLoanTypesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getLoanTypes',
      serializers.serialize(object.getLoanTypes,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GGetLoanTypesData_getLoanTypes)])),
    ];

    return result;
  }

  @override
  GGetLoanTypesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetLoanTypesDataBuilder();

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
        case 'getLoanTypes':
          result.getLoanTypes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetLoanTypesData_getLoanTypes)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetLoanTypesData_getLoanTypesSerializer
    implements StructuredSerializer<GGetLoanTypesData_getLoanTypes> {
  @override
  final Iterable<Type> types = const [
    GGetLoanTypesData_getLoanTypes,
    _$GGetLoanTypesData_getLoanTypes
  ];
  @override
  final String wireName = 'GGetLoanTypesData_getLoanTypes';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetLoanTypesData_getLoanTypes object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'weekDuration',
      serializers.serialize(object.weekDuration,
          specifiedType: const FullType(int)),
      'rate',
      serializers.serialize(object.rate, specifiedType: const FullType(double)),
      'overdueRate',
      serializers.serialize(object.overdueRate,
          specifiedType: const FullType(double)),
      'initialAmount',
      serializers.serialize(object.initialAmount,
          specifiedType: const FullType(double)),
      'maximunAmount',
      serializers.serialize(object.maximunAmount,
          specifiedType: const FullType(double)),
      'amountToIncrease',
      serializers.serialize(object.amountToIncrease,
          specifiedType: const FullType(double)),
      'increaseEveryNLoans',
      serializers.serialize(object.increaseEveryNLoans,
          specifiedType: const FullType(int)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(_i2.GDateTime)),
      'updatedAt',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(_i2.GDateTime)),
    ];
    Object? value;
    value = object.availableFor;
    if (value != null) {
      result
        ..add('availableFor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(_i2.GEmployeesTypes)])));
    }
    return result;
  }

  @override
  GGetLoanTypesData_getLoanTypes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetLoanTypesData_getLoanTypesBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'weekDuration':
          result.weekDuration = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'rate':
          result.rate = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'overdueRate':
          result.overdueRate = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'initialAmount':
          result.initialAmount = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'maximunAmount':
          result.maximunAmount = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'amountToIncrease':
          result.amountToIncrease = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'increaseEveryNLoans':
          result.increaseEveryNLoans = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'availableFor':
          result.availableFor.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(_i2.GEmployeesTypes)]))!
              as BuiltList<Object?>);
          break;
        case 'createdAt':
          result.createdAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
          break;
        case 'updatedAt':
          result.updatedAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetLoanTypesData extends GGetLoanTypesData {
  @override
  final String G__typename;
  @override
  final BuiltList<GGetLoanTypesData_getLoanTypes> getLoanTypes;

  factory _$GGetLoanTypesData(
          [void Function(GGetLoanTypesDataBuilder)? updates]) =>
      (new GGetLoanTypesDataBuilder()..update(updates))._build();

  _$GGetLoanTypesData._({required this.G__typename, required this.getLoanTypes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetLoanTypesData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        getLoanTypes, r'GGetLoanTypesData', 'getLoanTypes');
  }

  @override
  GGetLoanTypesData rebuild(void Function(GGetLoanTypesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetLoanTypesDataBuilder toBuilder() =>
      new GGetLoanTypesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetLoanTypesData &&
        G__typename == other.G__typename &&
        getLoanTypes == other.getLoanTypes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getLoanTypes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetLoanTypesData')
          ..add('G__typename', G__typename)
          ..add('getLoanTypes', getLoanTypes))
        .toString();
  }
}

class GGetLoanTypesDataBuilder
    implements Builder<GGetLoanTypesData, GGetLoanTypesDataBuilder> {
  _$GGetLoanTypesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGetLoanTypesData_getLoanTypes>? _getLoanTypes;
  ListBuilder<GGetLoanTypesData_getLoanTypes> get getLoanTypes =>
      _$this._getLoanTypes ??=
          new ListBuilder<GGetLoanTypesData_getLoanTypes>();
  set getLoanTypes(ListBuilder<GGetLoanTypesData_getLoanTypes>? getLoanTypes) =>
      _$this._getLoanTypes = getLoanTypes;

  GGetLoanTypesDataBuilder() {
    GGetLoanTypesData._initializeBuilder(this);
  }

  GGetLoanTypesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getLoanTypes = $v.getLoanTypes.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetLoanTypesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetLoanTypesData;
  }

  @override
  void update(void Function(GGetLoanTypesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetLoanTypesData build() => _build();

  _$GGetLoanTypesData _build() {
    _$GGetLoanTypesData _$result;
    try {
      _$result = _$v ??
          new _$GGetLoanTypesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GGetLoanTypesData', 'G__typename'),
              getLoanTypes: getLoanTypes.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getLoanTypes';
        getLoanTypes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetLoanTypesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetLoanTypesData_getLoanTypes extends GGetLoanTypesData_getLoanTypes {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String id;
  @override
  final int weekDuration;
  @override
  final double rate;
  @override
  final double overdueRate;
  @override
  final double initialAmount;
  @override
  final double maximunAmount;
  @override
  final double amountToIncrease;
  @override
  final int increaseEveryNLoans;
  @override
  final BuiltList<_i2.GEmployeesTypes>? availableFor;
  @override
  final _i2.GDateTime createdAt;
  @override
  final _i2.GDateTime updatedAt;

  factory _$GGetLoanTypesData_getLoanTypes(
          [void Function(GGetLoanTypesData_getLoanTypesBuilder)? updates]) =>
      (new GGetLoanTypesData_getLoanTypesBuilder()..update(updates))._build();

  _$GGetLoanTypesData_getLoanTypes._(
      {required this.G__typename,
      required this.name,
      required this.id,
      required this.weekDuration,
      required this.rate,
      required this.overdueRate,
      required this.initialAmount,
      required this.maximunAmount,
      required this.amountToIncrease,
      required this.increaseEveryNLoans,
      this.availableFor,
      required this.createdAt,
      required this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetLoanTypesData_getLoanTypes', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GGetLoanTypesData_getLoanTypes', 'name');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GGetLoanTypesData_getLoanTypes', 'id');
    BuiltValueNullFieldError.checkNotNull(
        weekDuration, r'GGetLoanTypesData_getLoanTypes', 'weekDuration');
    BuiltValueNullFieldError.checkNotNull(
        rate, r'GGetLoanTypesData_getLoanTypes', 'rate');
    BuiltValueNullFieldError.checkNotNull(
        overdueRate, r'GGetLoanTypesData_getLoanTypes', 'overdueRate');
    BuiltValueNullFieldError.checkNotNull(
        initialAmount, r'GGetLoanTypesData_getLoanTypes', 'initialAmount');
    BuiltValueNullFieldError.checkNotNull(
        maximunAmount, r'GGetLoanTypesData_getLoanTypes', 'maximunAmount');
    BuiltValueNullFieldError.checkNotNull(amountToIncrease,
        r'GGetLoanTypesData_getLoanTypes', 'amountToIncrease');
    BuiltValueNullFieldError.checkNotNull(increaseEveryNLoans,
        r'GGetLoanTypesData_getLoanTypes', 'increaseEveryNLoans');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GGetLoanTypesData_getLoanTypes', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, r'GGetLoanTypesData_getLoanTypes', 'updatedAt');
  }

  @override
  GGetLoanTypesData_getLoanTypes rebuild(
          void Function(GGetLoanTypesData_getLoanTypesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetLoanTypesData_getLoanTypesBuilder toBuilder() =>
      new GGetLoanTypesData_getLoanTypesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetLoanTypesData_getLoanTypes &&
        G__typename == other.G__typename &&
        name == other.name &&
        id == other.id &&
        weekDuration == other.weekDuration &&
        rate == other.rate &&
        overdueRate == other.overdueRate &&
        initialAmount == other.initialAmount &&
        maximunAmount == other.maximunAmount &&
        amountToIncrease == other.amountToIncrease &&
        increaseEveryNLoans == other.increaseEveryNLoans &&
        availableFor == other.availableFor &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, weekDuration.hashCode);
    _$hash = $jc(_$hash, rate.hashCode);
    _$hash = $jc(_$hash, overdueRate.hashCode);
    _$hash = $jc(_$hash, initialAmount.hashCode);
    _$hash = $jc(_$hash, maximunAmount.hashCode);
    _$hash = $jc(_$hash, amountToIncrease.hashCode);
    _$hash = $jc(_$hash, increaseEveryNLoans.hashCode);
    _$hash = $jc(_$hash, availableFor.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetLoanTypesData_getLoanTypes')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('id', id)
          ..add('weekDuration', weekDuration)
          ..add('rate', rate)
          ..add('overdueRate', overdueRate)
          ..add('initialAmount', initialAmount)
          ..add('maximunAmount', maximunAmount)
          ..add('amountToIncrease', amountToIncrease)
          ..add('increaseEveryNLoans', increaseEveryNLoans)
          ..add('availableFor', availableFor)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class GGetLoanTypesData_getLoanTypesBuilder
    implements
        Builder<GGetLoanTypesData_getLoanTypes,
            GGetLoanTypesData_getLoanTypesBuilder> {
  _$GGetLoanTypesData_getLoanTypes? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _weekDuration;
  int? get weekDuration => _$this._weekDuration;
  set weekDuration(int? weekDuration) => _$this._weekDuration = weekDuration;

  double? _rate;
  double? get rate => _$this._rate;
  set rate(double? rate) => _$this._rate = rate;

  double? _overdueRate;
  double? get overdueRate => _$this._overdueRate;
  set overdueRate(double? overdueRate) => _$this._overdueRate = overdueRate;

  double? _initialAmount;
  double? get initialAmount => _$this._initialAmount;
  set initialAmount(double? initialAmount) =>
      _$this._initialAmount = initialAmount;

  double? _maximunAmount;
  double? get maximunAmount => _$this._maximunAmount;
  set maximunAmount(double? maximunAmount) =>
      _$this._maximunAmount = maximunAmount;

  double? _amountToIncrease;
  double? get amountToIncrease => _$this._amountToIncrease;
  set amountToIncrease(double? amountToIncrease) =>
      _$this._amountToIncrease = amountToIncrease;

  int? _increaseEveryNLoans;
  int? get increaseEveryNLoans => _$this._increaseEveryNLoans;
  set increaseEveryNLoans(int? increaseEveryNLoans) =>
      _$this._increaseEveryNLoans = increaseEveryNLoans;

  ListBuilder<_i2.GEmployeesTypes>? _availableFor;
  ListBuilder<_i2.GEmployeesTypes> get availableFor =>
      _$this._availableFor ??= new ListBuilder<_i2.GEmployeesTypes>();
  set availableFor(ListBuilder<_i2.GEmployeesTypes>? availableFor) =>
      _$this._availableFor = availableFor;

  _i2.GDateTimeBuilder? _createdAt;
  _i2.GDateTimeBuilder get createdAt =>
      _$this._createdAt ??= new _i2.GDateTimeBuilder();
  set createdAt(_i2.GDateTimeBuilder? createdAt) =>
      _$this._createdAt = createdAt;

  _i2.GDateTimeBuilder? _updatedAt;
  _i2.GDateTimeBuilder get updatedAt =>
      _$this._updatedAt ??= new _i2.GDateTimeBuilder();
  set updatedAt(_i2.GDateTimeBuilder? updatedAt) =>
      _$this._updatedAt = updatedAt;

  GGetLoanTypesData_getLoanTypesBuilder() {
    GGetLoanTypesData_getLoanTypes._initializeBuilder(this);
  }

  GGetLoanTypesData_getLoanTypesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _id = $v.id;
      _weekDuration = $v.weekDuration;
      _rate = $v.rate;
      _overdueRate = $v.overdueRate;
      _initialAmount = $v.initialAmount;
      _maximunAmount = $v.maximunAmount;
      _amountToIncrease = $v.amountToIncrease;
      _increaseEveryNLoans = $v.increaseEveryNLoans;
      _availableFor = $v.availableFor?.toBuilder();
      _createdAt = $v.createdAt.toBuilder();
      _updatedAt = $v.updatedAt.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetLoanTypesData_getLoanTypes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetLoanTypesData_getLoanTypes;
  }

  @override
  void update(void Function(GGetLoanTypesData_getLoanTypesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetLoanTypesData_getLoanTypes build() => _build();

  _$GGetLoanTypesData_getLoanTypes _build() {
    _$GGetLoanTypesData_getLoanTypes _$result;
    try {
      _$result = _$v ??
          new _$GGetLoanTypesData_getLoanTypes._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GGetLoanTypesData_getLoanTypes', 'G__typename'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GGetLoanTypesData_getLoanTypes', 'name'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GGetLoanTypesData_getLoanTypes', 'id'),
              weekDuration: BuiltValueNullFieldError.checkNotNull(
                  weekDuration, r'GGetLoanTypesData_getLoanTypes', 'weekDuration'),
              rate: BuiltValueNullFieldError.checkNotNull(
                  rate, r'GGetLoanTypesData_getLoanTypes', 'rate'),
              overdueRate: BuiltValueNullFieldError.checkNotNull(
                  overdueRate, r'GGetLoanTypesData_getLoanTypes', 'overdueRate'),
              initialAmount: BuiltValueNullFieldError.checkNotNull(
                  initialAmount, r'GGetLoanTypesData_getLoanTypes', 'initialAmount'),
              maximunAmount:
                  BuiltValueNullFieldError.checkNotNull(maximunAmount, r'GGetLoanTypesData_getLoanTypes', 'maximunAmount'),
              amountToIncrease: BuiltValueNullFieldError.checkNotNull(amountToIncrease, r'GGetLoanTypesData_getLoanTypes', 'amountToIncrease'),
              increaseEveryNLoans: BuiltValueNullFieldError.checkNotNull(increaseEveryNLoans, r'GGetLoanTypesData_getLoanTypes', 'increaseEveryNLoans'),
              availableFor: _availableFor?.build(),
              createdAt: createdAt.build(),
              updatedAt: updatedAt.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'availableFor';
        _availableFor?.build();
        _$failedField = 'createdAt';
        createdAt.build();
        _$failedField = 'updatedAt';
        updatedAt.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetLoanTypesData_getLoanTypes', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
