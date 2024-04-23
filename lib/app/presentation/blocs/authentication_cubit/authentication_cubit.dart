
import 'package:flutter_bloc/flutter_bloc.dart';

enum AuthenticationStatus { authenticated, unauthenticated }

class AuthenticationCubit extends Cubit<AuthenticationStatus> {
  AuthenticationCubit() : super(AuthenticationStatus.unauthenticated);

  // Call this method when the user logs in
  void logIn() => emit(AuthenticationStatus.authenticated);

  // Call this method when the user logs out
  void logOut() => emit(AuthenticationStatus.unauthenticated);
}