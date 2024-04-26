import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:solufacil_mobile/app/presentation/blocs/authentication_cubit/authentication_cubit.dart';
import 'package:solufacil_mobile/app/presentation/screens/shared/drawer_menu/drawer_menu.dart';
import 'package:solufacil_mobile/data/remote/client.dart';
import 'package:solufacil_mobile/graphql/mutations/__generated__/auth.req.gql.dart';
import 'dart:math';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solufacil_mobile/graphql/queries/__generated__/route.req.gql.dart';


String generateRandomString(int length) {
  const _allowedChars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
  final _random = Random();

  return List.generate(length, (index) {
    return _allowedChars[_random.nextInt(_allowedChars.length)];
  }).join();
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
    });
    print('incrementing counter');
    /* initClient(context).then((client) {
      final createReviewReq = GSignUpReq(
        (b) => b
          ..vars.input.email = '${generateRandomString(10)}@example.com'
          ..vars.input.password = 'password'
          ..vars.input.firstName = 'John'
          ..vars.input.lastName = 'Doe'
      );
      print("requesting");
      client.request(createReviewReq).listen((response) {
        print("inside listen");
        print(response.data?.signUp);
      });
    }); */
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
      ),
      drawer: DrawerMenu(),
      body: Center(
        child: ButtonBar(
          alignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.read<AuthenticationCubit>().logOut();
              },
              child: const Text('Log Out'),
            ),
            ElevatedButton(
              onPressed: () {
                
              },
              child: const Text('Increment Counter'),
            ),
          ],
        )
        
        
      ),
    );
  }
}
