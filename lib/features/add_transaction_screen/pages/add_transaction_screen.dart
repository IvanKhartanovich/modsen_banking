import 'package:flutter/material.dart';
import '../widgets/add_transaction_form.dart';
import '../entities/transaction.dart';

class AddTransactionScreen extends StatelessWidget {
  final Transaction transaction;

  AddTransactionScreen({required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Transaction',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.bold,
            fontSize: 28,
            height: 1.21,
            letterSpacing: 0.36,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: AddTransactionForm(transaction: transaction),
      ),
      backgroundColor: Colors.black,
    );
  }
}