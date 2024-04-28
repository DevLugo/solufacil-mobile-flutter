import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:solufacil_mobile/app/presentation/screens/shared/drawer_menu/drawer_menu.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  _MyAppBarState createState() => _MyAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _MyAppBarState extends State<MyAppBar> {
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
      /* leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          //Navigator.pop(context);
        },
      ), */
      title: AnimatedCrossFade(
        firstChild: Text('Localidades'),
        secondChild: TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: 'Search',
            border: InputBorder.none,
          ),
          onChanged: (value) {
            // Implement your filter logic here
          },
        ),
        crossFadeState:
            _isSearching ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        duration: Duration(milliseconds: 200),
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
          icon: Icon(Icons.map), // or Icons.directions
          label: Text(
            currentRoute,
            style: TextStyle(
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
  @override
  _LocalitiesScreenState createState() => _LocalitiesScreenState();
}

class _LocalitiesScreenState extends State<LocalitiesScreen> {
  List<Locality> localities =
      []; // Replace Locality with your actual model class
  final _random = Random();

  String currentRoute = 'Route 1'; // Default route
  final _firstNames = ['John', 'Jane', 'Robert', 'Emma', 'Michael', 'Emily'];
  final _lastNames = [
    'Smith',
    'Johnson',
    'Williams',
    'Brown',
    'Jones',
    'Miller'
  ];
  String _generateRandomName() {
    final firstName = _firstNames[_random.nextInt(_firstNames.length)];
    final lastName = _lastNames[_random.nextInt(_lastNames.length)];
    return '$firstName $lastName';
  }

  @override
  void initState() {
    super.initState();
    // Call the getLocalities method here to fetch the localities
    localities = List<Locality>.generate(
        35,
        (index) => Locality(
              name: 'Locality ${index + 1}',
              state: 'State ${index + 1}',
              municipalityName: 'Municipality ${index + 1}',
              leads: List<Lead>.generate(
                  3, (index) => Lead(name: _generateRandomName())),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      drawer: DrawerMenu(),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: localities.length,
              itemBuilder: (context, index) {
                final locality = localities[index];
                return ExpansionTile(
                  title: RichText(
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        TextSpan(
                          text: locality.name,
                          style: TextStyle(
                            fontSize: 20, // Larger font size
                            color:
                                Colors.black87, // Dark color for important text
                          ),
                        ),
                        TextSpan(
                          text: ' ${locality.municipalityName}',
                          style: TextStyle(
                            fontSize: 16, // Medium font size
                            color: Colors.grey[700], // Dark grey color
                          ),
                        ),
                        TextSpan(
                          text: ' ${locality.state}',
                          style: TextStyle(
                            fontSize: 14, // Smaller font size
                            color: Colors.grey[700], // Dark grey color
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
                          GoRouter.of(context).go('/lead_resume');
                        },
                        child: ListTile(
                          title: Text(lead.name),
                        ),
                      ),
                    // Add more details about the locality here
                  ],
                );
              },
            ),
          ),
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
