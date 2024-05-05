// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GEmployeesTypes _$gEmployeesTypesLIAISON_EXECUTIVE =
    const GEmployeesTypes._('LIAISON_EXECUTIVE');
const GEmployeesTypes _$gEmployeesTypesLOAN_LEAD =
    const GEmployeesTypes._('LOAN_LEAD');

GEmployeesTypes _$gEmployeesTypesValueOf(String name) {
  switch (name) {
    case 'LIAISON_EXECUTIVE':
      return _$gEmployeesTypesLIAISON_EXECUTIVE;
    case 'LOAN_LEAD':
      return _$gEmployeesTypesLOAN_LEAD;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GEmployeesTypes> _$gEmployeesTypesValues =
    new BuiltSet<GEmployeesTypes>(const <GEmployeesTypes>[
  _$gEmployeesTypesLIAISON_EXECUTIVE,
  _$gEmployeesTypesLOAN_LEAD,
]);

const GLoanState _$gLoanStateREQUESTED = const GLoanState._('REQUESTED');
const GLoanState _$gLoanStateIN_REVIEW = const GLoanState._('IN_REVIEW');
const GLoanState _$gLoanStateAPPROVED = const GLoanState._('APPROVED');
const GLoanState _$gLoanStateREJECTED = const GLoanState._('REJECTED');
const GLoanState _$gLoanStatePAID_OUT = const GLoanState._('PAID_OUT');
const GLoanState _$gLoanStatePOSTPONED = const GLoanState._('POSTPONED');

GLoanState _$gLoanStateValueOf(String name) {
  switch (name) {
    case 'REQUESTED':
      return _$gLoanStateREQUESTED;
    case 'IN_REVIEW':
      return _$gLoanStateIN_REVIEW;
    case 'APPROVED':
      return _$gLoanStateAPPROVED;
    case 'REJECTED':
      return _$gLoanStateREJECTED;
    case 'PAID_OUT':
      return _$gLoanStatePAID_OUT;
    case 'POSTPONED':
      return _$gLoanStatePOSTPONED;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GLoanState> _$gLoanStateValues =
    new BuiltSet<GLoanState>(const <GLoanState>[
  _$gLoanStateREQUESTED,
  _$gLoanStateIN_REVIEW,
  _$gLoanStateAPPROVED,
  _$gLoanStateREJECTED,
  _$gLoanStatePAID_OUT,
  _$gLoanStatePOSTPONED,
]);

const GPaymentState _$gPaymentStatePENDING = const GPaymentState._('PENDING');
const GPaymentState _$gPaymentStatePAID_OUT = const GPaymentState._('PAID_OUT');
const GPaymentState _$gPaymentStatePARTIALLY_PAID =
    const GPaymentState._('PARTIALLY_PAID');

GPaymentState _$gPaymentStateValueOf(String name) {
  switch (name) {
    case 'PENDING':
      return _$gPaymentStatePENDING;
    case 'PAID_OUT':
      return _$gPaymentStatePAID_OUT;
    case 'PARTIALLY_PAID':
      return _$gPaymentStatePARTIALLY_PAID;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GPaymentState> _$gPaymentStateValues =
    new BuiltSet<GPaymentState>(const <GPaymentState>[
  _$gPaymentStatePENDING,
  _$gPaymentStatePAID_OUT,
  _$gPaymentStatePARTIALLY_PAID,
]);

Serializer<GBorrowerCreateInput> _$gBorrowerCreateInputSerializer =
    new _$GBorrowerCreateInputSerializer();
Serializer<GBorrowerWhereInput> _$gBorrowerWhereInputSerializer =
    new _$GBorrowerWhereInputSerializer();
Serializer<GBorrowerWhereUniqueInput> _$gBorrowerWhereUniqueInputSerializer =
    new _$GBorrowerWhereUniqueInputSerializer();
Serializer<GCreateAddressInput> _$gCreateAddressInputSerializer =
    new _$GCreateAddressInputSerializer();
Serializer<GCreatePersonalDataInput> _$gCreatePersonalDataInputSerializer =
    new _$GCreatePersonalDataInputSerializer();
Serializer<GCreatePhoneInput> _$gCreatePhoneInputSerializer =
    new _$GCreatePhoneInputSerializer();
Serializer<GEmployeesTypes> _$gEmployeesTypesSerializer =
    new _$GEmployeesTypesSerializer();
Serializer<GEmployeeWhereUniqueInput> _$gEmployeeWhereUniqueInputSerializer =
    new _$GEmployeeWhereUniqueInputSerializer();
Serializer<GLoanByBorrowerWhereUniqueInput>
    _$gLoanByBorrowerWhereUniqueInputSerializer =
    new _$GLoanByBorrowerWhereUniqueInputSerializer();
Serializer<GLoanCreateInput> _$gLoanCreateInputSerializer =
    new _$GLoanCreateInputSerializer();
Serializer<GLoanState> _$gLoanStateSerializer = new _$GLoanStateSerializer();
Serializer<GLoanTypeWhereInput> _$gLoanTypeWhereInputSerializer =
    new _$GLoanTypeWhereInputSerializer();
Serializer<GLocationWhereInput> _$gLocationWhereInputSerializer =
    new _$GLocationWhereInputSerializer();
Serializer<GPayLoanPaymentInput> _$gPayLoanPaymentInputSerializer =
    new _$GPayLoanPaymentInputSerializer();
Serializer<GPaymentScheduleWhereInput> _$gPaymentScheduleWhereInputSerializer =
    new _$GPaymentScheduleWhereInputSerializer();
Serializer<GPaymentState> _$gPaymentStateSerializer =
    new _$GPaymentStateSerializer();
Serializer<GRouteWhereInput> _$gRouteWhereInputSerializer =
    new _$GRouteWhereInputSerializer();
Serializer<GSignInInput> _$gSignInInputSerializer =
    new _$GSignInInputSerializer();
Serializer<GUserCreateInput> _$gUserCreateInputSerializer =
    new _$GUserCreateInputSerializer();

class _$GBorrowerCreateInputSerializer
    implements StructuredSerializer<GBorrowerCreateInput> {
  @override
  final Iterable<Type> types = const [
    GBorrowerCreateInput,
    _$GBorrowerCreateInput
  ];
  @override
  final String wireName = 'GBorrowerCreateInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GBorrowerCreateInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'personalData',
      serializers.serialize(object.personalData,
          specifiedType: const FullType(GCreatePersonalDataInput)),
    ];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GBorrowerCreateInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GBorrowerCreateInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'personalData':
          result.personalData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GCreatePersonalDataInput))!
              as GCreatePersonalDataInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GBorrowerWhereInputSerializer
    implements StructuredSerializer<GBorrowerWhereInput> {
  @override
  final Iterable<Type> types = const [
    GBorrowerWhereInput,
    _$GBorrowerWhereInput
  ];
  @override
  final String wireName = 'GBorrowerWhereInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GBorrowerWhereInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.locationId;
    if (value != null) {
      result
        ..add('locationId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.leadId;
    if (value != null) {
      result
        ..add('leadId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GBorrowerWhereInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GBorrowerWhereInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'locationId':
          result.locationId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'leadId':
          result.leadId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GBorrowerWhereUniqueInputSerializer
    implements StructuredSerializer<GBorrowerWhereUniqueInput> {
  @override
  final Iterable<Type> types = const [
    GBorrowerWhereUniqueInput,
    _$GBorrowerWhereUniqueInput
  ];
  @override
  final String wireName = 'GBorrowerWhereUniqueInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GBorrowerWhereUniqueInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GBorrowerWhereUniqueInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GBorrowerWhereUniqueInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateAddressInputSerializer
    implements StructuredSerializer<GCreateAddressInput> {
  @override
  final Iterable<Type> types = const [
    GCreateAddressInput,
    _$GCreateAddressInput
  ];
  @override
  final String wireName = 'GCreateAddressInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateAddressInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'street',
      serializers.serialize(object.street,
          specifiedType: const FullType(String)),
      'interiorNumber',
      serializers.serialize(object.interiorNumber,
          specifiedType: const FullType(String)),
      'postalCode',
      serializers.serialize(object.postalCode,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.exteriorNumber;
    if (value != null) {
      result
        ..add('exteriorNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.references;
    if (value != null) {
      result
        ..add('references')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GCreateAddressInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateAddressInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'street':
          result.street = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'exteriorNumber':
          result.exteriorNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'interiorNumber':
          result.interiorNumber = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'postalCode':
          result.postalCode = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'references':
          result.references = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreatePersonalDataInputSerializer
    implements StructuredSerializer<GCreatePersonalDataInput> {
  @override
  final Iterable<Type> types = const [
    GCreatePersonalDataInput,
    _$GCreatePersonalDataInput
  ];
  @override
  final String wireName = 'GCreatePersonalDataInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreatePersonalDataInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'curp',
      serializers.serialize(object.curp, specifiedType: const FullType(String)),
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'phones',
      serializers.serialize(object.phones,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GCreatePhoneInput)])),
      'adresses',
      serializers.serialize(object.adresses,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GCreateAddressInput)])),
    ];

    return result;
  }

  @override
  GCreatePersonalDataInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreatePersonalDataInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'curp':
          result.curp = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'phones':
          result.phones.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GCreatePhoneInput)]))!
              as BuiltList<Object?>);
          break;
        case 'adresses':
          result.adresses.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GCreateAddressInput)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreatePhoneInputSerializer
    implements StructuredSerializer<GCreatePhoneInput> {
  @override
  final Iterable<Type> types = const [GCreatePhoneInput, _$GCreatePhoneInput];
  @override
  final String wireName = 'GCreatePhoneInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreatePhoneInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'number',
      serializers.serialize(object.number,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GCreatePhoneInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreatePhoneInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GEmployeesTypesSerializer
    implements PrimitiveSerializer<GEmployeesTypes> {
  @override
  final Iterable<Type> types = const <Type>[GEmployeesTypes];
  @override
  final String wireName = 'GEmployeesTypes';

  @override
  Object serialize(Serializers serializers, GEmployeesTypes object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  GEmployeesTypes deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GEmployeesTypes.valueOf(serialized as String);
}

class _$GEmployeeWhereUniqueInputSerializer
    implements StructuredSerializer<GEmployeeWhereUniqueInput> {
  @override
  final Iterable<Type> types = const [
    GEmployeeWhereUniqueInput,
    _$GEmployeeWhereUniqueInput
  ];
  @override
  final String wireName = 'GEmployeeWhereUniqueInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GEmployeeWhereUniqueInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GEmployeeWhereUniqueInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GEmployeeWhereUniqueInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GLoanByBorrowerWhereUniqueInputSerializer
    implements StructuredSerializer<GLoanByBorrowerWhereUniqueInput> {
  @override
  final Iterable<Type> types = const [
    GLoanByBorrowerWhereUniqueInput,
    _$GLoanByBorrowerWhereUniqueInput
  ];
  @override
  final String wireName = 'GLoanByBorrowerWhereUniqueInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLoanByBorrowerWhereUniqueInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'borrowerId',
      serializers.serialize(object.borrowerId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GLoanByBorrowerWhereUniqueInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLoanByBorrowerWhereUniqueInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'borrowerId':
          result.borrowerId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GLoanCreateInputSerializer
    implements StructuredSerializer<GLoanCreateInput> {
  @override
  final Iterable<Type> types = const [GLoanCreateInput, _$GLoanCreateInput];
  @override
  final String wireName = 'GLoanCreateInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GLoanCreateInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firstPaymentDate',
      serializers.serialize(object.firstPaymentDate,
          specifiedType: const FullType(GDate)),
      'isRenovation',
      serializers.serialize(object.isRenovation,
          specifiedType: const FullType(bool)),
      'loanLeadId',
      serializers.serialize(object.loanLeadId,
          specifiedType: const FullType(String)),
      'amountGived',
      serializers.serialize(object.amountGived,
          specifiedType: const FullType(GDecimal)),
      'loanTypeId',
      serializers.serialize(object.loanTypeId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.borrowerId;
    if (value != null) {
      result
        ..add('borrowerId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.borrower;
    if (value != null) {
      result
        ..add('borrower')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GBorrowerCreateInput)));
    }
    value = object.avals;
    if (value != null) {
      result
        ..add('avals')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GCreatePersonalDataInput)])));
    }
    value = object.signDate;
    if (value != null) {
      result
        ..add('signDate')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(GDate)));
    }
    return result;
  }

  @override
  GLoanCreateInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLoanCreateInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'firstPaymentDate':
          result.firstPaymentDate.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDate))! as GDate);
          break;
        case 'isRenovation':
          result.isRenovation = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'borrowerId':
          result.borrowerId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'borrower':
          result.borrower.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GBorrowerCreateInput))!
              as GBorrowerCreateInput);
          break;
        case 'avals':
          result.avals.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GCreatePersonalDataInput)
              ]))! as BuiltList<Object?>);
          break;
        case 'loanLeadId':
          result.loanLeadId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'amountGived':
          result.amountGived.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDecimal))! as GDecimal);
          break;
        case 'loanTypeId':
          result.loanTypeId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'signDate':
          result.signDate.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDate))! as GDate);
          break;
      }
    }

    return result.build();
  }
}

class _$GLoanStateSerializer implements PrimitiveSerializer<GLoanState> {
  @override
  final Iterable<Type> types = const <Type>[GLoanState];
  @override
  final String wireName = 'GLoanState';

  @override
  Object serialize(Serializers serializers, GLoanState object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  GLoanState deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GLoanState.valueOf(serialized as String);
}

class _$GLoanTypeWhereInputSerializer
    implements StructuredSerializer<GLoanTypeWhereInput> {
  @override
  final Iterable<Type> types = const [
    GLoanTypeWhereInput,
    _$GLoanTypeWhereInput
  ];
  @override
  final String wireName = 'GLoanTypeWhereInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLoanTypeWhereInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.employeeType;
    if (value != null) {
      result
        ..add('employeeType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GEmployeesTypes)));
    }
    return result;
  }

  @override
  GLoanTypeWhereInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLoanTypeWhereInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'employeeType':
          result.employeeType = serializers.deserialize(value,
                  specifiedType: const FullType(GEmployeesTypes))
              as GEmployeesTypes?;
          break;
      }
    }

    return result.build();
  }
}

class _$GLocationWhereInputSerializer
    implements StructuredSerializer<GLocationWhereInput> {
  @override
  final Iterable<Type> types = const [
    GLocationWhereInput,
    _$GLocationWhereInput
  ];
  @override
  final String wireName = 'GLocationWhereInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLocationWhereInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'routeId',
      serializers.serialize(object.routeId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GLocationWhereInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLocationWhereInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'routeId':
          result.routeId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GPayLoanPaymentInputSerializer
    implements StructuredSerializer<GPayLoanPaymentInput> {
  @override
  final Iterable<Type> types = const [
    GPayLoanPaymentInput,
    _$GPayLoanPaymentInput
  ];
  @override
  final String wireName = 'GPayLoanPaymentInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPayLoanPaymentInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'amount',
      serializers.serialize(object.amount,
          specifiedType: const FullType(GDecimal)),
      'paidDate',
      serializers.serialize(object.paidDate,
          specifiedType: const FullType(GDateTime)),
      'loanId',
      serializers.serialize(object.loanId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GPayLoanPaymentInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPayLoanPaymentInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'amount':
          result.amount.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDecimal))! as GDecimal);
          break;
        case 'paidDate':
          result.paidDate.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDateTime))! as GDateTime);
          break;
        case 'loanId':
          result.loanId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GPaymentScheduleWhereInputSerializer
    implements StructuredSerializer<GPaymentScheduleWhereInput> {
  @override
  final Iterable<Type> types = const [
    GPaymentScheduleWhereInput,
    _$GPaymentScheduleWhereInput
  ];
  @override
  final String wireName = 'GPaymentScheduleWhereInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPaymentScheduleWhereInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.leadId;
    if (value != null) {
      result
        ..add('leadId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dueDate;
    if (value != null) {
      result
        ..add('dueDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GDateTime)));
    }
    value = object.paymentState;
    if (value != null) {
      result
        ..add('paymentState')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GPaymentState)])));
    }
    return result;
  }

  @override
  GPaymentScheduleWhereInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPaymentScheduleWhereInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'leadId':
          result.leadId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dueDate':
          result.dueDate.replace(serializers.deserialize(value,
              specifiedType: const FullType(GDateTime))! as GDateTime);
          break;
        case 'paymentState':
          result.paymentState.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GPaymentState)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GPaymentStateSerializer implements PrimitiveSerializer<GPaymentState> {
  @override
  final Iterable<Type> types = const <Type>[GPaymentState];
  @override
  final String wireName = 'GPaymentState';

  @override
  Object serialize(Serializers serializers, GPaymentState object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  GPaymentState deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GPaymentState.valueOf(serialized as String);
}

class _$GRouteWhereInputSerializer
    implements StructuredSerializer<GRouteWhereInput> {
  @override
  final Iterable<Type> types = const [GRouteWhereInput, _$GRouteWhereInput];
  @override
  final String wireName = 'GRouteWhereInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GRouteWhereInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GRouteWhereInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRouteWhereInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GSignInInputSerializer implements StructuredSerializer<GSignInInput> {
  @override
  final Iterable<Type> types = const [GSignInInput, _$GSignInInput];
  @override
  final String wireName = 'GSignInInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSignInInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GSignInInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSignInInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserCreateInputSerializer
    implements StructuredSerializer<GUserCreateInput> {
  @override
  final Iterable<Type> types = const [GUserCreateInput, _$GUserCreateInput];
  @override
  final String wireName = 'GUserCreateInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUserCreateInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GUserCreateInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserCreateInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GBorrowerCreateInput extends GBorrowerCreateInput {
  @override
  final String? email;
  @override
  final GCreatePersonalDataInput personalData;

  factory _$GBorrowerCreateInput(
          [void Function(GBorrowerCreateInputBuilder)? updates]) =>
      (new GBorrowerCreateInputBuilder()..update(updates))._build();

  _$GBorrowerCreateInput._({this.email, required this.personalData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        personalData, r'GBorrowerCreateInput', 'personalData');
  }

  @override
  GBorrowerCreateInput rebuild(
          void Function(GBorrowerCreateInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GBorrowerCreateInputBuilder toBuilder() =>
      new GBorrowerCreateInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GBorrowerCreateInput &&
        email == other.email &&
        personalData == other.personalData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, personalData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GBorrowerCreateInput')
          ..add('email', email)
          ..add('personalData', personalData))
        .toString();
  }
}

class GBorrowerCreateInputBuilder
    implements Builder<GBorrowerCreateInput, GBorrowerCreateInputBuilder> {
  _$GBorrowerCreateInput? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  GCreatePersonalDataInputBuilder? _personalData;
  GCreatePersonalDataInputBuilder get personalData =>
      _$this._personalData ??= new GCreatePersonalDataInputBuilder();
  set personalData(GCreatePersonalDataInputBuilder? personalData) =>
      _$this._personalData = personalData;

  GBorrowerCreateInputBuilder();

  GBorrowerCreateInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _personalData = $v.personalData.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GBorrowerCreateInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GBorrowerCreateInput;
  }

  @override
  void update(void Function(GBorrowerCreateInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GBorrowerCreateInput build() => _build();

  _$GBorrowerCreateInput _build() {
    _$GBorrowerCreateInput _$result;
    try {
      _$result = _$v ??
          new _$GBorrowerCreateInput._(
              email: email, personalData: personalData.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'personalData';
        personalData.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GBorrowerCreateInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GBorrowerWhereInput extends GBorrowerWhereInput {
  @override
  final String? locationId;
  @override
  final String? leadId;

  factory _$GBorrowerWhereInput(
          [void Function(GBorrowerWhereInputBuilder)? updates]) =>
      (new GBorrowerWhereInputBuilder()..update(updates))._build();

  _$GBorrowerWhereInput._({this.locationId, this.leadId}) : super._();

  @override
  GBorrowerWhereInput rebuild(
          void Function(GBorrowerWhereInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GBorrowerWhereInputBuilder toBuilder() =>
      new GBorrowerWhereInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GBorrowerWhereInput &&
        locationId == other.locationId &&
        leadId == other.leadId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, locationId.hashCode);
    _$hash = $jc(_$hash, leadId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GBorrowerWhereInput')
          ..add('locationId', locationId)
          ..add('leadId', leadId))
        .toString();
  }
}

class GBorrowerWhereInputBuilder
    implements Builder<GBorrowerWhereInput, GBorrowerWhereInputBuilder> {
  _$GBorrowerWhereInput? _$v;

  String? _locationId;
  String? get locationId => _$this._locationId;
  set locationId(String? locationId) => _$this._locationId = locationId;

  String? _leadId;
  String? get leadId => _$this._leadId;
  set leadId(String? leadId) => _$this._leadId = leadId;

  GBorrowerWhereInputBuilder();

  GBorrowerWhereInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _locationId = $v.locationId;
      _leadId = $v.leadId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GBorrowerWhereInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GBorrowerWhereInput;
  }

  @override
  void update(void Function(GBorrowerWhereInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GBorrowerWhereInput build() => _build();

  _$GBorrowerWhereInput _build() {
    final _$result = _$v ??
        new _$GBorrowerWhereInput._(locationId: locationId, leadId: leadId);
    replace(_$result);
    return _$result;
  }
}

class _$GBorrowerWhereUniqueInput extends GBorrowerWhereUniqueInput {
  @override
  final String? id;

  factory _$GBorrowerWhereUniqueInput(
          [void Function(GBorrowerWhereUniqueInputBuilder)? updates]) =>
      (new GBorrowerWhereUniqueInputBuilder()..update(updates))._build();

  _$GBorrowerWhereUniqueInput._({this.id}) : super._();

  @override
  GBorrowerWhereUniqueInput rebuild(
          void Function(GBorrowerWhereUniqueInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GBorrowerWhereUniqueInputBuilder toBuilder() =>
      new GBorrowerWhereUniqueInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GBorrowerWhereUniqueInput && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GBorrowerWhereUniqueInput')
          ..add('id', id))
        .toString();
  }
}

class GBorrowerWhereUniqueInputBuilder
    implements
        Builder<GBorrowerWhereUniqueInput, GBorrowerWhereUniqueInputBuilder> {
  _$GBorrowerWhereUniqueInput? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GBorrowerWhereUniqueInputBuilder();

  GBorrowerWhereUniqueInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GBorrowerWhereUniqueInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GBorrowerWhereUniqueInput;
  }

  @override
  void update(void Function(GBorrowerWhereUniqueInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GBorrowerWhereUniqueInput build() => _build();

  _$GBorrowerWhereUniqueInput _build() {
    final _$result = _$v ?? new _$GBorrowerWhereUniqueInput._(id: id);
    replace(_$result);
    return _$result;
  }
}

class _$GCreateAddressInput extends GCreateAddressInput {
  @override
  final String street;
  @override
  final String? exteriorNumber;
  @override
  final String interiorNumber;
  @override
  final String postalCode;
  @override
  final String? references;

  factory _$GCreateAddressInput(
          [void Function(GCreateAddressInputBuilder)? updates]) =>
      (new GCreateAddressInputBuilder()..update(updates))._build();

  _$GCreateAddressInput._(
      {required this.street,
      this.exteriorNumber,
      required this.interiorNumber,
      required this.postalCode,
      this.references})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        street, r'GCreateAddressInput', 'street');
    BuiltValueNullFieldError.checkNotNull(
        interiorNumber, r'GCreateAddressInput', 'interiorNumber');
    BuiltValueNullFieldError.checkNotNull(
        postalCode, r'GCreateAddressInput', 'postalCode');
  }

  @override
  GCreateAddressInput rebuild(
          void Function(GCreateAddressInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateAddressInputBuilder toBuilder() =>
      new GCreateAddressInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateAddressInput &&
        street == other.street &&
        exteriorNumber == other.exteriorNumber &&
        interiorNumber == other.interiorNumber &&
        postalCode == other.postalCode &&
        references == other.references;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, street.hashCode);
    _$hash = $jc(_$hash, exteriorNumber.hashCode);
    _$hash = $jc(_$hash, interiorNumber.hashCode);
    _$hash = $jc(_$hash, postalCode.hashCode);
    _$hash = $jc(_$hash, references.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreateAddressInput')
          ..add('street', street)
          ..add('exteriorNumber', exteriorNumber)
          ..add('interiorNumber', interiorNumber)
          ..add('postalCode', postalCode)
          ..add('references', references))
        .toString();
  }
}

class GCreateAddressInputBuilder
    implements Builder<GCreateAddressInput, GCreateAddressInputBuilder> {
  _$GCreateAddressInput? _$v;

  String? _street;
  String? get street => _$this._street;
  set street(String? street) => _$this._street = street;

  String? _exteriorNumber;
  String? get exteriorNumber => _$this._exteriorNumber;
  set exteriorNumber(String? exteriorNumber) =>
      _$this._exteriorNumber = exteriorNumber;

  String? _interiorNumber;
  String? get interiorNumber => _$this._interiorNumber;
  set interiorNumber(String? interiorNumber) =>
      _$this._interiorNumber = interiorNumber;

  String? _postalCode;
  String? get postalCode => _$this._postalCode;
  set postalCode(String? postalCode) => _$this._postalCode = postalCode;

  String? _references;
  String? get references => _$this._references;
  set references(String? references) => _$this._references = references;

  GCreateAddressInputBuilder();

  GCreateAddressInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _street = $v.street;
      _exteriorNumber = $v.exteriorNumber;
      _interiorNumber = $v.interiorNumber;
      _postalCode = $v.postalCode;
      _references = $v.references;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateAddressInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateAddressInput;
  }

  @override
  void update(void Function(GCreateAddressInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreateAddressInput build() => _build();

  _$GCreateAddressInput _build() {
    final _$result = _$v ??
        new _$GCreateAddressInput._(
            street: BuiltValueNullFieldError.checkNotNull(
                street, r'GCreateAddressInput', 'street'),
            exteriorNumber: exteriorNumber,
            interiorNumber: BuiltValueNullFieldError.checkNotNull(
                interiorNumber, r'GCreateAddressInput', 'interiorNumber'),
            postalCode: BuiltValueNullFieldError.checkNotNull(
                postalCode, r'GCreateAddressInput', 'postalCode'),
            references: references);
    replace(_$result);
    return _$result;
  }
}

class _$GCreatePersonalDataInput extends GCreatePersonalDataInput {
  @override
  final String curp;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final BuiltList<GCreatePhoneInput> phones;
  @override
  final BuiltList<GCreateAddressInput> adresses;

  factory _$GCreatePersonalDataInput(
          [void Function(GCreatePersonalDataInputBuilder)? updates]) =>
      (new GCreatePersonalDataInputBuilder()..update(updates))._build();

  _$GCreatePersonalDataInput._(
      {required this.curp,
      required this.firstName,
      required this.lastName,
      required this.phones,
      required this.adresses})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        curp, r'GCreatePersonalDataInput', 'curp');
    BuiltValueNullFieldError.checkNotNull(
        firstName, r'GCreatePersonalDataInput', 'firstName');
    BuiltValueNullFieldError.checkNotNull(
        lastName, r'GCreatePersonalDataInput', 'lastName');
    BuiltValueNullFieldError.checkNotNull(
        phones, r'GCreatePersonalDataInput', 'phones');
    BuiltValueNullFieldError.checkNotNull(
        adresses, r'GCreatePersonalDataInput', 'adresses');
  }

  @override
  GCreatePersonalDataInput rebuild(
          void Function(GCreatePersonalDataInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreatePersonalDataInputBuilder toBuilder() =>
      new GCreatePersonalDataInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreatePersonalDataInput &&
        curp == other.curp &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        phones == other.phones &&
        adresses == other.adresses;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, curp.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, phones.hashCode);
    _$hash = $jc(_$hash, adresses.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreatePersonalDataInput')
          ..add('curp', curp)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('phones', phones)
          ..add('adresses', adresses))
        .toString();
  }
}

class GCreatePersonalDataInputBuilder
    implements
        Builder<GCreatePersonalDataInput, GCreatePersonalDataInputBuilder> {
  _$GCreatePersonalDataInput? _$v;

  String? _curp;
  String? get curp => _$this._curp;
  set curp(String? curp) => _$this._curp = curp;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  ListBuilder<GCreatePhoneInput>? _phones;
  ListBuilder<GCreatePhoneInput> get phones =>
      _$this._phones ??= new ListBuilder<GCreatePhoneInput>();
  set phones(ListBuilder<GCreatePhoneInput>? phones) => _$this._phones = phones;

  ListBuilder<GCreateAddressInput>? _adresses;
  ListBuilder<GCreateAddressInput> get adresses =>
      _$this._adresses ??= new ListBuilder<GCreateAddressInput>();
  set adresses(ListBuilder<GCreateAddressInput>? adresses) =>
      _$this._adresses = adresses;

  GCreatePersonalDataInputBuilder();

  GCreatePersonalDataInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _curp = $v.curp;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _phones = $v.phones.toBuilder();
      _adresses = $v.adresses.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreatePersonalDataInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreatePersonalDataInput;
  }

  @override
  void update(void Function(GCreatePersonalDataInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreatePersonalDataInput build() => _build();

  _$GCreatePersonalDataInput _build() {
    _$GCreatePersonalDataInput _$result;
    try {
      _$result = _$v ??
          new _$GCreatePersonalDataInput._(
              curp: BuiltValueNullFieldError.checkNotNull(
                  curp, r'GCreatePersonalDataInput', 'curp'),
              firstName: BuiltValueNullFieldError.checkNotNull(
                  firstName, r'GCreatePersonalDataInput', 'firstName'),
              lastName: BuiltValueNullFieldError.checkNotNull(
                  lastName, r'GCreatePersonalDataInput', 'lastName'),
              phones: phones.build(),
              adresses: adresses.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'phones';
        phones.build();
        _$failedField = 'adresses';
        adresses.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreatePersonalDataInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreatePhoneInput extends GCreatePhoneInput {
  @override
  final String number;

  factory _$GCreatePhoneInput(
          [void Function(GCreatePhoneInputBuilder)? updates]) =>
      (new GCreatePhoneInputBuilder()..update(updates))._build();

  _$GCreatePhoneInput._({required this.number}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        number, r'GCreatePhoneInput', 'number');
  }

  @override
  GCreatePhoneInput rebuild(void Function(GCreatePhoneInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreatePhoneInputBuilder toBuilder() =>
      new GCreatePhoneInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreatePhoneInput && number == other.number;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, number.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreatePhoneInput')
          ..add('number', number))
        .toString();
  }
}

class GCreatePhoneInputBuilder
    implements Builder<GCreatePhoneInput, GCreatePhoneInputBuilder> {
  _$GCreatePhoneInput? _$v;

  String? _number;
  String? get number => _$this._number;
  set number(String? number) => _$this._number = number;

  GCreatePhoneInputBuilder();

  GCreatePhoneInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _number = $v.number;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreatePhoneInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreatePhoneInput;
  }

  @override
  void update(void Function(GCreatePhoneInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreatePhoneInput build() => _build();

  _$GCreatePhoneInput _build() {
    final _$result = _$v ??
        new _$GCreatePhoneInput._(
            number: BuiltValueNullFieldError.checkNotNull(
                number, r'GCreatePhoneInput', 'number'));
    replace(_$result);
    return _$result;
  }
}

class _$GDate extends GDate {
  @override
  final String value;

  factory _$GDate([void Function(GDateBuilder)? updates]) =>
      (new GDateBuilder()..update(updates))._build();

  _$GDate._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(value, r'GDate', 'value');
  }

  @override
  GDate rebuild(void Function(GDateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDateBuilder toBuilder() => new GDateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDate && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDate')..add('value', value))
        .toString();
  }
}

class GDateBuilder implements Builder<GDate, GDateBuilder> {
  _$GDate? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  GDateBuilder();

  GDateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDate;
  }

  @override
  void update(void Function(GDateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDate build() => _build();

  _$GDate _build() {
    final _$result = _$v ??
        new _$GDate._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'GDate', 'value'));
    replace(_$result);
    return _$result;
  }
}

class _$GDateTime extends GDateTime {
  @override
  final String value;

  factory _$GDateTime([void Function(GDateTimeBuilder)? updates]) =>
      (new GDateTimeBuilder()..update(updates))._build();

  _$GDateTime._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(value, r'GDateTime', 'value');
  }

  @override
  GDateTime rebuild(void Function(GDateTimeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDateTimeBuilder toBuilder() => new GDateTimeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDateTime && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDateTime')..add('value', value))
        .toString();
  }
}

class GDateTimeBuilder implements Builder<GDateTime, GDateTimeBuilder> {
  _$GDateTime? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  GDateTimeBuilder();

  GDateTimeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDateTime other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDateTime;
  }

  @override
  void update(void Function(GDateTimeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDateTime build() => _build();

  _$GDateTime _build() {
    final _$result = _$v ??
        new _$GDateTime._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'GDateTime', 'value'));
    replace(_$result);
    return _$result;
  }
}

class _$GDecimal extends GDecimal {
  @override
  final String value;

  factory _$GDecimal([void Function(GDecimalBuilder)? updates]) =>
      (new GDecimalBuilder()..update(updates))._build();

  _$GDecimal._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(value, r'GDecimal', 'value');
  }

  @override
  GDecimal rebuild(void Function(GDecimalBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDecimalBuilder toBuilder() => new GDecimalBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDecimal && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDecimal')..add('value', value))
        .toString();
  }
}

class GDecimalBuilder implements Builder<GDecimal, GDecimalBuilder> {
  _$GDecimal? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  GDecimalBuilder();

  GDecimalBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDecimal other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDecimal;
  }

  @override
  void update(void Function(GDecimalBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDecimal build() => _build();

  _$GDecimal _build() {
    final _$result = _$v ??
        new _$GDecimal._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'GDecimal', 'value'));
    replace(_$result);
    return _$result;
  }
}

class _$GEmployeeWhereUniqueInput extends GEmployeeWhereUniqueInput {
  @override
  final String id;

  factory _$GEmployeeWhereUniqueInput(
          [void Function(GEmployeeWhereUniqueInputBuilder)? updates]) =>
      (new GEmployeeWhereUniqueInputBuilder()..update(updates))._build();

  _$GEmployeeWhereUniqueInput._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        id, r'GEmployeeWhereUniqueInput', 'id');
  }

  @override
  GEmployeeWhereUniqueInput rebuild(
          void Function(GEmployeeWhereUniqueInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GEmployeeWhereUniqueInputBuilder toBuilder() =>
      new GEmployeeWhereUniqueInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GEmployeeWhereUniqueInput && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GEmployeeWhereUniqueInput')
          ..add('id', id))
        .toString();
  }
}

class GEmployeeWhereUniqueInputBuilder
    implements
        Builder<GEmployeeWhereUniqueInput, GEmployeeWhereUniqueInputBuilder> {
  _$GEmployeeWhereUniqueInput? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GEmployeeWhereUniqueInputBuilder();

  GEmployeeWhereUniqueInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GEmployeeWhereUniqueInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GEmployeeWhereUniqueInput;
  }

  @override
  void update(void Function(GEmployeeWhereUniqueInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GEmployeeWhereUniqueInput build() => _build();

  _$GEmployeeWhereUniqueInput _build() {
    final _$result = _$v ??
        new _$GEmployeeWhereUniqueInput._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GEmployeeWhereUniqueInput', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GLoanByBorrowerWhereUniqueInput
    extends GLoanByBorrowerWhereUniqueInput {
  @override
  final String borrowerId;

  factory _$GLoanByBorrowerWhereUniqueInput(
          [void Function(GLoanByBorrowerWhereUniqueInputBuilder)? updates]) =>
      (new GLoanByBorrowerWhereUniqueInputBuilder()..update(updates))._build();

  _$GLoanByBorrowerWhereUniqueInput._({required this.borrowerId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        borrowerId, r'GLoanByBorrowerWhereUniqueInput', 'borrowerId');
  }

  @override
  GLoanByBorrowerWhereUniqueInput rebuild(
          void Function(GLoanByBorrowerWhereUniqueInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLoanByBorrowerWhereUniqueInputBuilder toBuilder() =>
      new GLoanByBorrowerWhereUniqueInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoanByBorrowerWhereUniqueInput &&
        borrowerId == other.borrowerId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, borrowerId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLoanByBorrowerWhereUniqueInput')
          ..add('borrowerId', borrowerId))
        .toString();
  }
}

class GLoanByBorrowerWhereUniqueInputBuilder
    implements
        Builder<GLoanByBorrowerWhereUniqueInput,
            GLoanByBorrowerWhereUniqueInputBuilder> {
  _$GLoanByBorrowerWhereUniqueInput? _$v;

  String? _borrowerId;
  String? get borrowerId => _$this._borrowerId;
  set borrowerId(String? borrowerId) => _$this._borrowerId = borrowerId;

  GLoanByBorrowerWhereUniqueInputBuilder();

  GLoanByBorrowerWhereUniqueInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _borrowerId = $v.borrowerId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLoanByBorrowerWhereUniqueInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLoanByBorrowerWhereUniqueInput;
  }

  @override
  void update(void Function(GLoanByBorrowerWhereUniqueInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLoanByBorrowerWhereUniqueInput build() => _build();

  _$GLoanByBorrowerWhereUniqueInput _build() {
    final _$result = _$v ??
        new _$GLoanByBorrowerWhereUniqueInput._(
            borrowerId: BuiltValueNullFieldError.checkNotNull(
                borrowerId, r'GLoanByBorrowerWhereUniqueInput', 'borrowerId'));
    replace(_$result);
    return _$result;
  }
}

class _$GLoanCreateInput extends GLoanCreateInput {
  @override
  final GDate firstPaymentDate;
  @override
  final bool isRenovation;
  @override
  final String? borrowerId;
  @override
  final GBorrowerCreateInput? borrower;
  @override
  final BuiltList<GCreatePersonalDataInput>? avals;
  @override
  final String loanLeadId;
  @override
  final GDecimal amountGived;
  @override
  final String loanTypeId;
  @override
  final GDate? signDate;

  factory _$GLoanCreateInput(
          [void Function(GLoanCreateInputBuilder)? updates]) =>
      (new GLoanCreateInputBuilder()..update(updates))._build();

  _$GLoanCreateInput._(
      {required this.firstPaymentDate,
      required this.isRenovation,
      this.borrowerId,
      this.borrower,
      this.avals,
      required this.loanLeadId,
      required this.amountGived,
      required this.loanTypeId,
      this.signDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firstPaymentDate, r'GLoanCreateInput', 'firstPaymentDate');
    BuiltValueNullFieldError.checkNotNull(
        isRenovation, r'GLoanCreateInput', 'isRenovation');
    BuiltValueNullFieldError.checkNotNull(
        loanLeadId, r'GLoanCreateInput', 'loanLeadId');
    BuiltValueNullFieldError.checkNotNull(
        amountGived, r'GLoanCreateInput', 'amountGived');
    BuiltValueNullFieldError.checkNotNull(
        loanTypeId, r'GLoanCreateInput', 'loanTypeId');
  }

  @override
  GLoanCreateInput rebuild(void Function(GLoanCreateInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLoanCreateInputBuilder toBuilder() =>
      new GLoanCreateInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoanCreateInput &&
        firstPaymentDate == other.firstPaymentDate &&
        isRenovation == other.isRenovation &&
        borrowerId == other.borrowerId &&
        borrower == other.borrower &&
        avals == other.avals &&
        loanLeadId == other.loanLeadId &&
        amountGived == other.amountGived &&
        loanTypeId == other.loanTypeId &&
        signDate == other.signDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, firstPaymentDate.hashCode);
    _$hash = $jc(_$hash, isRenovation.hashCode);
    _$hash = $jc(_$hash, borrowerId.hashCode);
    _$hash = $jc(_$hash, borrower.hashCode);
    _$hash = $jc(_$hash, avals.hashCode);
    _$hash = $jc(_$hash, loanLeadId.hashCode);
    _$hash = $jc(_$hash, amountGived.hashCode);
    _$hash = $jc(_$hash, loanTypeId.hashCode);
    _$hash = $jc(_$hash, signDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLoanCreateInput')
          ..add('firstPaymentDate', firstPaymentDate)
          ..add('isRenovation', isRenovation)
          ..add('borrowerId', borrowerId)
          ..add('borrower', borrower)
          ..add('avals', avals)
          ..add('loanLeadId', loanLeadId)
          ..add('amountGived', amountGived)
          ..add('loanTypeId', loanTypeId)
          ..add('signDate', signDate))
        .toString();
  }
}

class GLoanCreateInputBuilder
    implements Builder<GLoanCreateInput, GLoanCreateInputBuilder> {
  _$GLoanCreateInput? _$v;

  GDateBuilder? _firstPaymentDate;
  GDateBuilder get firstPaymentDate =>
      _$this._firstPaymentDate ??= new GDateBuilder();
  set firstPaymentDate(GDateBuilder? firstPaymentDate) =>
      _$this._firstPaymentDate = firstPaymentDate;

  bool? _isRenovation;
  bool? get isRenovation => _$this._isRenovation;
  set isRenovation(bool? isRenovation) => _$this._isRenovation = isRenovation;

  String? _borrowerId;
  String? get borrowerId => _$this._borrowerId;
  set borrowerId(String? borrowerId) => _$this._borrowerId = borrowerId;

  GBorrowerCreateInputBuilder? _borrower;
  GBorrowerCreateInputBuilder get borrower =>
      _$this._borrower ??= new GBorrowerCreateInputBuilder();
  set borrower(GBorrowerCreateInputBuilder? borrower) =>
      _$this._borrower = borrower;

  ListBuilder<GCreatePersonalDataInput>? _avals;
  ListBuilder<GCreatePersonalDataInput> get avals =>
      _$this._avals ??= new ListBuilder<GCreatePersonalDataInput>();
  set avals(ListBuilder<GCreatePersonalDataInput>? avals) =>
      _$this._avals = avals;

  String? _loanLeadId;
  String? get loanLeadId => _$this._loanLeadId;
  set loanLeadId(String? loanLeadId) => _$this._loanLeadId = loanLeadId;

  GDecimalBuilder? _amountGived;
  GDecimalBuilder get amountGived =>
      _$this._amountGived ??= new GDecimalBuilder();
  set amountGived(GDecimalBuilder? amountGived) =>
      _$this._amountGived = amountGived;

  String? _loanTypeId;
  String? get loanTypeId => _$this._loanTypeId;
  set loanTypeId(String? loanTypeId) => _$this._loanTypeId = loanTypeId;

  GDateBuilder? _signDate;
  GDateBuilder get signDate => _$this._signDate ??= new GDateBuilder();
  set signDate(GDateBuilder? signDate) => _$this._signDate = signDate;

  GLoanCreateInputBuilder();

  GLoanCreateInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstPaymentDate = $v.firstPaymentDate.toBuilder();
      _isRenovation = $v.isRenovation;
      _borrowerId = $v.borrowerId;
      _borrower = $v.borrower?.toBuilder();
      _avals = $v.avals?.toBuilder();
      _loanLeadId = $v.loanLeadId;
      _amountGived = $v.amountGived.toBuilder();
      _loanTypeId = $v.loanTypeId;
      _signDate = $v.signDate?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLoanCreateInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLoanCreateInput;
  }

  @override
  void update(void Function(GLoanCreateInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLoanCreateInput build() => _build();

  _$GLoanCreateInput _build() {
    _$GLoanCreateInput _$result;
    try {
      _$result = _$v ??
          new _$GLoanCreateInput._(
              firstPaymentDate: firstPaymentDate.build(),
              isRenovation: BuiltValueNullFieldError.checkNotNull(
                  isRenovation, r'GLoanCreateInput', 'isRenovation'),
              borrowerId: borrowerId,
              borrower: _borrower?.build(),
              avals: _avals?.build(),
              loanLeadId: BuiltValueNullFieldError.checkNotNull(
                  loanLeadId, r'GLoanCreateInput', 'loanLeadId'),
              amountGived: amountGived.build(),
              loanTypeId: BuiltValueNullFieldError.checkNotNull(
                  loanTypeId, r'GLoanCreateInput', 'loanTypeId'),
              signDate: _signDate?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'firstPaymentDate';
        firstPaymentDate.build();

        _$failedField = 'borrower';
        _borrower?.build();
        _$failedField = 'avals';
        _avals?.build();

        _$failedField = 'amountGived';
        amountGived.build();

        _$failedField = 'signDate';
        _signDate?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GLoanCreateInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLoanTypeWhereInput extends GLoanTypeWhereInput {
  @override
  final GEmployeesTypes? employeeType;

  factory _$GLoanTypeWhereInput(
          [void Function(GLoanTypeWhereInputBuilder)? updates]) =>
      (new GLoanTypeWhereInputBuilder()..update(updates))._build();

  _$GLoanTypeWhereInput._({this.employeeType}) : super._();

  @override
  GLoanTypeWhereInput rebuild(
          void Function(GLoanTypeWhereInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLoanTypeWhereInputBuilder toBuilder() =>
      new GLoanTypeWhereInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoanTypeWhereInput && employeeType == other.employeeType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, employeeType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLoanTypeWhereInput')
          ..add('employeeType', employeeType))
        .toString();
  }
}

class GLoanTypeWhereInputBuilder
    implements Builder<GLoanTypeWhereInput, GLoanTypeWhereInputBuilder> {
  _$GLoanTypeWhereInput? _$v;

  GEmployeesTypes? _employeeType;
  GEmployeesTypes? get employeeType => _$this._employeeType;
  set employeeType(GEmployeesTypes? employeeType) =>
      _$this._employeeType = employeeType;

  GLoanTypeWhereInputBuilder();

  GLoanTypeWhereInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _employeeType = $v.employeeType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLoanTypeWhereInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLoanTypeWhereInput;
  }

  @override
  void update(void Function(GLoanTypeWhereInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLoanTypeWhereInput build() => _build();

  _$GLoanTypeWhereInput _build() {
    final _$result =
        _$v ?? new _$GLoanTypeWhereInput._(employeeType: employeeType);
    replace(_$result);
    return _$result;
  }
}

class _$GLocationWhereInput extends GLocationWhereInput {
  @override
  final String routeId;
  @override
  final String? name;

  factory _$GLocationWhereInput(
          [void Function(GLocationWhereInputBuilder)? updates]) =>
      (new GLocationWhereInputBuilder()..update(updates))._build();

  _$GLocationWhereInput._({required this.routeId, this.name}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        routeId, r'GLocationWhereInput', 'routeId');
  }

  @override
  GLocationWhereInput rebuild(
          void Function(GLocationWhereInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLocationWhereInputBuilder toBuilder() =>
      new GLocationWhereInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLocationWhereInput &&
        routeId == other.routeId &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, routeId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLocationWhereInput')
          ..add('routeId', routeId)
          ..add('name', name))
        .toString();
  }
}

class GLocationWhereInputBuilder
    implements Builder<GLocationWhereInput, GLocationWhereInputBuilder> {
  _$GLocationWhereInput? _$v;

  String? _routeId;
  String? get routeId => _$this._routeId;
  set routeId(String? routeId) => _$this._routeId = routeId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GLocationWhereInputBuilder();

  GLocationWhereInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _routeId = $v.routeId;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLocationWhereInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLocationWhereInput;
  }

  @override
  void update(void Function(GLocationWhereInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLocationWhereInput build() => _build();

  _$GLocationWhereInput _build() {
    final _$result = _$v ??
        new _$GLocationWhereInput._(
            routeId: BuiltValueNullFieldError.checkNotNull(
                routeId, r'GLocationWhereInput', 'routeId'),
            name: name);
    replace(_$result);
    return _$result;
  }
}

class _$GPayLoanPaymentInput extends GPayLoanPaymentInput {
  @override
  final GDecimal amount;
  @override
  final GDateTime paidDate;
  @override
  final String loanId;

  factory _$GPayLoanPaymentInput(
          [void Function(GPayLoanPaymentInputBuilder)? updates]) =>
      (new GPayLoanPaymentInputBuilder()..update(updates))._build();

  _$GPayLoanPaymentInput._(
      {required this.amount, required this.paidDate, required this.loanId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        amount, r'GPayLoanPaymentInput', 'amount');
    BuiltValueNullFieldError.checkNotNull(
        paidDate, r'GPayLoanPaymentInput', 'paidDate');
    BuiltValueNullFieldError.checkNotNull(
        loanId, r'GPayLoanPaymentInput', 'loanId');
  }

  @override
  GPayLoanPaymentInput rebuild(
          void Function(GPayLoanPaymentInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPayLoanPaymentInputBuilder toBuilder() =>
      new GPayLoanPaymentInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPayLoanPaymentInput &&
        amount == other.amount &&
        paidDate == other.paidDate &&
        loanId == other.loanId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, paidDate.hashCode);
    _$hash = $jc(_$hash, loanId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPayLoanPaymentInput')
          ..add('amount', amount)
          ..add('paidDate', paidDate)
          ..add('loanId', loanId))
        .toString();
  }
}

class GPayLoanPaymentInputBuilder
    implements Builder<GPayLoanPaymentInput, GPayLoanPaymentInputBuilder> {
  _$GPayLoanPaymentInput? _$v;

  GDecimalBuilder? _amount;
  GDecimalBuilder get amount => _$this._amount ??= new GDecimalBuilder();
  set amount(GDecimalBuilder? amount) => _$this._amount = amount;

  GDateTimeBuilder? _paidDate;
  GDateTimeBuilder get paidDate => _$this._paidDate ??= new GDateTimeBuilder();
  set paidDate(GDateTimeBuilder? paidDate) => _$this._paidDate = paidDate;

  String? _loanId;
  String? get loanId => _$this._loanId;
  set loanId(String? loanId) => _$this._loanId = loanId;

  GPayLoanPaymentInputBuilder();

  GPayLoanPaymentInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _amount = $v.amount.toBuilder();
      _paidDate = $v.paidDate.toBuilder();
      _loanId = $v.loanId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPayLoanPaymentInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPayLoanPaymentInput;
  }

  @override
  void update(void Function(GPayLoanPaymentInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPayLoanPaymentInput build() => _build();

  _$GPayLoanPaymentInput _build() {
    _$GPayLoanPaymentInput _$result;
    try {
      _$result = _$v ??
          new _$GPayLoanPaymentInput._(
              amount: amount.build(),
              paidDate: paidDate.build(),
              loanId: BuiltValueNullFieldError.checkNotNull(
                  loanId, r'GPayLoanPaymentInput', 'loanId'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'amount';
        amount.build();
        _$failedField = 'paidDate';
        paidDate.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPayLoanPaymentInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPaymentScheduleWhereInput extends GPaymentScheduleWhereInput {
  @override
  final String? leadId;
  @override
  final GDateTime? dueDate;
  @override
  final BuiltList<GPaymentState>? paymentState;

  factory _$GPaymentScheduleWhereInput(
          [void Function(GPaymentScheduleWhereInputBuilder)? updates]) =>
      (new GPaymentScheduleWhereInputBuilder()..update(updates))._build();

  _$GPaymentScheduleWhereInput._({this.leadId, this.dueDate, this.paymentState})
      : super._();

  @override
  GPaymentScheduleWhereInput rebuild(
          void Function(GPaymentScheduleWhereInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPaymentScheduleWhereInputBuilder toBuilder() =>
      new GPaymentScheduleWhereInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPaymentScheduleWhereInput &&
        leadId == other.leadId &&
        dueDate == other.dueDate &&
        paymentState == other.paymentState;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, leadId.hashCode);
    _$hash = $jc(_$hash, dueDate.hashCode);
    _$hash = $jc(_$hash, paymentState.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPaymentScheduleWhereInput')
          ..add('leadId', leadId)
          ..add('dueDate', dueDate)
          ..add('paymentState', paymentState))
        .toString();
  }
}

class GPaymentScheduleWhereInputBuilder
    implements
        Builder<GPaymentScheduleWhereInput, GPaymentScheduleWhereInputBuilder> {
  _$GPaymentScheduleWhereInput? _$v;

  String? _leadId;
  String? get leadId => _$this._leadId;
  set leadId(String? leadId) => _$this._leadId = leadId;

  GDateTimeBuilder? _dueDate;
  GDateTimeBuilder get dueDate => _$this._dueDate ??= new GDateTimeBuilder();
  set dueDate(GDateTimeBuilder? dueDate) => _$this._dueDate = dueDate;

  ListBuilder<GPaymentState>? _paymentState;
  ListBuilder<GPaymentState> get paymentState =>
      _$this._paymentState ??= new ListBuilder<GPaymentState>();
  set paymentState(ListBuilder<GPaymentState>? paymentState) =>
      _$this._paymentState = paymentState;

  GPaymentScheduleWhereInputBuilder();

  GPaymentScheduleWhereInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _leadId = $v.leadId;
      _dueDate = $v.dueDate?.toBuilder();
      _paymentState = $v.paymentState?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPaymentScheduleWhereInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPaymentScheduleWhereInput;
  }

  @override
  void update(void Function(GPaymentScheduleWhereInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPaymentScheduleWhereInput build() => _build();

  _$GPaymentScheduleWhereInput _build() {
    _$GPaymentScheduleWhereInput _$result;
    try {
      _$result = _$v ??
          new _$GPaymentScheduleWhereInput._(
              leadId: leadId,
              dueDate: _dueDate?.build(),
              paymentState: _paymentState?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dueDate';
        _dueDate?.build();
        _$failedField = 'paymentState';
        _paymentState?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPaymentScheduleWhereInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GRouteWhereInput extends GRouteWhereInput {
  @override
  final String? name;

  factory _$GRouteWhereInput(
          [void Function(GRouteWhereInputBuilder)? updates]) =>
      (new GRouteWhereInputBuilder()..update(updates))._build();

  _$GRouteWhereInput._({this.name}) : super._();

  @override
  GRouteWhereInput rebuild(void Function(GRouteWhereInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRouteWhereInputBuilder toBuilder() =>
      new GRouteWhereInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRouteWhereInput && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GRouteWhereInput')..add('name', name))
        .toString();
  }
}

class GRouteWhereInputBuilder
    implements Builder<GRouteWhereInput, GRouteWhereInputBuilder> {
  _$GRouteWhereInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GRouteWhereInputBuilder();

  GRouteWhereInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRouteWhereInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRouteWhereInput;
  }

  @override
  void update(void Function(GRouteWhereInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRouteWhereInput build() => _build();

  _$GRouteWhereInput _build() {
    final _$result = _$v ?? new _$GRouteWhereInput._(name: name);
    replace(_$result);
    return _$result;
  }
}

class _$GSignInInput extends GSignInInput {
  @override
  final String email;
  @override
  final String password;

  factory _$GSignInInput([void Function(GSignInInputBuilder)? updates]) =>
      (new GSignInInputBuilder()..update(updates))._build();

  _$GSignInInput._({required this.email, required this.password}) : super._() {
    BuiltValueNullFieldError.checkNotNull(email, r'GSignInInput', 'email');
    BuiltValueNullFieldError.checkNotNull(
        password, r'GSignInInput', 'password');
  }

  @override
  GSignInInput rebuild(void Function(GSignInInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSignInInputBuilder toBuilder() => new GSignInInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSignInInput &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSignInInput')
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class GSignInInputBuilder
    implements Builder<GSignInInput, GSignInInputBuilder> {
  _$GSignInInput? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  GSignInInputBuilder();

  GSignInInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSignInInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSignInInput;
  }

  @override
  void update(void Function(GSignInInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSignInInput build() => _build();

  _$GSignInInput _build() {
    final _$result = _$v ??
        new _$GSignInInput._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'GSignInInput', 'email'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'GSignInInput', 'password'));
    replace(_$result);
    return _$result;
  }
}

class _$GUserCreateInput extends GUserCreateInput {
  @override
  final String email;
  @override
  final String password;
  @override
  final String firstName;
  @override
  final String lastName;

  factory _$GUserCreateInput(
          [void Function(GUserCreateInputBuilder)? updates]) =>
      (new GUserCreateInputBuilder()..update(updates))._build();

  _$GUserCreateInput._(
      {required this.email,
      required this.password,
      required this.firstName,
      required this.lastName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(email, r'GUserCreateInput', 'email');
    BuiltValueNullFieldError.checkNotNull(
        password, r'GUserCreateInput', 'password');
    BuiltValueNullFieldError.checkNotNull(
        firstName, r'GUserCreateInput', 'firstName');
    BuiltValueNullFieldError.checkNotNull(
        lastName, r'GUserCreateInput', 'lastName');
  }

  @override
  GUserCreateInput rebuild(void Function(GUserCreateInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserCreateInputBuilder toBuilder() =>
      new GUserCreateInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserCreateInput &&
        email == other.email &&
        password == other.password &&
        firstName == other.firstName &&
        lastName == other.lastName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserCreateInput')
          ..add('email', email)
          ..add('password', password)
          ..add('firstName', firstName)
          ..add('lastName', lastName))
        .toString();
  }
}

class GUserCreateInputBuilder
    implements Builder<GUserCreateInput, GUserCreateInputBuilder> {
  _$GUserCreateInput? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  GUserCreateInputBuilder();

  GUserCreateInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserCreateInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserCreateInput;
  }

  @override
  void update(void Function(GUserCreateInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserCreateInput build() => _build();

  _$GUserCreateInput _build() {
    final _$result = _$v ??
        new _$GUserCreateInput._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'GUserCreateInput', 'email'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'GUserCreateInput', 'password'),
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, r'GUserCreateInput', 'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, r'GUserCreateInput', 'lastName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
