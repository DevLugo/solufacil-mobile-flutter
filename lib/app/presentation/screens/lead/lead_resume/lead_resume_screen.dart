import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solufacil_mobile/app/presentation/blocs/employee_cubit/employee_cubit.dart';
import 'package:solufacil_mobile/app/presentation/blocs/location_cubit/location_cubit.dart';
import 'package:solufacil_mobile/app/presentation/screens/lead/lead_resume/granted_loans/granted_loans.dart';
import 'package:solufacil_mobile/app/presentation/screens/lead/lead_resume/weekly_payments/weekly_payments.dart';
import 'package:solufacil_mobile/app/presentation/screens/shared/drawer_menu/drawer_menu.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:intl/intl.dart';

class LeadResumeScreen extends StatefulWidget {
  final String leadId;
   

  LeadResumeScreen({required this.leadId});
  @override
  _LeadResumeScreenState createState() => _LeadResumeScreenState();
}

DateTime _getNextSundayLastMinute() {
  final now = DateTime.now();
  final nextSunday = now.add(Duration(days: DateTime.sunday - now.weekday));
  return DateTime(nextSunday.year, nextSunday.month, nextSunday.day, 23, 59, 59);
}


class _LeadResumeScreenState extends State<LeadResumeScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  String leadName = 'Lead Name'; // Replace with your actual lead name

  fetchEmployee() async {
    // Implement your employee fetching logic here
    context.read<EmployeeCubit>().fetchEmployee(context, widget.leadId);
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    //call the employeeCubit and retrieve the employee data
    fetchEmployee();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmployeeCubit, EmployeeState>(builder: (context, state) {
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
                state.employee?.personalData?.fullName ?? leadName, // Replace with your actual lead name
                style: TextStyle(
                  fontSize: 20, // Larger font size
                  color: const Color.fromARGB(255, 81, 74, 74), // White color
                ),
              ),
              Text(
                state.employee?.personalData?.addresses[0]?.location?.name ?? '', // Replace with your actual locality name
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
            //add the following parameters to the WeeklyPaymentsComponent component, borrowerId, startDate, endDate
            WeeklyPaymentsComponent(
              borrowerId: widget.leadId,
              dueDate: _getNextSundayLastMinute(),
            ),
            GrantedLoansScreen(
              loans: List<Loan>.generate(
                10,
                (index) => Loan(
                  fullName: 'Person $index',
                  amount: (index + 1) * 1000.0,
                  isNew: index % 2 == 0,
                ),
              ),
              leadId: widget.leadId,
              locationId:
                  state.employee?.personalData?.addresses[0].locationId ?? '',
                   ),
              Container(),
              Container(),
          ],
        ),
      );
    });
  }
}
