import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:solufacil_mobile/app/presentation/blocs/location_cubit/location_cubit.dart';
import 'package:solufacil_mobile/app/presentation/screens/shared/drawer_menu/drawer_menu.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  MyAppBarState createState() => MyAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class MyAppBarState extends State<MyAppBar> {
  bool _isSearching = false;
  final _searchController = TextEditingController();

  List<String> routes = ['Route 1', 'Route 2', 'Route 3']; // Fake routes
  String currentRoute = 'Route 1'; // Default route

  @override
  void initState() {
    super.initState();
    // Call the getRoutes method here to fetch the routes
    getRoutes();
  }

  void getRoutes() {
    // Implement your logic to fetch the routes here
    // You can use an API call or any other method to retrieve the data
    // Once you have the data, update the localities list using setState
    // Example:
    // final routes = await yourApiCall();
    // setState(() {
    //   localities = routes;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: AnimatedCrossFade(
        firstChild: const Text('Localidades'),
        secondChild: TextField(
          controller: _searchController,
          decoration: const InputDecoration(
            hintText: 'Search',
            border: InputBorder.none,
          ),
          onChanged: (value) {
            // Implement your filter logic here
          },
        ),
        crossFadeState:
            _isSearching ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        duration: const Duration(milliseconds: 200),
      ),
      actions: [
        IconButton(
          icon: Icon(_isSearching ? Icons.close : Icons.search),
          onPressed: () {
            setState(() {
              _isSearching = !_isSearching;
              if (!_isSearching) {
                _searchController.clear();
              }
            });
          },
        ),
        TextButton.icon(
          icon: const Icon(Icons.map), // or Icons.directions
          label: Text(
            currentRoute,
            style: const TextStyle(
              color: Colors.blue, // Bright color
              fontWeight: FontWeight.bold, // Bold font weight
            ),
          ),
          onPressed: () {
            // Implement your route selection logic here
          },
        ),
        // Rest of your actions...
      ],
    );
  }
}

class LocalitiesScreen extends StatefulWidget {
  const LocalitiesScreen({super.key});

  @override
  LocalitiesScreenState createState() => LocalitiesScreenState();
}

class LocalitiesScreenState extends State<LocalitiesScreen> {
  List<Locality> localities =
      []; // Replace Locality with your actual model class

  String currentRoute = 'Route 1'; // Default route

  handleGetLocalities() async {
    // Implement your logic to fetch the localities here
    // You can use an API call or any other method to retrieve the data
    // Once you have the data, update the localities list using setState
    // Example:
    final locationCubit = context.read<LocationCubit>();
    await locationCubit.fetchLocations(context, "", "1");
  }

  @override
  void initState() {
    super.initState();
    // Call the getLocalities method here to fetch the localities
    handleGetLocalities();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: DrawerMenu(),
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<LocationCubit, LocationsState>(
              builder: (context, state) {
                if (state.isLoading ?? false) {
                  return const Center(child: CircularProgressIndicator());
                } else {
                  final localities = state.locations;
                  if (localities != null) {
                    if (localities.isEmpty) {
                      return Center(
                        child: Text(
                          'Sin resultados status: ${state.locations?.length} also ${state.isLoading}',
                          style:
                              TextStyle(fontSize: 24, color: Colors.grey[700]),
                        ),
                      );
                    } else {
                      return ListView.builder(
                        itemCount: localities.length,
                        itemBuilder: (context, index) {
                          final locality = localities[index];
                          if (locality == null) {
                            return const SizedBox.shrink();
                          }
                          // build your list item with locality
                          // assuming you have a widget called LocalityItem
                          return ExpansionTile(
                            title: RichText(
                              text: TextSpan(
                                style: DefaultTextStyle.of(context).style,
                                children: <TextSpan>[
                                  TextSpan(
                                    text: ' ${locality.name} ',
                                    style: const TextStyle(
                                      fontSize: 18, // Larger font size
                                      color: Colors
                                          .black87, // Dark color for important text
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' ${locality.municipality.name}, ',
                                    style: TextStyle(
                                      fontSize: 16, // Medium font size
                                      color:
                                          Colors.grey[700], // Dark grey color
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' ${locality.state?.name} ',
                                    style: TextStyle(
                                      fontSize: 14, // Smaller font size
                                      color:
                                          Colors.grey[700], // Dark grey color
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            children: <Widget>[
                              for (final lead in locality.leads)
                                InkWell(
                                  onTap: () {
                                    // Implement your onTap logic here
                                    GoRouter.of(context)
                                        .go('/localities/lead_resume/${lead.id}');
                                  },
                                  child: ListTile(
                                    title: Text(lead.personalData.fullName),
                                  ),
                                ),
                              // Add more details about the locality here
                            ],
                          );
                        },
                      );
                    }
                  } else {
                    return const Text('Something went wrong!');
                  }
                }
              },
            ),
          )
        ],
      ),
    );
  }
}

class Locality {
  final String name;
  final String state;
  final String municipalityName;
  final List<Lead> leads;

  Locality(
      {required this.name,
      required this.state,
      required this.municipalityName,
      required this.leads});
}

class Lead {
  final String name;

  Lead({required this.name});
}
