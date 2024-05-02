import 'package:flutter/material.dart';
import 'package:solufacil_mobile/app/presentation/blocs/authentication_cubit/authentication_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInScreen extends StatelessWidget {
  final String? title;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  
    SignInScreen({Key? key, this.title}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Sign In',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 32),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextFormField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    border: InputBorder.none,
                  ),
                  obscureText: true,
                ),
              ),
              const SizedBox(height: 32),
              BlocBuilder<AuthenticationCubit, AuthenticationState>(
                builder: (context, state) {
                  return ElevatedButton(
                    onPressed: state.isSubmitting
                        ? null
                        : () {
                            context.read<AuthenticationCubit>().authenticateUser(
                              context,
                              emailController.text,
                              passwordController.text,
                            );
                          },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                    ),
                    child: state.isSubmitting
                      ? const CircularProgressIndicator()
                      : const Text('Acceder'),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}