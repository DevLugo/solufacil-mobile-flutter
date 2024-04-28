import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solufacil_mobile/app/config/config.dart';
import 'package:solufacil_mobile/app/presentation/blocs/authentication_cubit/authentication_cubit.dart';
import 'package:solufacil_mobile/app/presentation/blocs/route_cubit/route_cubit.dart';
import 'package:solufacil_mobile/app/presentation/screens/home/home_screen.dart';
import 'package:solufacil_mobile/data/remote/client.dart';
import 'package:solufacil_mobile/graphql/mutations/__generated__/auth.ast.gql.dart';
import 'package:solufacil_mobile/graphql/mutations/__generated__/auth.req.gql.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = appRouter;

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
            return MaterialApp(home: Scaffold(body: Center(child: Text('Client is null'))));
          }
          return MultiBlocProvider(
            providers: [
              BlocProvider<AuthenticationCubit>(
                create: (context) => AuthenticationCubit(client),
              ),
              BlocProvider<RouteCubit>(
                create: (context) => RouteCubit(),
              ),
            ],
            child: MaterialApp.router(
              debugShowCheckedModeBanner: false,
              routerConfig: appRouter,
            ),
          );
        } else {
          return MaterialApp(home: Scaffold(body: Center(child: CircularProgressIndicator())));
        }
      },
    );
  }
}