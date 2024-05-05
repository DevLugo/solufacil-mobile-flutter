import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solufacil_mobile/__generated__/schema.schema.gql.dart';
import 'package:solufacil_mobile/data/remote/client.dart';
import 'package:solufacil_mobile/graphql/mutations/__generated__/loan.req.gql.dart';

class LoanCubit extends Cubit<LoanState> {
  LoanCubit() : super(LoanInitial());

  // Add your methods and business logic here

  //create a method for create loan request
  Future<void> createLoanRequest(
    BuildContext context,
    GLoanCreateInput input,
  ) async {
    initClient(context).then((client) {
      final createLoanRq = GCreateLoanReq(
        (b) {
          b.vars.input.amountGived = GDecimalBuilder()
            ..value = input.amountGived.value;
          b.vars.input.firstPaymentDate = GDateBuilder()
            ..value = input.firstPaymentDate.value;
          b.vars.input.signDate = GDateBuilder()..value = input.signDate?.value;
          b.vars.input.loanTypeId = input.loanTypeId;
          b.vars.input.loanLeadId = input.loanLeadId;

          if (input.isRenovation == true) {
            b.vars.input.borrowerId = input.borrowerId;
          } else {
            b.vars.input.borrower.replace(GBorrowerCreateInput((b) => b
              ..email = input.borrower?.email
              ..personalData.replace(GCreatePersonalDataInput((b) => b
                ..firstName = input.borrower?.personalData?.firstName
                ..lastName = input.borrower?.personalData?.lastName
                ..curp = input.borrower?.personalData?.curp
                ..adresses.replace([
                  GCreateAddressInput((b) => b
                    ..exteriorNumber = input
                        .borrower?.personalData?.adresses?.first.exteriorNumber
                    ..interiorNumber = input
                        .borrower?.personalData?.adresses?.first.interiorNumber
                    ..postalCode =
                        input.borrower?.personalData?.adresses?.first.postalCode
                    ..references =
                        input.borrower?.personalData?.adresses?.first.references
                    ..street =
                        input.borrower?.personalData?.adresses?.first.street)
                ])
              ))
            ));
            b.vars.input.avals.replace([
              GCreatePersonalDataInput((b) => b
                ..firstName = input.avals?.first.firstName
                ..lastName = input.avals?.first.lastName
                ..curp = input.avals?.first.curp
                ..adresses.replace([
                  GCreateAddressInput((b) => b
                    ..exteriorNumber = input.avals?.first.adresses?.first.exteriorNumber
                    ..interiorNumber = input.avals?.first.adresses?.first.interiorNumber
                    ..postalCode = input.avals?.first.adresses?.first.postalCode
                    ..references = input.avals?.first.adresses?.first.references
                    ..street = input.avals?.first.adresses?.first.street)
                ])
              )
            ]);
          }
        },
      );
      client.request(createLoanRq).listen((response) {
        if (response.data?.createLoan != null) {
          //emit the response
          //emit(response.data?.createLoan);
        }
      
      });
    });
  }
}

abstract class LoanState {}

class LoanInitial extends LoanState {}

// Add more state classes here as needed