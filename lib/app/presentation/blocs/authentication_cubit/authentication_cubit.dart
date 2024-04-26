import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:solufacil_mobile/data/remote/client.dart';
import 'package:solufacil_mobile/graphql/mutations/__generated__/auth.req.gql.dart';
import 'package:solufacil_mobile/graphql/queries/__generated__/route.req.gql.dart';

enum AuthenticationStatus { authenticated, unauthenticated }

class AuthenticationState {
  final AuthenticationStatus status;
  final String fullName;
  final String? token;
  final bool isSubmitting;

  AuthenticationState({
    required this.fullName,
    required this.token,
    required this.status,
    this.isSubmitting = false,
  });
   AuthenticationState copyWith({
    String? fullName,
    String? token,
    AuthenticationStatus? status,
  }) {
    return AuthenticationState(
      fullName: fullName ?? this.fullName,
      token: token ?? this.token,
      status: status ?? this.status,
    );
  }
}

class AuthenticationCubit extends Cubit<AuthenticationState> {
  final Client client;

  AuthenticationCubit(this.client)
      : super(AuthenticationState(
          fullName: '',
          token: '',
          status: AuthenticationStatus.unauthenticated,
          isSubmitting: false,
        ));

  // Call this method when the user logs in
  void setData( 
    String fullName,
    String token,
    AuthenticationStatus status
  ){
    emit(state.copyWith(fullName: fullName, token: token, status: status));
  }

  void setSubmitting(bool isSubmitting) => emit(AuthenticationState(
        fullName: state.fullName,
        token: state.token,
        status: state.status,
        isSubmitting: isSubmitting,
      ));

  // Call this method when the user logs out
  void logOut() => emit(AuthenticationState(
        fullName: '',
        token
            : '',
        status: AuthenticationStatus.unauthenticated,
        ));

  void authenticateUser(BuildContext context, String email, String password) {
    initClient(context).then((client) {
      final createReviewReq = GSignInReq((b) => b
        /* ..vars.input.email = '6cbVxMJOHu@example.com'
          ..vars.input.password = 'password' */
        ..vars.input.email = '6cbVxMJOHu@example.com'
        ..vars.input.password = 'password');
      print("requesting");
      context.read<AuthenticationCubit>().setSubmitting(true);
      client.request(createReviewReq).listen((response) {
        print("inside listen");
        print(response.data?.signIn);
        if (response.data?.signIn != null) {
          print("User is authenticated");
          context.read<AuthenticationCubit>().setData(
            response.data!.signIn.user.employee.personalData.fullName,
            response.data!.signIn.token,
            AuthenticationStatus.authenticated
          );
          context.read<AuthenticationCubit>().setSubmitting(false);
        } else {
          print("User is not authenticated");
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Autenficación fallida'),
                content: Text(
                    'Email o password incorrecto. Por favor, intenta de nuevo.'),
                actions: <Widget>[
                  TextButton(
                    child: Text('OK'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        }
      });
    });
  }
}
