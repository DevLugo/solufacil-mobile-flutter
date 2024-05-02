import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:solufacil_mobile/app/presentation/blocs/authentication_cubit/authentication_cubit.dart';
import 'package:solufacil_mobile/app/presentation/blocs/route_cubit/route_cubit.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({super.key});

  @override
  DrawerMenuState createState() => DrawerMenuState();
  //const DrawerMenu({Key? key}) : super(key: key);
}
class DrawerMenuState extends State<DrawerMenu> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<RouteCubit>().getRoutes(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    //Watch for changes on the authenticated user and after that, call the getRoutes from the RouteCubit
    return Drawer(
      child: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                BlocBuilder<AuthenticationCubit, AuthenticationState>(
                  builder: (context, state) {
                    return DrawerHeader(
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome, ${state.fullName}',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 8),
                        ],
                      ),
                    );
                  },
                ),
                ListTile(
                  title: const Text('Resumen'),
                  onTap: () {
                    // Navigate to the route for Item 1
                  },
                ),
                ListTile(
                  title: const Text('Localidades'),
                  onTap: () {
                    GoRouter.of(context).go('/localities');
                  },
                ),
                ListTile(
                  title: const Text('Balance'),
                  onTap: () {
                    // Navigate to the route for Item 1
                  },
                ),
                ListTile(
                  title: const Text('Solicitar Dinero'),
                  onTap: () {
                    // Navigate to the route for Item 1
                    
                  },
                ),
              ],
            ),
          ),
          Container(
            color: Colors.red, // Change this to your desired color
            child: ListTile(
              title: const Text('Logout'),
              onTap: () {
                // Log out the user
                context.read<AuthenticationCubit>().logOut();
              },
            ),
          ),
        ],
      ),
    );
  }
}
