// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GpayPaymentData> _$gpayPaymentDataSerializer =
    new _$GpayPaymentDataSerializer();
Serializer<GpayPaymentData_payPayment> _$gpayPaymentDataPayPaymentSerializer =
    new _$GpayPaymentData_payPaymentSerializer();

class _$GpayPaymentDataSerializer
    implements StructuredSerializer<GpayPaymentData> {
  @override
  final Iterable<Type> types = const [GpayPaymentData, _$GpayPaymentData];
  @override
  final String wireName = 'GpayPaymentData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GpayPaymentData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'payPayment',
      serializers.serialize(object.payPayment,
          specifiedType: const FullType(GpayPaymentData_payPayment)),
    ];

    return result;
  }

  @override
  GpayPaymentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GpayPaymentDataBuilder();

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
        case 'payPayment':
          result.payPayment.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GpayPaymentData_payPayment))!
              as GpayPaymentData_payPayment);
          break;
      }
    }

    return result.build();
  }
}

class _$GpayPaymentData_payPaymentSerializer
    implements StructuredSerializer<GpayPaymentData_payPayment> {
  @override
  final Iterable<Type> types = const [
    GpayPaymentData_payPayment,
    _$GpayPaymentData_payPayment
  ];
  @override
  final String wireName = 'GpayPaymentData_payPayment';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GpayPaymentData_payPayment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GpayPaymentData_payPayment deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GpayPaymentData_payPaymentBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GpayPaymentData extends GpayPaymentData {
  @override
  final String G__typename;
  @override
  final GpayPaymentData_payPayment payPayment;

  factory _$GpayPaymentData([void Function(GpayPaymentDataBuilder)? updates]) =>
      (new GpayPaymentDataBuilder()..update(updates))._build();

  _$GpayPaymentData._({required this.G__typename, required this.payPayment})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GpayPaymentData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        payPayment, r'GpayPaymentData', 'payPayment');
  }

  @override
  GpayPaymentData rebuild(void Function(GpayPaymentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GpayPaymentDataBuilder toBuilder() =>
      new GpayPaymentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GpayPaymentData &&
        G__typename == other.G__typename &&
        payPayment == other.payPayment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, payPayment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GpayPaymentData')
          ..add('G__typename', G__typename)
          ..add('payPayment', payPayment))
        .toString();
  }
}

class GpayPaymentDataBuilder
    implements Builder<GpayPaymentData, GpayPaymentDataBuilder> {
  _$GpayPaymentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GpayPaymentData_payPaymentBuilder? _payPayment;
  GpayPaymentData_payPaymentBuilder get payPayment =>
      _$this._payPayment ??= new GpayPaymentData_payPaymentBuilder();
  set payPayment(GpayPaymentData_payPaymentBuilder? payPayment) =>
      _$this._payPayment = payPayment;

  GpayPaymentDataBuilder() {
    GpayPaymentData._initializeBuilder(this);
  }

  GpayPaymentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _payPayment = $v.payPayment.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GpayPaymentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GpayPaymentData;
  }

  @override
  void update(void Function(GpayPaymentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GpayPaymentData build() => _build();

  _$GpayPaymentData _build() {
    _$GpayPaymentData _$result;
    try {
      _$result = _$v ??
          new _$GpayPaymentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GpayPaymentData', 'G__typename'),
              payPayment: payPayment.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'payPayment';
        payPayment.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GpayPaymentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GpayPaymentData_payPayment extends GpayPaymentData_payPayment {
  @override
  final String G__typename;
  @override
  final String id;

  factory _$GpayPaymentData_payPayment(
          [void Function(GpayPaymentData_payPaymentBuilder)? updates]) =>
      (new GpayPaymentData_payPaymentBuilder()..update(updates))._build();

  _$GpayPaymentData_payPayment._({required this.G__typename, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GpayPaymentData_payPayment', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GpayPaymentData_payPayment', 'id');
  }

  @override
  GpayPaymentData_payPayment rebuild(
          void Function(GpayPaymentData_payPaymentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GpayPaymentData_payPaymentBuilder toBuilder() =>
      new GpayPaymentData_payPaymentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GpayPaymentData_payPayment &&
        G__typename == other.G__typename &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GpayPaymentData_payPayment')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GpayPaymentData_payPaymentBuilder
    implements
        Builder<GpayPaymentData_payPayment, GpayPaymentData_payPaymentBuilder> {
  _$GpayPaymentData_payPayment? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GpayPaymentData_payPaymentBuilder() {
    GpayPaymentData_payPayment._initializeBuilder(this);
  }

  GpayPaymentData_payPaymentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GpayPaymentData_payPayment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GpayPaymentData_payPayment;
  }

  @override
  void update(void Function(GpayPaymentData_payPaymentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GpayPaymentData_payPayment build() => _build();

  _$GpayPaymentData_payPayment _build() {
    final _$result = _$v ??
        new _$GpayPaymentData_payPayment._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GpayPaymentData_payPayment', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GpayPaymentData_payPayment', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
