import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solufacil_mobile/app/config/config.dart';
import 'package:solufacil_mobile/app/presentation/blocs/authentication_cubit/authentication_cubit.dart';
import 'package:solufacil_mobile/app/presentation/blocs/location_cubit/location_cubit.dart';
import 'package:solufacil_mobile/app/presentation/blocs/route_cubit/route_cubit.dart';
import 'package:solufacil_mobile/data/remote/client.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Client>(
      future: initClient(context),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return MaterialApp(home: Scaffold(body: Center(child: Text('Error: ${snapshot.error}'))));
          }
          final client = snapshot.data;
          if (client == null) {
            return const MaterialApp(home: Scaffold(body: Center(child: Text('Client is null'))));
          }
          return MultiBlocProvider(
            providers: [
              BlocProvider<AuthenticationCubit>(
                create: (context) => AuthenticationCubit(client),
              ),
              BlocProvider<RouteCubit>(
                create: (context) => RouteCubit(),
              ),
              BlocProvider<LocationCubit>(
                create: (context) => LocationCubit(),
              ),
            ],
            child: MaterialApp.router(
              debugShowCheckedModeBanner: false,
              routerConfig: appRouter,
            ),
          );
        } else {
          return const MaterialApp(home: Scaffold(body: Center(child: CircularProgressIndicator())));
        }
      },
    );
  }
}