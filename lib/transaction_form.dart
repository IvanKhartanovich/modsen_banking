import 'package:flutter/material.dart';
import 'transaction.dart';
import 'styles.dart';

class TransactionForm extends StatelessWidget {
  final Transaction transaction;

  TransactionForm({required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildLabel('Transaction was applied in'),
        _buildReadOnlyField(transaction.companyName),
        _buildLabel('Transaction number'),
        _buildReadOnlyField(transaction.transactionNumber),
        _buildLabel('Date'),
        _buildReadOnlyField(transaction.date),
        _buildLabel('Transaction status'),
        _buildReadOnlyField(transaction.status),
        _buildLabel('Amount'),
        _buildReadOnlyField(transaction.amount),
        SizedBox(height: 24),
        Center(
          child: ElevatedButton(
            onPressed: () {
              // Добавьте здесь действие для кнопки
            },
            child: Text(
              'Okay',
              style: AppTextStyles.buttonTextStyle.copyWith(
                fontWeight: FontWeight.w700, // Увеличиваем жирность шрифта
              ),
            ),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Color(0xFF409CFF),
              minimumSize: Size(double.infinity, 48),
              padding: EdgeInsets.fromLTRB(13, 20, 13, 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLabel(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 8.0),
      child: Text(
        text,
        style: AppTextStyles.labelTextStyle,
      ),
    );
  }

  Widget _buildReadOnlyField(String initialValue) {
    return TextFormField(
      initialValue: initialValue,
      readOnly: true,
      style: AppTextStyles.inputTextStyle,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
      ),
    );
  }
}