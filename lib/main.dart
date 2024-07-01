import 'package:flutter/material.dart';
import 'transaction_screen.dart';
import 'transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transaction UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TransactionScreen(
        transaction: Transaction(
          companyName: 'OOO "Company"',
          transactionNumber: 'f4345ifshiek3454',
          date: '01.06.2024',
          status: 'Executed',
          amount: '\$10.09',
        ),
      ),
    );
  }
}