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
  int? _editingIndex;
  TextEditingController? _controller;
  FocusNode? _focusNode;
  bool payCommission = false; // State of payCommission
  int _selectedPaymentMethod = 0; // 0 for Efectivo, 1 for Transferencia
  List<bool> _selectedPayments = [];

  @override
  void dispose() {
    _controller?.dispose();
    //_focusNode?.dispose();
    super.dispose();
  }

  void _startEditing(int index, double currentAmount) {
    setState(() {
      _editingIndex = index;
      _controller = TextEditingController(text: currentAmount.toString());
    });
  }

  void _stopEditing() {
    setState(() {
      _editingIndex = null;
      _controller?.dispose();
      _controller = null;
    });
  }

  void _saveEdit(int index) {
    final newAmount = double.tryParse(_controller!.text);
    if (newAmount != null) {
      context
          .read<PaymentScheduleCubit>()
          .updateCurrentPaymentByIdx(index, newAmount);
    }
    _stopEditing();
  }

  @override
  void initState() {
    super.initState();

    // Call fetchPaymentSchedule when the widget is initialized
    context.read<PaymentScheduleCubit>().fetchPaymentSchedule(
          context,
          widget.borrowerId,
          [
            GPaymentState.PARTIALLY_PAID,
            GPaymentState.PENDING,
            //GPaymentState.PAID_OUT
          ],
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
                  Text('Retrasado: \$500',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.bold, // Bold text
                      )),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            /* ListTile(
              title: Text('Payment List'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [1].map((payment) {
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
            ), */
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
      floatingActionButton:
          BlocBuilder<PaymentScheduleCubit, PaymentScheduleData>(
        builder: (context, payments) {
          double totalAmountToReceive =
              context.read<PaymentScheduleCubit>().getCheckedPaymentsSum();
          String formattedTotalAmount =
              NumberFormat.currency(symbol: '\$', decimalDigits: 2)
                  .format(totalAmountToReceive);
          return FloatingActionButton.extended(
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ToggleButtons(
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.attach_money),
                                      Text('Efectivo'),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
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
                                  .map<DropdownMenuItem<String>>(
                                      (String value) {
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Total Pagos: \$${20}',
                                  style: TextStyle(
                                    fontSize: 24.0, // Larger font size
                                    fontWeight:
                                        FontWeight.bold, // Bold font weight
                                    color: Colors
                                        .black, // You can change the color if needed
                                  ),
                                ),
                                Text(
                                  'Comision por pagos (5x15): \$${20}',
                                  style: TextStyle(
                                    fontSize: 24.0, // Larger font size
                                    fontWeight:
                                        FontWeight.bold, // Bold font weight
                                    color: Colors
                                        .black, // You can change the color if needed
                                  ),
                                ),

                                // Add other widgets here
                              ],
                            ),
                          ),
                          const Divider(), // Use const here
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Total a recibir:',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  formattedTotalAmount,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: () {
                                final DateTime currentDate =
                                    DateTime.now(); // Get the current date
                                final GDateTime gDateTime = GDateTime(currentDate
                                    .toIso8601String()); // Convert DateTime to GDateTime

                                context
                                    .read<PaymentScheduleCubit>()
                                    .payMultiplePayments(
                                      context,
                                      gDateTime,
                                      null, // Replace with your actual payment method
                                    )
                                    .then((_) {
                                  // Call the method to refresh the list of payments
                                  context
                                      .read<PaymentScheduleCubit>()
                                      .fetchPaymentSchedule(
                                        context,
                                        widget.borrowerId,
                                        [
                                          GPaymentState.PARTIALLY_PAID,
                                          GPaymentState.PENDING,
                                          //GPaymentState.PAID_OUT
                                        ],
                                        GDateTime(
                                            widget.dueDate.toIso8601String()),
                                      );
                                });
                              },
                              child: Text('Confirmar'),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
              );
            },
            icon: Icon(Icons.monetization_on),
            label: Text(
              'Recibir: $formattedTotalAmount',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
          );
        },
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

  Widget _buildSuccess(List<ExtendedPaymentSchedule> payments) {
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
                padding: EdgeInsets.symmetric(horizontal: 0.0),
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
                Color? rowColor;
                if (index == 0) {
                  rowColor = Color(0xFFFFC1C1);
                } else if (index <= 2) {
                  rowColor = Color(0xFFFFF9C4);
                } else {
                  rowColor = null; // No background color
                }
                //final payment = payments[index];
                /* final TextEditingController controller = TextEditingController(
                  text: payment.currentPaymentAmount.toString(),
                ); */
                //final FocusNode focusNode = FocusNode();
                final isEditing = _editingIndex == index;
                if (isEditing) {
                  _controller ??= TextEditingController(
                      text: payment.currentPaymentAmount.toString());
                  _focusNode ??= FocusNode();
                }

                return Container(
                    color: rowColor,
                    child: ListTile(
                      title: Text(payment.original.borrower.personalData
                          .fullName), // Replace with actual payment details
                      subtitle: Row(
                        children: [
                          Expanded(
                            child: Focus(
                              onFocusChange: (hasFocus) {
                                if (!hasFocus && isEditing) {
                                  _saveEdit(index);
                                }
                              },
                              child: TextField(
                                controller: isEditing
                                    ? _controller
                                    : TextEditingController(
                                        text: NumberFormat.currency(symbol: '\$').format(payment.currentPaymentAmount)),
                                focusNode: isEditing ? _focusNode : null,
                                keyboardType: TextInputType.numberWithOptions(
                                    decimal: true),
                                decoration: InputDecoration(
                                  border: isEditing
                                      ? OutlineInputBorder()
                                      : InputBorder.none,
                                  isDense: true,
                                ),
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                ),
                                enabled: isEditing,
                                onSubmitted: (_) => _saveEdit(index),
                              ),
                            ),
                          ),
                          if (isEditing)
                            IconButton(
                              icon: Icon(Icons.check),
                              onPressed: () {
                                _saveEdit(index);
                              },
                            ),
                          if (!isEditing)
                            IconButton(
                              icon: Icon(Icons.edit),
                              onPressed: () => _startEditing(
                                  index, payment.currentPaymentAmount),
                            ),
                          if (payment.delayedAmount > 0)
                            Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.warning,
                                color: Colors.red,
                                size: 16.0,
                              ),
                              SizedBox(width: 4.0),
                              Text(
                                'cv: ${NumberFormat.currency(symbol: '\$').format(payment.delayedAmount)}',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 14.0,
                                ),
                              ),
                            ],
                          ),
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
                        value: payment.isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            context
                                .read<PaymentScheduleCubit>()
                                .togglePaymentChecked(index, value!);
                          });
                        },
                      ),
                    )
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
