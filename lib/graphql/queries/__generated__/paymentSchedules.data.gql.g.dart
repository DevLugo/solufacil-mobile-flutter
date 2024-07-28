// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paymentSchedules.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetPaymentSchedulesData> _$ggetPaymentSchedulesDataSerializer =
    new _$GgetPaymentSchedulesDataSerializer();
Serializer<GgetPaymentSchedulesData_getPaymentSchedules>
    _$ggetPaymentSchedulesDataGetPaymentSchedulesSerializer =
    new _$GgetPaymentSchedulesData_getPaymentSchedulesSerializer();
Serializer<GgetPaymentSchedulesData_getPaymentSchedules_borrower>
    _$ggetPaymentSchedulesDataGetPaymentSchedulesBorrowerSerializer =
    new _$GgetPaymentSchedulesData_getPaymentSchedules_borrowerSerializer();
Serializer<GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalData>
    _$ggetPaymentSchedulesDataGetPaymentSchedulesBorrowerPersonalDataSerializer =
    new _$GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalDataSerializer();

class _$GgetPaymentSchedulesDataSerializer
    implements StructuredSerializer<GgetPaymentSchedulesData> {
  @override
  final Iterable<Type> types = const [
    GgetPaymentSchedulesData,
    _$GgetPaymentSchedulesData
  ];
  @override
  final String wireName = 'GgetPaymentSchedulesData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetPaymentSchedulesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getPaymentSchedules',
      serializers.serialize(object.getPaymentSchedules,
          specifiedType: const FullType(BuiltList, const [
            const FullType(GgetPaymentSchedulesData_getPaymentSchedules)
          ])),
    ];

    return result;
  }

  @override
  GgetPaymentSchedulesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetPaymentSchedulesDataBuilder();

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
        case 'getPaymentSchedules':
          result.getPaymentSchedules.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GgetPaymentSchedulesData_getPaymentSchedules)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetPaymentSchedulesData_getPaymentSchedulesSerializer
    implements
        StructuredSerializer<GgetPaymentSchedulesData_getPaymentSchedules> {
  @override
  final Iterable<Type> types = const [
    GgetPaymentSchedulesData_getPaymentSchedules,
    _$GgetPaymentSchedulesData_getPaymentSchedules
  ];
  @override
  final String wireName = 'GgetPaymentSchedulesData_getPaymentSchedules';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetPaymentSchedulesData_getPaymentSchedules object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'loanId',
      serializers.serialize(object.loanId,
          specifiedType: const FullType(String)),
      'numeration',
      serializers.serialize(object.numeration,
          specifiedType: const FullType(int)),
      'amountToPay',
      serializers.serialize(object.amountToPay,
          specifiedType: const FullType(_i2.GDecimal)),
      'pendingAmount',
      serializers.serialize(object.pendingAmount,
          specifiedType: const FullType(_i2.GDecimal)),
      'paidAmount',
      serializers.serialize(object.paidAmount,
          specifiedType: const FullType(_i2.GDecimal)),
      'returnToCapital',
      serializers.serialize(object.returnToCapital,
          specifiedType: const FullType(_i2.GDecimal)),
      'profit',
      serializers.serialize(object.profit,
          specifiedType: const FullType(_i2.GDecimal)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(_i2.GPaymentState)),
      'delayed',
      serializers.serialize(object.delayed,
          specifiedType: const FullType(bool)),
      'dueDate',
      serializers.serialize(object.dueDate,
          specifiedType: const FullType(_i2.GDateTime)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(_i2.GDateTime)),
      'updatedAt',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(_i2.GDateTime)),
      'weecklyPendingAmount',
      serializers.serialize(object.weecklyPendingAmount,
          specifiedType: const FullType(_i2.GDecimal)),
      'borrower',
      serializers.serialize(object.borrower,
          specifiedType: const FullType(
              GgetPaymentSchedulesData_getPaymentSchedules_borrower)),
    ];
    Object? value;
    value = object.details;
    if (value != null) {
      result
        ..add('details')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GgetPaymentSchedulesData_getPaymentSchedules deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgetPaymentSchedulesData_getPaymentSchedulesBuilder();

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
        case 'loanId':
          result.loanId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'numeration':
          result.numeration = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'amountToPay':
          result.amountToPay.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDecimal))! as _i2.GDecimal);
          break;
        case 'pendingAmount':
          result.pendingAmount.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDecimal))! as _i2.GDecimal);
          break;
        case 'paidAmount':
          result.paidAmount.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDecimal))! as _i2.GDecimal);
          break;
        case 'returnToCapital':
          result.returnToCapital.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDecimal))! as _i2.GDecimal);
          break;
        case 'profit':
          result.profit.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDecimal))! as _i2.GDecimal);
          break;
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GPaymentState))!
              as _i2.GPaymentState;
          break;
        case 'details':
          result.details = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'delayed':
          result.delayed = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'dueDate':
          result.dueDate.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
          break;
        case 'createdAt':
          result.createdAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
          break;
        case 'updatedAt':
          result.updatedAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
          break;
        case 'weecklyPendingAmount':
          result.weecklyPendingAmount.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDecimal))! as _i2.GDecimal);
          break;
        case 'borrower':
          result.borrower.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetPaymentSchedulesData_getPaymentSchedules_borrower))!
              as GgetPaymentSchedulesData_getPaymentSchedules_borrower);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetPaymentSchedulesData_getPaymentSchedules_borrowerSerializer
    implements
        StructuredSerializer<
            GgetPaymentSchedulesData_getPaymentSchedules_borrower> {
  @override
  final Iterable<Type> types = const [
    GgetPaymentSchedulesData_getPaymentSchedules_borrower,
    _$GgetPaymentSchedulesData_getPaymentSchedules_borrower
  ];
  @override
  final String wireName =
      'GgetPaymentSchedulesData_getPaymentSchedules_borrower';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetPaymentSchedulesData_getPaymentSchedules_borrower object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'personalData',
      serializers.serialize(object.personalData,
          specifiedType: const FullType(
              GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalData)),
    ];

    return result;
  }

  @override
  GgetPaymentSchedulesData_getPaymentSchedules_borrower deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetPaymentSchedulesData_getPaymentSchedules_borrowerBuilder();

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
        case 'personalData':
          result.personalData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalData))!
              as GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalData);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalDataSerializer
    implements
        StructuredSerializer<
            GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalData> {
  @override
  final Iterable<Type> types = const [
    GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalData,
    _$GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalData
  ];
  @override
  final String wireName =
      'GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalData';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'fullName',
      serializers.serialize(object.fullName,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalData
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalDataBuilder();

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
        case 'fullName':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GgetPaymentSchedulesData extends GgetPaymentSchedulesData {
  @override
  final String G__typename;
  @override
  final BuiltList<GgetPaymentSchedulesData_getPaymentSchedules>
      getPaymentSchedules;

  factory _$GgetPaymentSchedulesData(
          [void Function(GgetPaymentSchedulesDataBuilder)? updates]) =>
      (new GgetPaymentSchedulesDataBuilder()..update(updates))._build();

  _$GgetPaymentSchedulesData._(
      {required this.G__typename, required this.getPaymentSchedules})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GgetPaymentSchedulesData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(getPaymentSchedules,
        r'GgetPaymentSchedulesData', 'getPaymentSchedules');
  }

  @override
  GgetPaymentSchedulesData rebuild(
          void Function(GgetPaymentSchedulesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetPaymentSchedulesDataBuilder toBuilder() =>
      new GgetPaymentSchedulesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetPaymentSchedulesData &&
        G__typename == other.G__typename &&
        getPaymentSchedules == other.getPaymentSchedules;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getPaymentSchedules.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetPaymentSchedulesData')
          ..add('G__typename', G__typename)
          ..add('getPaymentSchedules', getPaymentSchedules))
        .toString();
  }
}

class GgetPaymentSchedulesDataBuilder
    implements
        Builder<GgetPaymentSchedulesData, GgetPaymentSchedulesDataBuilder> {
  _$GgetPaymentSchedulesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GgetPaymentSchedulesData_getPaymentSchedules>?
      _getPaymentSchedules;
  ListBuilder<GgetPaymentSchedulesData_getPaymentSchedules>
      get getPaymentSchedules => _$this._getPaymentSchedules ??=
          new ListBuilder<GgetPaymentSchedulesData_getPaymentSchedules>();
  set getPaymentSchedules(
          ListBuilder<GgetPaymentSchedulesData_getPaymentSchedules>?
              getPaymentSchedules) =>
      _$this._getPaymentSchedules = getPaymentSchedules;

  GgetPaymentSchedulesDataBuilder() {
    GgetPaymentSchedulesData._initializeBuilder(this);
  }

  GgetPaymentSchedulesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getPaymentSchedules = $v.getPaymentSchedules.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetPaymentSchedulesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetPaymentSchedulesData;
  }

  @override
  void update(void Function(GgetPaymentSchedulesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetPaymentSchedulesData build() => _build();

  _$GgetPaymentSchedulesData _build() {
    _$GgetPaymentSchedulesData _$result;
    try {
      _$result = _$v ??
          new _$GgetPaymentSchedulesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GgetPaymentSchedulesData', 'G__typename'),
              getPaymentSchedules: getPaymentSchedules.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getPaymentSchedules';
        getPaymentSchedules.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetPaymentSchedulesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetPaymentSchedulesData_getPaymentSchedules
    extends GgetPaymentSchedulesData_getPaymentSchedules {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String loanId;
  @override
  final int numeration;
  @override
  final _i2.GDecimal amountToPay;
  @override
  final _i2.GDecimal pendingAmount;
  @override
  final _i2.GDecimal paidAmount;
  @override
  final _i2.GDecimal returnToCapital;
  @override
  final _i2.GDecimal profit;
  @override
  final _i2.GPaymentState status;
  @override
  final String? details;
  @override
  final bool delayed;
  @override
  final _i2.GDateTime dueDate;
  @override
  final _i2.GDateTime createdAt;
  @override
  final _i2.GDateTime updatedAt;
  @override
  final _i2.GDecimal weecklyPendingAmount;
  @override
  final GgetPaymentSchedulesData_getPaymentSchedules_borrower borrower;

  factory _$GgetPaymentSchedulesData_getPaymentSchedules(
          [void Function(GgetPaymentSchedulesData_getPaymentSchedulesBuilder)?
              updates]) =>
      (new GgetPaymentSchedulesData_getPaymentSchedulesBuilder()
            ..update(updates))
          ._build();

  _$GgetPaymentSchedulesData_getPaymentSchedules._(
      {required this.G__typename,
      required this.id,
      required this.loanId,
      required this.numeration,
      required this.amountToPay,
      required this.pendingAmount,
      required this.paidAmount,
      required this.returnToCapital,
      required this.profit,
      required this.status,
      this.details,
      required this.delayed,
      required this.dueDate,
      required this.createdAt,
      required this.updatedAt,
      required this.weecklyPendingAmount,
      required this.borrower})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GgetPaymentSchedulesData_getPaymentSchedules', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GgetPaymentSchedulesData_getPaymentSchedules', 'id');
    BuiltValueNullFieldError.checkNotNull(
        loanId, r'GgetPaymentSchedulesData_getPaymentSchedules', 'loanId');
    BuiltValueNullFieldError.checkNotNull(numeration,
        r'GgetPaymentSchedulesData_getPaymentSchedules', 'numeration');
    BuiltValueNullFieldError.checkNotNull(amountToPay,
        r'GgetPaymentSchedulesData_getPaymentSchedules', 'amountToPay');
    BuiltValueNullFieldError.checkNotNull(pendingAmount,
        r'GgetPaymentSchedulesData_getPaymentSchedules', 'pendingAmount');
    BuiltValueNullFieldError.checkNotNull(paidAmount,
        r'GgetPaymentSchedulesData_getPaymentSchedules', 'paidAmount');
    BuiltValueNullFieldError.checkNotNull(returnToCapital,
        r'GgetPaymentSchedulesData_getPaymentSchedules', 'returnToCapital');
    BuiltValueNullFieldError.checkNotNull(
        profit, r'GgetPaymentSchedulesData_getPaymentSchedules', 'profit');
    BuiltValueNullFieldError.checkNotNull(
        status, r'GgetPaymentSchedulesData_getPaymentSchedules', 'status');
    BuiltValueNullFieldError.checkNotNull(
        delayed, r'GgetPaymentSchedulesData_getPaymentSchedules', 'delayed');
    BuiltValueNullFieldError.checkNotNull(
        dueDate, r'GgetPaymentSchedulesData_getPaymentSchedules', 'dueDate');
    BuiltValueNullFieldError.checkNotNull(createdAt,
        r'GgetPaymentSchedulesData_getPaymentSchedules', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(updatedAt,
        r'GgetPaymentSchedulesData_getPaymentSchedules', 'updatedAt');
    BuiltValueNullFieldError.checkNotNull(
        weecklyPendingAmount,
        r'GgetPaymentSchedulesData_getPaymentSchedules',
        'weecklyPendingAmount');
    BuiltValueNullFieldError.checkNotNull(
        borrower, r'GgetPaymentSchedulesData_getPaymentSchedules', 'borrower');
  }

  @override
  GgetPaymentSchedulesData_getPaymentSchedules rebuild(
          void Function(GgetPaymentSchedulesData_getPaymentSchedulesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetPaymentSchedulesData_getPaymentSchedulesBuilder toBuilder() =>
      new GgetPaymentSchedulesData_getPaymentSchedulesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetPaymentSchedulesData_getPaymentSchedules &&
        G__typename == other.G__typename &&
        id == other.id &&
        loanId == other.loanId &&
        numeration == other.numeration &&
        amountToPay == other.amountToPay &&
        pendingAmount == other.pendingAmount &&
        paidAmount == other.paidAmount &&
        returnToCapital == other.returnToCapital &&
        profit == other.profit &&
        status == other.status &&
        details == other.details &&
        delayed == other.delayed &&
        dueDate == other.dueDate &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        weecklyPendingAmount == other.weecklyPendingAmount &&
        borrower == other.borrower;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, loanId.hashCode);
    _$hash = $jc(_$hash, numeration.hashCode);
    _$hash = $jc(_$hash, amountToPay.hashCode);
    _$hash = $jc(_$hash, pendingAmount.hashCode);
    _$hash = $jc(_$hash, paidAmount.hashCode);
    _$hash = $jc(_$hash, returnToCapital.hashCode);
    _$hash = $jc(_$hash, profit.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, details.hashCode);
    _$hash = $jc(_$hash, delayed.hashCode);
    _$hash = $jc(_$hash, dueDate.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, weecklyPendingAmount.hashCode);
    _$hash = $jc(_$hash, borrower.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetPaymentSchedulesData_getPaymentSchedules')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('loanId', loanId)
          ..add('numeration', numeration)
          ..add('amountToPay', amountToPay)
          ..add('pendingAmount', pendingAmount)
          ..add('paidAmount', paidAmount)
          ..add('returnToCapital', returnToCapital)
          ..add('profit', profit)
          ..add('status', status)
          ..add('details', details)
          ..add('delayed', delayed)
          ..add('dueDate', dueDate)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('weecklyPendingAmount', weecklyPendingAmount)
          ..add('borrower', borrower))
        .toString();
  }
}

class GgetPaymentSchedulesData_getPaymentSchedulesBuilder
    implements
        Builder<GgetPaymentSchedulesData_getPaymentSchedules,
            GgetPaymentSchedulesData_getPaymentSchedulesBuilder> {
  _$GgetPaymentSchedulesData_getPaymentSchedules? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _loanId;
  String? get loanId => _$this._loanId;
  set loanId(String? loanId) => _$this._loanId = loanId;

  int? _numeration;
  int? get numeration => _$this._numeration;
  set numeration(int? numeration) => _$this._numeration = numeration;

  _i2.GDecimalBuilder? _amountToPay;
  _i2.GDecimalBuilder get amountToPay =>
      _$this._amountToPay ??= new _i2.GDecimalBuilder();
  set amountToPay(_i2.GDecimalBuilder? amountToPay) =>
      _$this._amountToPay = amountToPay;

  _i2.GDecimalBuilder? _pendingAmount;
  _i2.GDecimalBuilder get pendingAmount =>
      _$this._pendingAmount ??= new _i2.GDecimalBuilder();
  set pendingAmount(_i2.GDecimalBuilder? pendingAmount) =>
      _$this._pendingAmount = pendingAmount;

  _i2.GDecimalBuilder? _paidAmount;
  _i2.GDecimalBuilder get paidAmount =>
      _$this._paidAmount ??= new _i2.GDecimalBuilder();
  set paidAmount(_i2.GDecimalBuilder? paidAmount) =>
      _$this._paidAmount = paidAmount;

  _i2.GDecimalBuilder? _returnToCapital;
  _i2.GDecimalBuilder get returnToCapital =>
      _$this._returnToCapital ??= new _i2.GDecimalBuilder();
  set returnToCapital(_i2.GDecimalBuilder? returnToCapital) =>
      _$this._returnToCapital = returnToCapital;

  _i2.GDecimalBuilder? _profit;
  _i2.GDecimalBuilder get profit =>
      _$this._profit ??= new _i2.GDecimalBuilder();
  set profit(_i2.GDecimalBuilder? profit) => _$this._profit = profit;

  _i2.GPaymentState? _status;
  _i2.GPaymentState? get status => _$this._status;
  set status(_i2.GPaymentState? status) => _$this._status = status;

  String? _details;
  String? get details => _$this._details;
  set details(String? details) => _$this._details = details;

  bool? _delayed;
  bool? get delayed => _$this._delayed;
  set delayed(bool? delayed) => _$this._delayed = delayed;

  _i2.GDateTimeBuilder? _dueDate;
  _i2.GDateTimeBuilder get dueDate =>
      _$this._dueDate ??= new _i2.GDateTimeBuilder();
  set dueDate(_i2.GDateTimeBuilder? dueDate) => _$this._dueDate = dueDate;

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

  _i2.GDecimalBuilder? _weecklyPendingAmount;
  _i2.GDecimalBuilder get weecklyPendingAmount =>
      _$this._weecklyPendingAmount ??= new _i2.GDecimalBuilder();
  set weecklyPendingAmount(_i2.GDecimalBuilder? weecklyPendingAmount) =>
      _$this._weecklyPendingAmount = weecklyPendingAmount;

  GgetPaymentSchedulesData_getPaymentSchedules_borrowerBuilder? _borrower;
  GgetPaymentSchedulesData_getPaymentSchedules_borrowerBuilder get borrower =>
      _$this._borrower ??=
          new GgetPaymentSchedulesData_getPaymentSchedules_borrowerBuilder();
  set borrower(
          GgetPaymentSchedulesData_getPaymentSchedules_borrowerBuilder?
              borrower) =>
      _$this._borrower = borrower;

  GgetPaymentSchedulesData_getPaymentSchedulesBuilder() {
    GgetPaymentSchedulesData_getPaymentSchedules._initializeBuilder(this);
  }

  GgetPaymentSchedulesData_getPaymentSchedulesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _loanId = $v.loanId;
      _numeration = $v.numeration;
      _amountToPay = $v.amountToPay.toBuilder();
      _pendingAmount = $v.pendingAmount.toBuilder();
      _paidAmount = $v.paidAmount.toBuilder();
      _returnToCapital = $v.returnToCapital.toBuilder();
      _profit = $v.profit.toBuilder();
      _status = $v.status;
      _details = $v.details;
      _delayed = $v.delayed;
      _dueDate = $v.dueDate.toBuilder();
      _createdAt = $v.createdAt.toBuilder();
      _updatedAt = $v.updatedAt.toBuilder();
      _weecklyPendingAmount = $v.weecklyPendingAmount.toBuilder();
      _borrower = $v.borrower.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetPaymentSchedulesData_getPaymentSchedules other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetPaymentSchedulesData_getPaymentSchedules;
  }

  @override
  void update(
      void Function(GgetPaymentSchedulesData_getPaymentSchedulesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetPaymentSchedulesData_getPaymentSchedules build() => _build();

  _$GgetPaymentSchedulesData_getPaymentSchedules _build() {
    _$GgetPaymentSchedulesData_getPaymentSchedules _$result;
    try {
      _$result = _$v ??
          new _$GgetPaymentSchedulesData_getPaymentSchedules._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GgetPaymentSchedulesData_getPaymentSchedules',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GgetPaymentSchedulesData_getPaymentSchedules', 'id'),
              loanId: BuiltValueNullFieldError.checkNotNull(
                  loanId, r'GgetPaymentSchedulesData_getPaymentSchedules', 'loanId'),
              numeration: BuiltValueNullFieldError.checkNotNull(
                  numeration,
                  r'GgetPaymentSchedulesData_getPaymentSchedules',
                  'numeration'),
              amountToPay: amountToPay.build(),
              pendingAmount: pendingAmount.build(),
              paidAmount: paidAmount.build(),
              returnToCapital: returnToCapital.build(),
              profit: profit.build(),
              status: BuiltValueNullFieldError.checkNotNull(
                  status, r'GgetPaymentSchedulesData_getPaymentSchedules', 'status'),
              details: details,
              delayed: BuiltValueNullFieldError.checkNotNull(
                  delayed, r'GgetPaymentSchedulesData_getPaymentSchedules', 'delayed'),
              dueDate: dueDate.build(),
              createdAt: createdAt.build(),
              updatedAt: updatedAt.build(),
              weecklyPendingAmount: weecklyPendingAmount.build(),
              borrower: borrower.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'amountToPay';
        amountToPay.build();
        _$failedField = 'pendingAmount';
        pendingAmount.build();
        _$failedField = 'paidAmount';
        paidAmount.build();
        _$failedField = 'returnToCapital';
        returnToCapital.build();
        _$failedField = 'profit';
        profit.build();

        _$failedField = 'dueDate';
        dueDate.build();
        _$failedField = 'createdAt';
        createdAt.build();
        _$failedField = 'updatedAt';
        updatedAt.build();
        _$failedField = 'weecklyPendingAmount';
        weecklyPendingAmount.build();
        _$failedField = 'borrower';
        borrower.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetPaymentSchedulesData_getPaymentSchedules',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetPaymentSchedulesData_getPaymentSchedules_borrower
    extends GgetPaymentSchedulesData_getPaymentSchedules_borrower {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalData
      personalData;

  factory _$GgetPaymentSchedulesData_getPaymentSchedules_borrower(
          [void Function(
                  GgetPaymentSchedulesData_getPaymentSchedules_borrowerBuilder)?
              updates]) =>
      (new GgetPaymentSchedulesData_getPaymentSchedules_borrowerBuilder()
            ..update(updates))
          ._build();

  _$GgetPaymentSchedulesData_getPaymentSchedules_borrower._(
      {required this.G__typename, required this.id, required this.personalData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetPaymentSchedulesData_getPaymentSchedules_borrower',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GgetPaymentSchedulesData_getPaymentSchedules_borrower', 'id');
    BuiltValueNullFieldError.checkNotNull(
        personalData,
        r'GgetPaymentSchedulesData_getPaymentSchedules_borrower',
        'personalData');
  }

  @override
  GgetPaymentSchedulesData_getPaymentSchedules_borrower rebuild(
          void Function(
                  GgetPaymentSchedulesData_getPaymentSchedules_borrowerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetPaymentSchedulesData_getPaymentSchedules_borrowerBuilder toBuilder() =>
      new GgetPaymentSchedulesData_getPaymentSchedules_borrowerBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetPaymentSchedulesData_getPaymentSchedules_borrower &&
        G__typename == other.G__typename &&
        id == other.id &&
        personalData == other.personalData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, personalData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetPaymentSchedulesData_getPaymentSchedules_borrower')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('personalData', personalData))
        .toString();
  }
}

class GgetPaymentSchedulesData_getPaymentSchedules_borrowerBuilder
    implements
        Builder<GgetPaymentSchedulesData_getPaymentSchedules_borrower,
            GgetPaymentSchedulesData_getPaymentSchedules_borrowerBuilder> {
  _$GgetPaymentSchedulesData_getPaymentSchedules_borrower? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalDataBuilder?
      _personalData;
  GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalDataBuilder
      get personalData => _$this._personalData ??=
          new GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalDataBuilder();
  set personalData(
          GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalDataBuilder?
              personalData) =>
      _$this._personalData = personalData;

  GgetPaymentSchedulesData_getPaymentSchedules_borrowerBuilder() {
    GgetPaymentSchedulesData_getPaymentSchedules_borrower._initializeBuilder(
        this);
  }

  GgetPaymentSchedulesData_getPaymentSchedules_borrowerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _personalData = $v.personalData.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetPaymentSchedulesData_getPaymentSchedules_borrower other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgetPaymentSchedulesData_getPaymentSchedules_borrower;
  }

  @override
  void update(
      void Function(
              GgetPaymentSchedulesData_getPaymentSchedules_borrowerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetPaymentSchedulesData_getPaymentSchedules_borrower build() => _build();

  _$GgetPaymentSchedulesData_getPaymentSchedules_borrower _build() {
    _$GgetPaymentSchedulesData_getPaymentSchedules_borrower _$result;
    try {
      _$result = _$v ??
          new _$GgetPaymentSchedulesData_getPaymentSchedules_borrower._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GgetPaymentSchedulesData_getPaymentSchedules_borrower',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'GgetPaymentSchedulesData_getPaymentSchedules_borrower',
                  'id'),
              personalData: personalData.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'personalData';
        personalData.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgetPaymentSchedulesData_getPaymentSchedules_borrower',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalData
    extends GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalData {
  @override
  final String G__typename;
  @override
  final String fullName;

  factory _$GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalData(
          [void Function(
                  GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalDataBuilder)?
              updates]) =>
      (new GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalDataBuilder()
            ..update(updates))
          ._build();

  _$GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalData._(
      {required this.G__typename, required this.fullName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalData',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        fullName,
        r'GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalData',
        'fullName');
  }

  @override
  GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalData rebuild(
          void Function(
                  GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalDataBuilder
      toBuilder() =>
          new GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalDataBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalData &&
        G__typename == other.G__typename &&
        fullName == other.fullName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalData')
          ..add('G__typename', G__typename)
          ..add('fullName', fullName))
        .toString();
  }
}

class GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalDataBuilder
    implements
        Builder<
            GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalData,
            GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalDataBuilder> {
  _$GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalDataBuilder() {
    GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalData
        ._initializeBuilder(this);
  }

  GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalDataBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _fullName = $v.fullName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalData
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalData;
  }

  @override
  void update(
      void Function(
              GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalData build() =>
      _build();

  _$GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalData
      _build() {
    final _$result = _$v ??
        new _$GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalData
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalData',
                'G__typename'),
            fullName: BuiltValueNullFieldError.checkNotNull(
                fullName,
                r'GgetPaymentSchedulesData_getPaymentSchedules_borrower_personalData',
                'fullName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
