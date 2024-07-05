import 'package:flutter/material.dart';
import 'package:modsen_banking/core/constants/styles.dart';
import '../../add_transaction_screen/widgets/label.dart';
import '../entities/transaction.dart';

class TransactionForm extends StatelessWidget {
  final Transaction transaction;

  const TransactionForm({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Label('Transaction was applied in'),
        TextFormField(
          initialValue: transaction.companyName,
          readOnly: true,
          style: AppTextStyles.inputTextStyle,
          decoration: AppInputDecoration.textFieldStyle,
        ),
        const Label('Transaction number'),
        TextFormField(
          initialValue: transaction.transactionNumber,
          readOnly: true,
          style: AppTextStyles.inputTextStyle,
          decoration: AppInputDecoration.textFieldStyle,
        ),
        const Label('Date'),
        TextFormField(
          initialValue: transaction.date,
          readOnly: true,
          style: AppTextStyles.inputTextStyle,
          decoration: AppInputDecoration.textFieldStyle,
        ),
        const Label('Transaction status'),
        TextFormField(
          initialValue: transaction.status,
          readOnly: true,
          style: AppTextStyles.inputTextStyle,
          decoration: AppInputDecoration.textFieldStyle,
        ),
        const Label('Amount'),
        TextFormField(
          initialValue: transaction.amount,
          readOnly: true,
          style: AppTextStyles.inputTextStyle,
          decoration: AppInputDecoration.textFieldStyle,
        ),
        const SizedBox(height: 30),
        Center(
          child: SizedBox(
            width: double.infinity,
            height: 48,
            child: ElevatedButton(
              onPressed: () {},
              style: AppButtonStyles.okayButtonStyle,
              child: const Text(
                'Okay',
                style: AppTextStyles.buttonTextStyle,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
