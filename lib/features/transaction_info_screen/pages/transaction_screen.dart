import 'package:flutter/material.dart';
import '../widgets/transaction_form.dart';
import '../entities/transaction.dart';

class TransactionScreen extends StatelessWidget {
  final Transaction transaction;

  const TransactionScreen({super.key, required this.transaction});

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
        padding: const EdgeInsets.all(16.0),
        child: TransactionForm(transaction: transaction),
      ),
      backgroundColor: Colors.black,
    );
  }
}