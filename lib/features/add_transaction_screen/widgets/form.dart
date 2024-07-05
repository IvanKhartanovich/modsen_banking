
import 'package:cubit_form/cubit_form.dart'; 
import '../entities/transaction.dart';

class AddTransactionFormCubit extends FormCubit {
  AddTransactionFormCubit(Transaction transaction) {
    companyName = FieldCubit<String>(
      initialValue: transaction.companyName,
      validations: [
        RequiredStringValidation('Company name is required'),
      ],
    );
    transactionNumber = FieldCubit<String>(
      initialValue: transaction.transactionNumber,
      validations: [
        RequiredStringValidation('Transaction number is required'),
      ],
    );
    status = FieldCubit<String>(
      initialValue: transaction.status,
      validations: [
        RequiredStringValidation('Status is required'),
      ],
    );
    amount = FieldCubit<String>(
      initialValue: transaction.amount,
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
  Future<void> onSubmit() async {

  }
}
