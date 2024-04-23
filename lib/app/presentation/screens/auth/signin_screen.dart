import 'package:flutter/material.dart';
import 'package:solufacil_mobile/app/presentation/blocs/authentication_cubit/authentication_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solufacil_mobile/data/remote/client.dart';
import 'package:solufacil_mobile/graphql/mutations/__generated__/auth.req.gql.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sign In',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 32),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: InputBorder.none,
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  // set the user as authenticated as atuthenticated
                  initClient().then((client) {
                    final createReviewReq = GSignInReq(
                      (b) => b
                        ..vars.input.email = '6cbVxMJOHu@example.com'
                        ..vars.input.password = 'password1'
                    );
                    print("requesting");
                    client.request(createReviewReq).listen((response) {
                      print("inside listen");
                      print(response.data?.signIn);
                      if(response.data?.signIn != null){
                        print("User is authenticated");
                        context.read<AuthenticationCubit>().logIn();
                      }else{
                        print("User is not authenticated");
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('Autenficación fallida'),
                              content: Text('Email o password incorrecto. Por favor, intenta de nuevo.'),
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
                  

                },
                child: Text('Sign In'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}