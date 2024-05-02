import 'package:flutter/material.dart';

class Loan {
  final String fullName;
  final double amount;
  final bool isNew;

  Loan({required this.fullName, required this.amount, required this.isNew});
}

class GrantedLoansScreen extends StatelessWidget {
  final List<Loan> loans;

  GrantedLoansScreen({required this.loans});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Total: ${loans.length}'),
                      Text(
                          'Nuevos: ${loans.where((loan) => loan.isNew).length}'),
                      Text(
                          'Renovados: ${loans.where((loan) => !loan.isNew).length}'),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Comision: \$1,500'),
                      Text('Colocado: \$25,000'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: loans.length,
              itemBuilder: (context, index) {
                final loan = loans[index];
                return ListTile(
                  title: Text(loan.fullName),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Solicitado: \$5000'),
                          Text('Otorgado: \$4000'),
                        ],
                      ),
                      Text(loan.isNew ? 'Nuevo' : 'Renovado'),
                    ],
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.edit),
                        onPressed: () {
                          // Handle edit
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          // Handle delete
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      Positioned(
          right: 16,
          bottom: 16,
          child: FloatingActionButton(
            onPressed: () {
              // Handle create/grant a new loan
            },
            backgroundColor: const Color(0xFF89CFF0),
            child: const Icon(Icons.add),
          ),
        ),
    ]);
  }
}
