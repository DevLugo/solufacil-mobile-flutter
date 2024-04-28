import 'package:flutter/material.dart';
import 'package:solufacil_mobile/app/presentation/screens/shared/drawer_menu/drawer_menu.dart';

class LeadResumeScreen extends StatefulWidget {
  @override
  _LeadResumeScreenState createState() => _LeadResumeScreenState();
}

class _LeadResumeScreenState extends State<LeadResumeScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  String leadName = 'Lead Name'; // Replace with your actual lead name

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              leadName,
              style: TextStyle(
                fontSize: 20, // Larger font size
                color: Colors.black, // White color
              ),
            ),
            Text(
              'Nicolas Bravo', // Replace with your actual locality name
              style: TextStyle(
                fontSize: 14, // Smaller font size
                color: Colors.black87, // Light grey color
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.date_range),
            onPressed: () {
              // Implement your date selection logic here
            },
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Cobros'),
            Tab(text: 'Aperturas'),
            Tab(text: 'Gastos'),
            Tab(text: 'Resumen'),
          ],
        ),
      ),
      drawer: DrawerMenu(),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Replace with your actual widgets
          Container(),
          Container(),
          Container(),
          Container(),
        ],
      ),
    );
  }
}
