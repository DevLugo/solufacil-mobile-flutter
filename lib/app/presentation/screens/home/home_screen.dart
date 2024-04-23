import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:solufacil_mobile/app/presentation/blocs/authentication_cubit/authentication_cubit.dart';
import 'package:solufacil_mobile/data/remote/client.dart';
import 'package:solufacil_mobile/graphql/mutations/__generated__/auth.req.gql.dart';
import 'dart:math';
import 'package:flutter_bloc/flutter_bloc.dart';


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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
    print('incrementing counter');
    initClient().then((client) {
      final createReviewReq = GsignUpReq(
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
    });
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
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                    child: Text('Drawer Header'),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                  ),
                  ListTile(
                    title: Text('Item 1'),
                    onTap: () {
                      // Navigate to the route for Item 1
                      GoRouter.of(context).go('/item1');
                    },
                  ),
                  ListTile(
                    title: Text('Item 2'),
                    onTap: () {
                      // Navigate to the route for Item 2
                      GoRouter.of(context).go('/item2');
                    },
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.red, // Change this to your desired color
              child: ListTile(
                title: Text('Logout'),
                onTap: () {
                  // Log out the user
                  context.read<AuthenticationCubit>().logOut();
                },
              ),
            ),
          ],
      ),
      ),
      body: Center(
        child: Text('Main Screen'),
      ),
    );
  }
}