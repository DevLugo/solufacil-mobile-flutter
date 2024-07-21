import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';
import 'package:solufacil_mobile/__generated__/schema.schema.gql.dart';
import 'package:solufacil_mobile/app/presentation/blocs/paymentSchedule_cubit/payment_schedule_cubit.dart';
import 'package:solufacil_mobile/graphql/queries/__generated__/paymentSchedules.data.gql.dart';

class WeeklyPaymentsComponent extends StatefulWidget {
  final String borrowerId;
  final DateTime dueDate;

  WeeklyPaymentsComponent({
    required this.borrowerId,
    required this.dueDate,
  });

  @override
  _WeeklyPaymentsComponentState createState() =>
      _WeeklyPaymentsComponentState();
}

class _WeeklyPaymentsComponentState extends State<WeeklyPaymentsComponent> {
  bool payCommission = false; // State of payCommission
  int _selectedPaymentMethod = 0; // 0 for Efectivo, 1 for Transferencia
  List<bool> _selectedPayments = [];

  @override
  void initState() {
    super.initState();

    // Call fetchPaymentSchedule when the widget is initialized
    context.read<PaymentScheduleCubit>().fetchPaymentSchedule(
          context,
          widget.borrowerId,
          [GPaymentState.PARTIALLY_PAID, GPaymentState.PENDING, GPaymentState.PAID_OUT],
          GDateTime(widget.dueDate.toIso8601String()), // Corrected line
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Jose Perez',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Pagado: \$50,000',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Pendiente: \$100,000',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Text(
                  'Retrasado: \$500',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.bold, // Bold text
                  )
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Payment List'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [1, 2].map((payment) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                        'Payment: \$${400} on ${DateFormat('yyyy-MM-dd').format(DateTime.now())}'),
                  );
                }).toList(),
              ),
              onTap: () {
                // Handle the payment list action
              },
            ),
          ],
        ),
      ),
      body: BlocBuilder<PaymentScheduleCubit, PaymentScheduleData>(
        builder: (context, state) {
          if (state.requestStatus == PaymentScheduleState.loading) {
            return _buildLoading();
          } else if (state.requestStatus == PaymentScheduleState.success) {
            final payments = state.payments!;
            if (_selectedPayments.isEmpty) {
              _selectedPayments = List.filled(
                  payments.length, true); // Initialize with all selected
            }
            return _buildSuccess(state.payments);
          } else {
            return _buildFailure();
          }
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) {
                  String? selectedLevel;
                  String?
                      dropdownValue; // Define dropdownValue within the StatefulBuilder

                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ToggleButtons(
                        borderRadius: BorderRadius.circular(8.0),
                        borderColor: Colors.grey,
                        selectedBorderColor: Colors.blue,
                        fillColor: Colors.blue.withOpacity(0.2),
                        selectedColor: Colors.white,
                        color: Colors.black,
                        isSelected: [
                          _selectedPaymentMethod == 0,
                          _selectedPaymentMethod == 1
                        ],
                        onPressed: (int index) {
                          setState(() {
                            _selectedPaymentMethod = index;
                          });
                        },
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.attach_money),
                                Text('Efectivo'),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.credit_card),
                                Text('Transferencia'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SwitchListTile(
                        title: const Text('Pagar comisión'),
                        value: payCommission,
                        onChanged: (bool value) {
                          setState(() {
                            payCommission = value;
                          });
                        },
                      ),
                      if (payCommission) ...[
                        DropdownButton<String>(
                          hint: const Text('Nivel'), // Use const here
                          value: selectedLevel,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedLevel = newValue;
                            });
                          },
                          items: const <String>[
                            'Nivel 1',
                            'Nivel 2',
                            'Nivel 3'
                          ] // Use const here
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ],
                      const Padding(
                        // Use const here
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                            'Comisión a pagar: \$250.00'), // Use const here
                      ),
                    ],
                  );
                },
              );
            },
          );
        },
        icon: Icon(Icons.monetization_on),
        label: const Text('Recibir: \$50,000'),
        tooltip: 'Receive Money',
      ),
    );
  }

  Widget _buildLoading() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: ListTile(
            title: Container(
              width: double.infinity,
              height: 16.0,
              color: Colors.white,
            ),
            subtitle: Container(
              width: double.infinity,
              height: 16.0,
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }

Widget _buildSuccess(
    List<ExtendedPaymentSchedule> payments) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Resumen de Pagos',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Total a pagar: \$${10}', // Replace with your actual total to pay
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          'Numero de clientas: ${5}', // Replace with your actual number of clients
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          'Pendiente: \$${2}', // Replace with your actual pending amount
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          'CV: ${3}', // Replace with your actual CV
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
       SliverPersistentHeader(
          pinned: true,
          delegate: _SliverAppBarDelegate(
            minHeight: 60.0,
            maxHeight: 60.0,
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              alignment: Alignment.center,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Filtrar',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  // Handle filter logic here
                },
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              final payment = payments[index];
              return ListTile(
                title: Text(payment.original.borrower.personalData.fullName), // Replace with actual payment details
                subtitle: Row(
                  children: [
                    Text(
                      'Amount to pay: ${NumberFormat.currency(symbol: '\$', decimalDigits: 2).format(double.parse(payment.original.paidAmount.value))}',
                    ),
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        // Handle the edit amount action
                      },
                    ),
                  ],
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.history),
                      onPressed: () {
                        Scaffold.of(context).openEndDrawer();
                      },
                    ),
                  ],
                ),
                leading: Checkbox(
                  value: _selectedPayments[index],
                  onChanged: (bool? value) {
                    setState(() {
                      print('Checkbox value: $value');
                      _selectedPayments[index] = value ?? false;
                    });
                  },
                ),
              );
            },
            childCount: payments.length,
          ),
        ),
      ],
    ),
  );
}

  Widget _buildFailure() {
    return Center(
      child: Text('Failed to load payments'),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}