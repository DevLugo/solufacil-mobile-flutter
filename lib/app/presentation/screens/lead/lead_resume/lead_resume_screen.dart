import 'package:flutter/material.dart';
import 'package:solufacil_mobile/app/presentation/screens/lead/lead_resume/granted_loans/granted_loans.dart';
import 'package:solufacil_mobile/app/presentation/screens/shared/drawer_menu/drawer_menu.dart';

class LeadResumeScreen extends StatefulWidget {
  final String leadId;
  
  LeadResumeScreen({required this.leadId});
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
                color: const Color.fromARGB(255, 81, 74, 74), // White color
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
          GrantedLoansScreen(loans: List<Loan>.generate(
        10,
        (index) => Loan(
          fullName: 'Person $index',
          amount: (index + 1) * 1000.0,
          isNew: index % 2 == 0,
        ),
      ),),
          Container(),
          Container(),
        ],
      ),
    );
  }
}
