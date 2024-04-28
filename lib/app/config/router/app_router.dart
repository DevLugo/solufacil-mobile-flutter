import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solufacil_mobile/app/presentation/blocs/authentication_cubit/authentication_cubit.dart';
import 'package:solufacil_mobile/app/presentation/screens/auth/signin_screen.dart';
import 'package:solufacil_mobile/app/presentation/screens/home/home_screen.dart';
import 'package:solufacil_mobile/app/presentation/screens/lead/lead_resume/lead_resume_screen.dart';
import 'package:solufacil_mobile/app/presentation/screens/locality/localities_screen.dart';

final appRouter = GoRouter(
  routes: [

    GoRoute(
      path: '/',
      builder: (context, state) {
        return BlocBuilder<AuthenticationCubit, AuthenticationState>(
          builder: (context, state) {
            if (state.status == AuthenticationStatus.authenticated) {
              return MyHomePage(title: AuthenticationStatus.authenticated.toString());
            } else {
              return SignInScreen(title: state.fullName);
            }
          },
        );
      },
      //builder: (context, state) => const MyHomePage(title: "My Titleee",),
    ),

    GoRoute(
      path: '/localities',
      builder: (context, state) => LocalitiesScreen(),
    ),
    GoRoute(
      path: '/lead_resume',
      builder: (context, state) => LeadResumeScreen(),
    ),
    /* 

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
    ), */


  ]);