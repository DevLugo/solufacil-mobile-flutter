import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:solufacil_mobile/__generated__/schema.schema.gql.dart';
import 'package:solufacil_mobile/data/remote/client.dart';
import 'package:solufacil_mobile/graphql/queries/__generated__/paymentSchedules.data.gql.dart';
import 'package:solufacil_mobile/graphql/queries/__generated__/paymentSchedules.req.gql.dart';
import 'package:built_collection/built_collection.dart';

enum PaymentScheduleState {
  initial,
  loading,
  success,
  failure,
}


class PaymentScheduleData {
  final List<ExtendedPaymentSchedule> payments;
  final PaymentScheduleState requestStatus;

  PaymentScheduleData({required this.payments, required this.requestStatus});
}

class ExtendedPaymentSchedule {
  final GgetPaymentSchedulesData_getPaymentSchedules original;
  final double payedAmount;

  ExtendedPaymentSchedule({
    required this.original,
  }) : payedAmount = double.parse(original.amountToPay.value);

  // You can add methods to access the original attributes if needed
  String get id => original.id;
  String get borrowerName => original.borrower.personalData.fullName;
  // Add other getters as needed
}


class PaymentScheduleCubit extends Cubit<PaymentScheduleData> {
  PaymentScheduleCubit() : super(PaymentScheduleData(payments: [], requestStatus: PaymentScheduleState.initial));
  StreamSubscription? _subscription;

Future<void> fetchPaymentSchedule(BuildContext context, String leadId, List<GPaymentState> paymentStates, GDateTime dueDate) async {
    try {
      emit(PaymentScheduleData(payments: [], requestStatus: PaymentScheduleState.loading));
      final client = await initClient(context);
      final fetchPaymentScheduleReq = GgetPaymentSchedulesReq(
        (b) {
          b.vars.where.leadId = leadId; // Replace with your actual lead ID
          b.vars.where.paymentState = ListBuilder<GPaymentState>(paymentStates);
           b.vars.where.dueDate = GDateTimeBuilder()
            ..value = DateFormat('yyyy-MM-dd').format(DateTime.parse(dueDate.value));
        },
      );

      _subscription = client.request(fetchPaymentScheduleReq).listen((response) {
        if (response.data?.getPaymentSchedules != null) {
          // Assuming you have a way to convert GraphQL payment schedules to your Payment model
          final payments = response.data!.getPaymentSchedules
              .map((schedule) => ExtendedPaymentSchedule(original: schedule))
              .toList();
              
          emit(PaymentScheduleData(payments: payments, requestStatus: PaymentScheduleState.success));

          // Do something with the fetched payments
          // ...
        } else {
          emit(PaymentScheduleData(payments: [], requestStatus: PaymentScheduleState.failure));
        }
      }, onError: (error) {
        emit(PaymentScheduleData(payments: [], requestStatus: PaymentScheduleState.failure));
      });
    } catch (e) {
      emit(PaymentScheduleData(payments: [], requestStatus: PaymentScheduleState.failure));
    }
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }

}
