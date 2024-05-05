// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateLoanData> _$gCreateLoanDataSerializer =
    new _$GCreateLoanDataSerializer();
Serializer<GCreateLoanData_createLoan> _$gCreateLoanDataCreateLoanSerializer =
    new _$GCreateLoanData_createLoanSerializer();

class _$GCreateLoanDataSerializer
    implements StructuredSerializer<GCreateLoanData> {
  @override
  final Iterable<Type> types = const [GCreateLoanData, _$GCreateLoanData];
  @override
  final String wireName = 'GCreateLoanData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreateLoanData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'createLoan',
      serializers.serialize(object.createLoan,
          specifiedType: const FullType(GCreateLoanData_createLoan)),
    ];

    return result;
  }

  @override
  GCreateLoanData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateLoanDataBuilder();

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
        case 'createLoan':
          result.createLoan.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GCreateLoanData_createLoan))!
              as GCreateLoanData_createLoan);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateLoanData_createLoanSerializer
    implements StructuredSerializer<GCreateLoanData_createLoan> {
  @override
  final Iterable<Type> types = const [
    GCreateLoanData_createLoan,
    _$GCreateLoanData_createLoan
  ];
  @override
  final String wireName = 'GCreateLoanData_createLoan';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateLoanData_createLoan object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(_i2.GLoanState)),
      'weeklyPaymentAmount',
      serializers.serialize(object.weeklyPaymentAmount,
          specifiedType: const FullType(_i2.GDecimal)),
      'amountGived',
      serializers.serialize(object.amountGived,
          specifiedType: const FullType(_i2.GDecimal)),
      'amountToPay',
      serializers.serialize(object.amountToPay,
          specifiedType: const FullType(_i2.GDecimal)),
      'paidAmount',
      serializers.serialize(object.paidAmount,
          specifiedType: const FullType(_i2.GDecimal)),
      'pendingAmount',
      serializers.serialize(object.pendingAmount,
          specifiedType: const FullType(_i2.GDecimal)),
      'renovationProfitAmount',
      serializers.serialize(object.renovationProfitAmount,
          specifiedType: const FullType(_i2.GDecimal)),
      'renovationPendingAmount',
      serializers.serialize(object.renovationPendingAmount,
          specifiedType: const FullType(_i2.GDecimal)),
      'baseProfitAmount',
      serializers.serialize(object.baseProfitAmount,
          specifiedType: const FullType(_i2.GDecimal)),
      'totalProfitAmount',
      serializers.serialize(object.totalProfitAmount,
          specifiedType: const FullType(_i2.GDecimal)),
    ];
    Object? value;
    value = object.previousAmountGived;
    if (value != null) {
      result
        ..add('previousAmountGived')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GDecimal)));
    }
    value = object.renovatedFromId;
    if (value != null) {
      result
        ..add('renovatedFromId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GCreateLoanData_createLoan deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateLoanData_createLoanBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(_i2.GLoanState))! as _i2.GLoanState;
          break;
        case 'weeklyPaymentAmount':
          result.weeklyPaymentAmount.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDecimal))! as _i2.GDecimal);
          break;
        case 'previousAmountGived':
          result.previousAmountGived.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDecimal))! as _i2.GDecimal);
          break;
        case 'amountGived':
          result.amountGived.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDecimal))! as _i2.GDecimal);
          break;
        case 'amountToPay':
          result.amountToPay.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDecimal))! as _i2.GDecimal);
          break;
        case 'paidAmount':
          result.paidAmount.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDecimal))! as _i2.GDecimal);
          break;
        case 'pendingAmount':
          result.pendingAmount.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDecimal))! as _i2.GDecimal);
          break;
        case 'renovatedFromId':
          result.renovatedFromId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'renovationProfitAmount':
          result.renovationProfitAmount.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDecimal))! as _i2.GDecimal);
          break;
        case 'renovationPendingAmount':
          result.renovationPendingAmount.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDecimal))! as _i2.GDecimal);
          break;
        case 'baseProfitAmount':
          result.baseProfitAmount.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDecimal))! as _i2.GDecimal);
          break;
        case 'totalProfitAmount':
          result.totalProfitAmount.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDecimal))! as _i2.GDecimal);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateLoanData extends GCreateLoanData {
  @override
  final String G__typename;
  @override
  final GCreateLoanData_createLoan createLoan;

  factory _$GCreateLoanData([void Function(GCreateLoanDataBuilder)? updates]) =>
      (new GCreateLoanDataBuilder()..update(updates))._build();

  _$GCreateLoanData._({required this.G__typename, required this.createLoan})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreateLoanData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        createLoan, r'GCreateLoanData', 'createLoan');
  }

  @override
  GCreateLoanData rebuild(void Function(GCreateLoanDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateLoanDataBuilder toBuilder() =>
      new GCreateLoanDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateLoanData &&
        G__typename == other.G__typename &&
        createLoan == other.createLoan;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, createLoan.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateLoanData')
          ..add('G__typename', G__typename)
          ..add('createLoan', createLoan))
        .toString();
  }
}

class GCreateLoanDataBuilder
    implements Builder<GCreateLoanData, GCreateLoanDataBuilder> {
  _$GCreateLoanData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCreateLoanData_createLoanBuilder? _createLoan;
  GCreateLoanData_createLoanBuilder get createLoan =>
      _$this._createLoan ??= new GCreateLoanData_createLoanBuilder();
  set createLoan(GCreateLoanData_createLoanBuilder? createLoan) =>
      _$this._createLoan = createLoan;

  GCreateLoanDataBuilder() {
    GCreateLoanData._initializeBuilder(this);
  }

  GCreateLoanDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createLoan = $v.createLoan.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateLoanData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateLoanData;
  }

  @override
  void update(void Function(GCreateLoanDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateLoanData build() => _build();

  _$GCreateLoanData _build() {
    _$GCreateLoanData _$result;
    try {
      _$result = _$v ??
          new _$GCreateLoanData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GCreateLoanData', 'G__typename'),
              createLoan: createLoan.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createLoan';
        createLoan.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateLoanData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateLoanData_createLoan extends GCreateLoanData_createLoan {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final _i2.GLoanState status;
  @override
  final _i2.GDecimal weeklyPaymentAmount;
  @override
  final _i2.GDecimal? previousAmountGived;
  @override
  final _i2.GDecimal amountGived;
  @override
  final _i2.GDecimal amountToPay;
  @override
  final _i2.GDecimal paidAmount;
  @override
  final _i2.GDecimal pendingAmount;
  @override
  final String? renovatedFromId;
  @override
  final _i2.GDecimal renovationProfitAmount;
  @override
  final _i2.GDecimal renovationPendingAmount;
  @override
  final _i2.GDecimal baseProfitAmount;
  @override
  final _i2.GDecimal totalProfitAmount;

  factory _$GCreateLoanData_createLoan(
          [void Function(GCreateLoanData_createLoanBuilder)? updates]) =>
      (new GCreateLoanData_createLoanBuilder()..update(updates))._build();

  _$GCreateLoanData_createLoan._(
      {required this.G__typename,
      required this.id,
      required this.status,
      required this.weeklyPaymentAmount,
      this.previousAmountGived,
      required this.amountGived,
      required this.amountToPay,
      required this.paidAmount,
      required this.pendingAmount,
      this.renovatedFromId,
      required this.renovationProfitAmount,
      required this.renovationPendingAmount,
      required this.baseProfitAmount,
      required this.totalProfitAmount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreateLoanData_createLoan', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GCreateLoanData_createLoan', 'id');
    BuiltValueNullFieldError.checkNotNull(
        status, r'GCreateLoanData_createLoan', 'status');
    BuiltValueNullFieldError.checkNotNull(weeklyPaymentAmount,
        r'GCreateLoanData_createLoan', 'weeklyPaymentAmount');
    BuiltValueNullFieldError.checkNotNull(
        amountGived, r'GCreateLoanData_createLoan', 'amountGived');
    BuiltValueNullFieldError.checkNotNull(
        amountToPay, r'GCreateLoanData_createLoan', 'amountToPay');
    BuiltValueNullFieldError.checkNotNull(
        paidAmount, r'GCreateLoanData_createLoan', 'paidAmount');
    BuiltValueNullFieldError.checkNotNull(
        pendingAmount, r'GCreateLoanData_createLoan', 'pendingAmount');
    BuiltValueNullFieldError.checkNotNull(renovationProfitAmount,
        r'GCreateLoanData_createLoan', 'renovationProfitAmount');
    BuiltValueNullFieldError.checkNotNull(renovationPendingAmount,
        r'GCreateLoanData_createLoan', 'renovationPendingAmount');
    BuiltValueNullFieldError.checkNotNull(
        baseProfitAmount, r'GCreateLoanData_createLoan', 'baseProfitAmount');
    BuiltValueNullFieldError.checkNotNull(
        totalProfitAmount, r'GCreateLoanData_createLoan', 'totalProfitAmount');
  }

  @override
  GCreateLoanData_createLoan rebuild(
          void Function(GCreateLoanData_createLoanBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateLoanData_createLoanBuilder toBuilder() =>
      new GCreateLoanData_createLoanBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateLoanData_createLoan &&
        G__typename == other.G__typename &&
        id == other.id &&
        status == other.status &&
        weeklyPaymentAmount == other.weeklyPaymentAmount &&
        previousAmountGived == other.previousAmountGived &&
        amountGived == other.amountGived &&
        amountToPay == other.amountToPay &&
        paidAmount == other.paidAmount &&
        pendingAmount == other.pendingAmount &&
        renovatedFromId == other.renovatedFromId &&
        renovationProfitAmount == other.renovationProfitAmount &&
        renovationPendingAmount == other.renovationPendingAmount &&
        baseProfitAmount == other.baseProfitAmount &&
        totalProfitAmount == other.totalProfitAmount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, weeklyPaymentAmount.hashCode);
    _$hash = $jc(_$hash, previousAmountGived.hashCode);
    _$hash = $jc(_$hash, amountGived.hashCode);
    _$hash = $jc(_$hash, amountToPay.hashCode);
    _$hash = $jc(_$hash, paidAmount.hashCode);
    _$hash = $jc(_$hash, pendingAmount.hashCode);
    _$hash = $jc(_$hash, renovatedFromId.hashCode);
    _$hash = $jc(_$hash, renovationProfitAmount.hashCode);
    _$hash = $jc(_$hash, renovationPendingAmount.hashCode);
    _$hash = $jc(_$hash, baseProfitAmount.hashCode);
    _$hash = $jc(_$hash, totalProfitAmount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateLoanData_createLoan')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('status', status)
          ..add('weeklyPaymentAmount', weeklyPaymentAmount)
          ..add('previousAmountGived', previousAmountGived)
          ..add('amountGived', amountGived)
          ..add('amountToPay', amountToPay)
          ..add('paidAmount', paidAmount)
          ..add('pendingAmount', pendingAmount)
          ..add('renovatedFromId', renovatedFromId)
          ..add('renovationProfitAmount', renovationProfitAmount)
          ..add('renovationPendingAmount', renovationPendingAmount)
          ..add('baseProfitAmount', baseProfitAmount)
          ..add('totalProfitAmount', totalProfitAmount))
        .toString();
  }
}

class GCreateLoanData_createLoanBuilder
    implements
        Builder<GCreateLoanData_createLoan, GCreateLoanData_createLoanBuilder> {
  _$GCreateLoanData_createLoan? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i2.GLoanState? _status;
  _i2.GLoanState? get status => _$this._status;
  set status(_i2.GLoanState? status) => _$this._status = status;

  _i2.GDecimalBuilder? _weeklyPaymentAmount;
  _i2.GDecimalBuilder get weeklyPaymentAmount =>
      _$this._weeklyPaymentAmount ??= new _i2.GDecimalBuilder();
  set weeklyPaymentAmount(_i2.GDecimalBuilder? weeklyPaymentAmount) =>
      _$this._weeklyPaymentAmount = weeklyPaymentAmount;

  _i2.GDecimalBuilder? _previousAmountGived;
  _i2.GDecimalBuilder get previousAmountGived =>
      _$this._previousAmountGived ??= new _i2.GDecimalBuilder();
  set previousAmountGived(_i2.GDecimalBuilder? previousAmountGived) =>
      _$this._previousAmountGived = previousAmountGived;

  _i2.GDecimalBuilder? _amountGived;
  _i2.GDecimalBuilder get amountGived =>
      _$this._amountGived ??= new _i2.GDecimalBuilder();
  set amountGived(_i2.GDecimalBuilder? amountGived) =>
      _$this._amountGived = amountGived;

  _i2.GDecimalBuilder? _amountToPay;
  _i2.GDecimalBuilder get amountToPay =>
      _$this._amountToPay ??= new _i2.GDecimalBuilder();
  set amountToPay(_i2.GDecimalBuilder? amountToPay) =>
      _$this._amountToPay = amountToPay;

  _i2.GDecimalBuilder? _paidAmount;
  _i2.GDecimalBuilder get paidAmount =>
      _$this._paidAmount ??= new _i2.GDecimalBuilder();
  set paidAmount(_i2.GDecimalBuilder? paidAmount) =>
      _$this._paidAmount = paidAmount;

  _i2.GDecimalBuilder? _pendingAmount;
  _i2.GDecimalBuilder get pendingAmount =>
      _$this._pendingAmount ??= new _i2.GDecimalBuilder();
  set pendingAmount(_i2.GDecimalBuilder? pendingAmount) =>
      _$this._pendingAmount = pendingAmount;

  String? _renovatedFromId;
  String? get renovatedFromId => _$this._renovatedFromId;
  set renovatedFromId(String? renovatedFromId) =>
      _$this._renovatedFromId = renovatedFromId;

  _i2.GDecimalBuilder? _renovationProfitAmount;
  _i2.GDecimalBuilder get renovationProfitAmount =>
      _$this._renovationProfitAmount ??= new _i2.GDecimalBuilder();
  set renovationProfitAmount(_i2.GDecimalBuilder? renovationProfitAmount) =>
      _$this._renovationProfitAmount = renovationProfitAmount;

  _i2.GDecimalBuilder? _renovationPendingAmount;
  _i2.GDecimalBuilder get renovationPendingAmount =>
      _$this._renovationPendingAmount ??= new _i2.GDecimalBuilder();
  set renovationPendingAmount(_i2.GDecimalBuilder? renovationPendingAmount) =>
      _$this._renovationPendingAmount = renovationPendingAmount;

  _i2.GDecimalBuilder? _baseProfitAmount;
  _i2.GDecimalBuilder get baseProfitAmount =>
      _$this._baseProfitAmount ??= new _i2.GDecimalBuilder();
  set baseProfitAmount(_i2.GDecimalBuilder? baseProfitAmount) =>
      _$this._baseProfitAmount = baseProfitAmount;

  _i2.GDecimalBuilder? _totalProfitAmount;
  _i2.GDecimalBuilder get totalProfitAmount =>
      _$this._totalProfitAmount ??= new _i2.GDecimalBuilder();
  set totalProfitAmount(_i2.GDecimalBuilder? totalProfitAmount) =>
      _$this._totalProfitAmount = totalProfitAmount;

  GCreateLoanData_createLoanBuilder() {
    GCreateLoanData_createLoan._initializeBuilder(this);
  }

  GCreateLoanData_createLoanBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _status = $v.status;
      _weeklyPaymentAmount = $v.weeklyPaymentAmount.toBuilder();
      _previousAmountGived = $v.previousAmountGived?.toBuilder();
      _amountGived = $v.amountGived.toBuilder();
      _amountToPay = $v.amountToPay.toBuilder();
      _paidAmount = $v.paidAmount.toBuilder();
      _pendingAmount = $v.pendingAmount.toBuilder();
      _renovatedFromId = $v.renovatedFromId;
      _renovationProfitAmount = $v.renovationProfitAmount.toBuilder();
      _renovationPendingAmount = $v.renovationPendingAmount.toBuilder();
      _baseProfitAmount = $v.baseProfitAmount.toBuilder();
      _totalProfitAmount = $v.totalProfitAmount.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateLoanData_createLoan other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateLoanData_createLoan;
  }

  @override
  void update(void Function(GCreateLoanData_createLoanBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateLoanData_createLoan build() => _build();

  _$GCreateLoanData_createLoan _build() {
    _$GCreateLoanData_createLoan _$result;
    try {
      _$result = _$v ??
          new _$GCreateLoanData_createLoan._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GCreateLoanData_createLoan', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GCreateLoanData_createLoan', 'id'),
              status: BuiltValueNullFieldError.checkNotNull(
                  status, r'GCreateLoanData_createLoan', 'status'),
              weeklyPaymentAmount: weeklyPaymentAmount.build(),
              previousAmountGived: _previousAmountGived?.build(),
              amountGived: amountGived.build(),
              amountToPay: amountToPay.build(),
              paidAmount: paidAmount.build(),
              pendingAmount: pendingAmount.build(),
              renovatedFromId: renovatedFromId,
              renovationProfitAmount: renovationProfitAmount.build(),
              renovationPendingAmount: renovationPendingAmount.build(),
              baseProfitAmount: baseProfitAmount.build(),
              totalProfitAmount: totalProfitAmount.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'weeklyPaymentAmount';
        weeklyPaymentAmount.build();
        _$failedField = 'previousAmountGived';
        _previousAmountGived?.build();
        _$failedField = 'amountGived';
        amountGived.build();
        _$failedField = 'amountToPay';
        amountToPay.build();
        _$failedField = 'paidAmount';
        paidAmount.build();
        _$failedField = 'pendingAmount';
        pendingAmount.build();

        _$failedField = 'renovationProfitAmount';
        renovationProfitAmount.build();
        _$failedField = 'renovationPendingAmount';
        renovationPendingAmount.build();
        _$failedField = 'baseProfitAmount';
        baseProfitAmount.build();
        _$failedField = 'totalProfitAmount';
        totalProfitAmount.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreateLoanData_createLoan', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
