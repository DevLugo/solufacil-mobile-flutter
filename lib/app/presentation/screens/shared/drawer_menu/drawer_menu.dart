import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:solufacil_mobile/app/presentation/blocs/authentication_cubit/authentication_cubit.dart';
import 'package:solufacil_mobile/app/presentation/blocs/route_cubit/route_cubit.dart';
import 'package:solufacil_mobile/graphql/queries/__generated__/route.data.gql.dart';

class DrawerMenu extends StatefulWidget {
  @override
  _DrawerMenuState createState() => _DrawerMenuState();
  //const DrawerMenu({Key? key}) : super(key: key);
}
class _DrawerMenuState extends State<DrawerMenu> {
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
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome, ${state.fullName}',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 8),
                          BlocBuilder<RouteCubit, List<GGetRoutesData_getRoutes>>(
                            builder: (context, state) {
                              return DropdownButton<String>(
                                value: state.isNotEmpty ? state.first.id : null,                                onChanged: (newValue) {
                                  /* context.read<RouteCubit>().s(newValue!); */
                                  /* GoRouter.of(context).go(newValue); */
                                },
                                items: state.map((route) {
                                  return DropdownMenuItem<String>(
                                    value: route.id,
                                    child: Text(route.name),
                                  );
                                }).toList(),
                              );
                            },
                          ),
                        ],
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text('Home'),
                  onTap: () {
                    // Navigate to the route for Item 1
                    GoRouter.of(context).go('/item1');
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
    );
  }
}
