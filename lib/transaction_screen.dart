import 'package:flutter/material.dart';
import 'transaction_form.dart';
import 'transaction.dart'; // Импортируем модель

class TransactionScreen extends StatelessWidget {
  final Transaction transaction;

  TransactionScreen({required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Transaction',
          style: TextStyle(
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
        child: TransactionForm(transaction: transaction),
      ),

    );
  }
}