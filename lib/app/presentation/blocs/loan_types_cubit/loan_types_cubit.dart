import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solufacil_mobile/data/remote/client.dart';
import 'package:solufacil_mobile/graphql/queries/__generated__/loan.data.gql.dart';
import 'package:solufacil_mobile/graphql/queries/__generated__/loan.req.gql.dart';


class LoanTypesState {
  final bool? isLoading;
  final List<GGetLoanTypesData_getLoanTypes>? loanTypes;
  LoanTypesState({
    this.isLoading,
    this.loanTypes,
  });
  LoanTypesState copyWith({
    bool? isLoading,
    List<GGetLoanTypesData_getLoanTypes>? loanTypes,
  }) {
    return LoanTypesState(
      isLoading: isLoading ?? this.isLoading,
      loanTypes: loanTypes ?? this.loanTypes,
    );
  }
}


class LoanTypesCubit extends Cubit<LoanTypesState> {
  LoanTypesCubit() : super(LoanTypesState(isLoading: false, loanTypes: []));

  Future<void> fetchLoanTypes(
    BuildContext context,
  ) async {

    initClient(context).then((client) {
      final fetchLocationsRq = GGetLoanTypesReq();
      emit(state.copyWith(isLoading: true));
      client.request(fetchLocationsRq).listen((response) {
        if (response.data?.getLoanTypes != null) {
          if (response.data?.getLoanTypes != null) {
            emit(state.copyWith(
                isLoading: false,
                loanTypes: response.data?.getLoanTypes.toList()));
          } else {
            emit(state.copyWith(isLoading: false, loanTypes: []));
          }
        }
      });
    });
  }
}