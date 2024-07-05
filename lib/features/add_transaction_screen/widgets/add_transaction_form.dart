// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modsen_banking/features/add_transaction_screen/widgets/form.dart';
import 'text_input_cubit.dart';
import '../entities/transaction.dart';
import 'styles.dart';

class AddTransactionForm extends StatelessWidget {
  final Transaction transaction;

  const AddTransactionForm({Key? key, required this.transaction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AddTransactionFormCubit(transaction),
      child: Builder(
        builder: (context) {
          final formCubit = context.read<AddTransactionFormCubit>(); 

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Label('Transaction was applied in'),
              TextInputCubit(
                fieldCubit: formCubit.companyName,
                hintText: 'Company Name',
              ),
              const Label('Transaction number'),
              TextInputCubit(
                fieldCubit: formCubit.transactionNumber,
                hintText: 'Transaction Number',
              ),
              const Label('Transaction status'),
              TextInputCubit(
                fieldCubit: formCubit.status,
                hintText: 'Status',
              ),
              const Label('Amount'),
              TextInputCubit(
                fieldCubit: formCubit.amount,
                hintText: 'Amount',
              ),
              const SizedBox(height: 30),
              Center(
                child: SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: formCubit.trySubmit,
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
        },
      ),
    );
  }
}
