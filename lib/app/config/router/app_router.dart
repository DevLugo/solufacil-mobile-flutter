import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solufacil_mobile/app/presentation/blocs/authentication_cubit/authentication_cubit.dart';
import 'package:solufacil_mobile/app/presentation/screens/auth/signin_screen.dart';
import 'package:solufacil_mobile/app/presentation/screens/home/home_screen.dart';

final appRouter = GoRouter(
  routes: [

    GoRoute(
      path: '/',
      builder: (context, state) {
        return BlocBuilder<AuthenticationCubit, AuthenticationStatus>(
          builder: (context, status) {
            if (status == AuthenticationStatus.authenticated) {
              return const MyHomePage(title: "UNO",);
            } else {
              return SignInScreen();
              //return const LoginScreen();
            }
          },
        );
      },
      //builder: (context, state) => const MyHomePage(title: "My Titleee",),
    ),

    /* GoRoute(
      path: '/simple-cubit',
      builder: (context, state) => const CubitScreen(),
    ),

    GoRoute(
      path: '/cubit-router',
      builder: (context, state) => const RouterScreen(),
    ),

    GoRoute(
      path: '/cubit-state',
      builder: (context, state) => const MultipleCubitScreen(),
    ),

    GoRoute(
      path: '/guest-bloc',
      builder: (context, state) => const GuestsScreen(),
    ),

    GoRoute(
      path: '/pokemon-bloc',
      builder: (context, state) => const PokemonScreen(),
    ),

    GoRoute(
      path: '/blocs-with-blocs',
      builder: (context, state) => const BlocsWithBlocsScreen(),
    ),
 */


  ]);