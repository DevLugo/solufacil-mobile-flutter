import 'dart:core';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:solufacil_mobile/__generated__/schema.ast.gql.dart';
import 'package:solufacil_mobile/__generated__/schema.schema.gql.dart';
import 'package:solufacil_mobile/data/remote/client.dart';
import 'package:solufacil_mobile/graphql/mutations/__generated__/payment.req.gql.dart';
import 'package:solufacil_mobile/graphql/mutations/__generated__/payment.var.gql.dart';
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
  double currentPaymentAmount;
  bool isChecked = true;
  int delayedPayments = 0;
  double delayedAmount = 0;

  ExtendedPaymentSchedule({
    required this.original,
    required this.delayedAmount,
    required this.delayedPayments,
    required this.currentPaymentAmount,
  });

  // You can add methods to access the original attributes if needed
  String get id => original.id;
  String get borrowerName => original.borrower.personalData.fullName;
  // Add other getters as needed
}

class PaymentScheduleCubit extends Cubit<PaymentScheduleData> {
  PaymentScheduleCubit()
      : super(PaymentScheduleData(
            payments: [], requestStatus: PaymentScheduleState.initial));
  StreamSubscription? _subscription;

  Future<void> fetchPaymentSchedule(
    BuildContext context,
    String leadId,
    List<GPaymentState> paymentStates,
    GDateTime startDate,
    GDateTime dueDate,
    bool onlyCurrentWeek,
  ) async {
    try {
      emit(PaymentScheduleData(
          payments: [], requestStatus: PaymentScheduleState.loading));
      final client = await initClient(context);
      print(dueDate.value);
      print(startDate.value);
      final fetchPaymentScheduleReq = GgetPaymentSchedulesReq(
        (b) {
          b.vars.where.leadId = leadId; // Replace with your actual lead ID
          b.vars.where.paymentState = ListBuilder<GPaymentState>(paymentStates);
          b.vars.where.dueDate = GDateTimeBuilder()..value = dueDate.value;
          b.vars.where.startDate = GDateTimeBuilder()..value = startDate.value;
        },
      );

      _subscription =
          client.request(fetchPaymentScheduleReq).listen((response) {
        if (response.data?.getPaymentSchedules != null) {
          /* // Assuming you have a way to convert GraphQL payment schedules to your Payment model
          final payments = response.data!.getPaymentSchedules
              .map((schedule) => ExtendedPaymentSchedule(original: schedule))
              .toList();
              
          emit(PaymentScheduleData(payments: payments, requestStatus: PaymentScheduleState.success)); */

          final schedules = response.data!.getPaymentSchedules;

          // Group by loanId
          final Map<String, List<GgetPaymentSchedulesData_getPaymentSchedules>>
              groupedSchedules = {};
          for (var schedule in schedules) {
            final loanId = schedule.loanId;
            if (!groupedSchedules.containsKey(loanId)) {
              groupedSchedules[loanId] = [];
            }
            groupedSchedules[loanId]!.add(schedule);
          }

          // Process each group
          final List<ExtendedPaymentSchedule> payments = [];
          groupedSchedules.forEach((loanId, schedules) {
            schedules.sort((a, b) => b.dueDate.value
                .compareTo(a.dueDate.value)); // Sort by due date descending
            final latestSchedule = schedules.first;

            final delayedPayments = schedules.skip(1).fold(
                0,
                (sum, schedule) =>
                    sum + double.parse(schedule.pendingAmount.value).toInt());
            final delayedAmount = schedules.skip(1).fold(
                0.0,
                (sum, schedule) =>
                    sum + double.parse(schedule.pendingAmount.value));
            final weeklyPendingAmount =
                double.parse(latestSchedule.weecklyPendingAmount.value);

            if (!(onlyCurrentWeek && weeklyPendingAmount <= 0)) {
              final currentPaymentAmount = onlyCurrentWeek
                  ? weeklyPendingAmount
                  : double.parse(latestSchedule.pendingAmount.value);

              payments.add(ExtendedPaymentSchedule(
                original: latestSchedule,
                delayedPayments: onlyCurrentWeek ? 0 : delayedPayments,
                delayedAmount: onlyCurrentWeek ? 0 : delayedAmount,
                currentPaymentAmount: currentPaymentAmount,
              ));
            }
          });

          emit(PaymentScheduleData(
              payments: payments, requestStatus: PaymentScheduleState.success));

          // Do something with the fetched payments
          // ...
        } else {
          emit(PaymentScheduleData(
              payments: [], requestStatus: PaymentScheduleState.failure));
        }
      }, onError: (error) {
        emit(PaymentScheduleData(
            payments: [], requestStatus: PaymentScheduleState.failure));
      });
    } catch (e) {
      emit(PaymentScheduleData(
          payments: [], requestStatus: PaymentScheduleState.failure));
    }
  }

  double getCheckedPaymentsSum() {
    return state.payments
        .where((payment) => payment.isChecked ?? false)
        .fold(0.0, (sum, payment) => sum + payment.currentPaymentAmount);
  }

  void togglePaymentChecked(int index, bool isChecked) {
    final updatedPayments = List<ExtendedPaymentSchedule>.from(state.payments);
    updatedPayments[index].isChecked = isChecked;
    emit(PaymentScheduleData(
        payments: updatedPayments, requestStatus: state.requestStatus));
  }

  void updateCurrentPaymentByIdx(int index, double newAmount) {
    final updatedPayments = List<ExtendedPaymentSchedule>.from(state.payments);
    if (index >= 0 && index < updatedPayments.length) {
      updatedPayments[index].currentPaymentAmount = newAmount;
      emit(PaymentScheduleData(
          payments: updatedPayments, requestStatus: state.requestStatus));
    }
  }

  Future<void> payMultiplePayments(
      BuildContext context, GDateTime paymentDate, String? levelId) async {
    /* final updatedPayments = List<ExtendedPaymentSchedule>.from(state.payments);
    for (final payment in paymentIndexes) {
      if (index >= 0 && index < updatedPayments.length) {
        updatedPayments[index].isChecked = false;
      }
    } */
    //emit(PaymentScheduleData(payments: updatedPayments, requestStatus: state.requestStatus));

    final paymentsToPay = state.payments
        .asMap()
        .entries
        .where((entry) => entry.value.isChecked)
        .map((entry) => entry.value)
        .toList();

    final paymentIds = paymentsToPay.map((payment) => payment.id).toList();

    // Make the GraphQL request to pay the selected payments
    // Replace `yourMutation` with the actual mutation name from your GraphQL schema

    final payMultiplePaymentsReq = GpayMultiplePaymentsReq(
      (b) {
        b.vars.input = ListBuilder<GPayLoanPaymentInput>(
          paymentsToPay
              .map(
                (payment) => GPayLoanPaymentInput(
                  (b) {
                    b.amount = GDecimalBuilder()
                      ..value = payment.currentPaymentAmount
                          .toString(); // Convert double to GDecimalBuilder
                    b.paidDate = GDateTimeBuilder()..value = paymentDate.value;
                    b.loanId = payment.original
                        .loanId; // Ensure loan getter is correctly accessed
                  },
                ),
              )
              .toList(), // Convert the iterable to a list
        );
      },
    );

    // Send the request and handle the response
    final client =
        await initClient(context); // Add this line to initialize the client
    final response = await client.request(payMultiplePaymentsReq).first;

    /* client.request(payMultiplePaymentsReq).listen((response) {
      // Handle the response here
      // ...
    }, onError: (error) {
      // Handle the error here
      // ...
    }); */
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
