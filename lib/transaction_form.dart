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
        AppTextWithPadding.label('Transaction was applied in'),
        TextFormField(
          initialValue: transaction.companyName,
          readOnly: true,
          style: AppTextStyles.inputTextStyle,
          decoration: AppInputDecoration.textFieldStyle,
        ),
        AppTextWithPadding.label('Transaction number'),
        TextFormField(
          initialValue: transaction.transactionNumber,
          readOnly: true,
          style: AppTextStyles.inputTextStyle,
          decoration:  InputDecoration(
            border: OutlineInputBorder(),
          ),
        ),
        AppTextWithPadding.label('Date'),
        TextFormField(
          initialValue: transaction.date,
          readOnly: true,
          style: AppTextStyles.inputTextStyle,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),
        ),
        AppTextWithPadding.label('Transaction status'),
        TextFormField(
          initialValue: transaction.status,
          readOnly: true,
          style: AppTextStyles.inputTextStyle,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),
        ),
        AppTextWithPadding.label('Amount'),
        TextFormField(
          initialValue: transaction.amount,
          readOnly: true,
          style: AppTextStyles.inputTextStyle,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 24),
        Center(
          child: ElevatedButton(
            onPressed: () {
            },
            child: Text(
              'Okay',
              style: AppTextStyles.buttonTextStyle.copyWith(
                fontWeight: FontWeight.w700, // Увеличиваем жирность шрифта
              ),
            ),
            style: AppButtonStyles.okayButtonStyle,
          ),
        ),
      ],
    );
  }
}