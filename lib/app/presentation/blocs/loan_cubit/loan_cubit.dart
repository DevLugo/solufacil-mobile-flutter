import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solufacil_mobile/__generated__/schema.schema.gql.dart';
import 'package:solufacil_mobile/app/presentation/screens/lead/lead_resume/granted_loans/createLoanForm/index.dart';
import 'package:solufacil_mobile/data/remote/client.dart';
import 'package:solufacil_mobile/graphql/mutations/__generated__/loan.data.gql.dart';
import 'package:solufacil_mobile/graphql/mutations/__generated__/loan.req.gql.dart';

class LoanCubit extends Cubit<LoanCreationState> {
  LoanCubit() : super(LoanCreationState(isSubmitting: false, status: LoanStatus.undefined, errorMessage: null));

  // Add your methods and business logic here

  //create a method for create loan request
  Future<void> createLoanRequest(
    BuildContext context,
    LoanFormState input,
    String locationId,
  ) async {
    context.read<LoanCubit>().emit(LoanCreationState(isSubmitting: true, status: LoanStatus.undefined, errorMessage: null));

    initClient(context).then((client) {
      try {
        
      
      final createLoanRq = GCreateLoanReq(
        (b) {
          b.vars.input.amountGived = input.loanConf?.givedAmount;
          b.vars.input.firstPaymentDate = GDateBuilder()
            ..value = input.loanConf?.firstPaymentDate?.toIso8601String().split('T')[0];
          b.vars.input.signDate = GDateBuilder()
            ..value = input.loanConf?.signDate?.toIso8601String().split('T')[0];
          b.vars.input.loanTypeId = input.loanConf?.loanTypeId;
          b.vars.input.loanLeadId = input.leadId;
          b.vars.input.isRenovation = false;

          /* if (input.isRenovation == true) {
            b.vars.input.borrowerId = input.borrowerId; */
          if (false) {
            b.vars.input.borrowerId = input.leadId;
          } else {
            try {
              b.vars.input.borrower.replace(GBorrowerCreateInput((b) => b
                ..email = input.client?.email
                ..personalData.replace(GCreatePersonalDataInput((b) => b
                  ..firstName = input.client?.firstName
                  ..lastName = input.client?.lastName
                  ..curp = input.client?.curp
                  ..birthDate = (input.client?.birthDate != null) ? (GDateBuilder()..value = input.client!.birthDate!.toIso8601String().split('T')[0]) : null
                  ..phones.replace([
                    GCreatePhoneInput((b) => b
                      ..number = "123123"
                    )
                  ])
                  ..adresses.replace([
                    GCreateAddressInput((b) => b
                      ..exteriorNumber = input.client?.exteriorNumber
                      ..interiorNumber = input.client?.internalNumber
                      ..postalCode = input.client?.postalCode
                      ..references = input.client?.references
                      ..locationId = locationId
                      ..street = input.client?.street)
                  ])))));
            } catch (e) {
              print(e);
            }
            /* try {
            
            b.vars.input.avals.replace([GBorrowerCreateInput((b) => b
  ..email = input.aval?.email
  ..personalData.replace(GCreatePersonalDataInput((b) => b
    ..firstName = input.aval?.firstName
    ..lastName = input.aval?.lastName
    ..curp = input.aval?.curp
    ..adresses.replace([
      GCreateAddressInput((b) => b
        ..exteriorNumber = input.aval?.exteriorNumber
        ..interiorNumber = input.aval?.internalNumber
        ..postalCode = input.aval?.postalCode
        ..references = input.aval?.references
        ..street = input.aval?.street
     )
    ])
  ))
)]);
            } catch (e) {
              print(e);
            } */
          }
        });
        try{
          final response = client.request(createLoanRq);
          if (response != null) {
            
            response.first.then((value) {
              if(value.hasErrors){
                context.read<LoanCubit>().emit(LoanCreationState(isSubmitting: false, status: LoanStatus.failed, errorMessage: "value.errors.toString()"));
              }else{
                context.read<LoanCubit>().emit(LoanCreationState(isSubmitting: false, status: LoanStatus.succeed, errorMessage: null));
              }
            });
          }else{
            context.read<LoanCubit>().emit(LoanCreationState(isSubmitting: true, status: LoanStatus.failed, errorMessage: "TODO: Error"));
          }
              //final loanResponse = GCreateLoanData_createLoan.fromJson(response.first.toJson());

          //return response as GCreateLoanData_createLoan;
        }catch(error){
          print(error);
          return Future.error(error); // Return the error
        }
        /* .listen((response) {
          
        }, onError: (e) {
          // Handle network or other request errors
          print("Request error: $e");
          //emit(LoanErrorState(e.toString()));
        }); */
      } catch (e) {
       print(e) ;
      }
      
    });
  }
}
enum LoanStatus { undefined, succeed, failed }

class LoanCreationState {
  final bool isSubmitting;
  final LoanStatus status;
  final String? errorMessage; // Nullable to represent undefined state

  LoanCreationState({
    required this.isSubmitting,
    this.status = LoanStatus.undefined, // Default to undefined
    this.errorMessage,
  });

  LoanCreationState copyWith({
    bool? isSubmitting,
    LoanStatus? status,
    String? errorMessage,
  }) {
    return LoanCreationState(
      isSubmitting: isSubmitting ?? this.isSubmitting,
      status: status ?? this.status,
      errorMessage: errorMessage, // Pass through, allowing it to be null (undefined)
    );
  }
}


// Add more state classes here as needed