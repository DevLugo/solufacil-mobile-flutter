import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solufacil_mobile/data/remote/client.dart';
import 'package:solufacil_mobile/graphql/queries/__generated__/employee.data.gql.dart';
import 'package:solufacil_mobile/graphql/queries/__generated__/employee.req.gql.dart';

class EmployeeState {
  final bool? isLoading;
  final GgetEmployeeData_getEmployee? employee;

  EmployeeState({
    this.isLoading,
    this.employee,
  });

  EmployeeState copyWith({
    bool? isLoading,
    GgetEmployeeData_getEmployee? employee,
  }) {
    return EmployeeState(
      isLoading: isLoading ?? this.isLoading,
      employee: employee ?? this.employee,
    );
  }
}

class EmployeeCubit extends Cubit<EmployeeState> {
  EmployeeCubit() : super(EmployeeState(isLoading: false, employee: null));
  StreamSubscription? _subscription;

  Future<void> fetchEmployee(
    BuildContext context,
    String employeeId,
  ) async {
    initClient(context).then((client) {
      final fetchEmployeeRq = GgetEmployeeReq(
        (b) => b.vars.where.id = employeeId,
      );
      emit(state.copyWith(isLoading: true));
      _subscription = client.request(fetchEmployeeRq).listen((response) {
        if (response.data?.getEmployee != null) {
          emit(state.copyWith(
              isLoading: false,
              employee: response.data?.getEmployee));
        } else {
          emit(state.copyWith(isLoading: false, employee: null));
        }
      });
    });
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}