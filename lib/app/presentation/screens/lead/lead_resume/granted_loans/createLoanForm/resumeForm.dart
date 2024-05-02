import 'package:flutter/material.dart';
import 'package:powersync_flutter_demo/widgets/forms/createLoanForm/index.dart';

class LoanResumeForm extends StatelessWidget {
  final LoanFormState loanFormState;

  LoanResumeForm({required this.loanFormState});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        buildCard('Client Information', loanFormState.client),
        buildCard('Aval Information', loanFormState.aval),
        buildCard('Loan Information', loanFormState.loanConf),
      ],
    );
  }

  Widget buildCard(String title, dynamic data) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            ...data.toMap().entries.map((entry) {
              return Text('${entry.key}: ${entry.value}', style: TextStyle(fontSize: 16));
            }).toList(),
          ],
        ),
      ),
    );
  }
}