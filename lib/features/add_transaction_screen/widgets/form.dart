import 'dart:async';

import 'package:cubit_form/cubit_form.dart';

class AddTransactionFormCubit extends FormCubit {
  AddTransactionFormCubit() {
    companyName = FieldCubit<String>(
      initalValue: '',
      validations: [
        RequiredStringValidation('Company name is required'),
      ],
    );
    transactionNumber = FieldCubit<String>(
      initalValue: '',
      validations: [
        RequiredStringValidation('Transaction number is required'),
      ],
    );
    status = FieldCubit<String>(
      initalValue: '',
      validations: [
        RequiredStringValidation('Status is required'),
      ],
    );
    amount = FieldCubit<String>(
      initalValue: '',
      validations: [
        RequiredStringValidation('Amount is required'),
      ],
    );

    addFields([companyName, transactionNumber, status, amount]);
  }

  late final FieldCubit<String> companyName;
  late final FieldCubit<String> transactionNumber;
  late final FieldCubit<String> status;
  late final FieldCubit<String> amount;

  @override
  FutureOr<void> onSubmit() {
    // TODO: list с транзакциями
    throw UnimplementedError();
  }
}
