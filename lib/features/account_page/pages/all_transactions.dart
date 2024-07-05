import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modsen_banking/features/account_page/widgets/transaction_card.dart';
import 'package:modsen_banking/features/filter_window/widgets/bottom_sheet_content.dart';
import 'package:modsen_banking/features/transaction_info_screen/entities/transaction.dart';

class AllTransactions extends StatelessWidget {
  const AllTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
          ),
        ),
        title: const Text(
          'All transactions',
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => showModalBottomSheet(
              context: context,
              builder: (context) {
                return FractionallySizedBox(
                  heightFactor: 0.46,
                  child: Container(
                    color: Colors.black,
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: BottomSheetContent(),
                    ),
                  ),
                );
              },
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(40.0),
                ),
              ),
              isScrollControlled: true,
            ),
            icon: const Icon(
              Icons.more_horiz_rounded,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: ListView(children: [
            TransactionCard(
              transaction: Transaction(
                companyName: 'Hello world',
                date: '30.06.2024',
                amount: '15.0',
                status: 'Declined',
                transactionNumber: 'dddd',
              ),
            ),
            TransactionCard(
              transaction: Transaction(
                companyName: 'Modsen',
                date: '30.06.2024',
                amount: '15.0',
                status: 'Executed',
                transactionNumber: 'dddd',
              ),
            ),
            TransactionCard(
              transaction: Transaction(
                companyName: 'Modsen',
                date: '30.06.2024',
                amount: '15.0',
                status: 'In progress',
                transactionNumber: 'dddd',
              ),
            ),
            TransactionCard(
              transaction: Transaction(
                companyName: 'Modsen',
                date: '30.06.2024',
                amount: '15.0',
                status: 'In progress',
                transactionNumber: 'dddd',
              ),
            ),
            TransactionCard(
              transaction: Transaction(
                companyName: 'Modsen',
                date: '30.06.2024',
                amount: '15.0',
                status: 'In progress',
                transactionNumber: 'dddd',
              ),
            ),
            TransactionCard(
              transaction: Transaction(
                companyName: 'Modsen',
                date: '30.06.2024',
                amount: '15.0',
                status: 'In progress',
                transactionNumber: 'dddd',
              ),
            ),
            TransactionCard(
              transaction: Transaction(
                companyName: 'Modsen',
                date: '30.06.2024',
                amount: '15.0',
                status: 'In progress',
                transactionNumber: 'dddd',
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
