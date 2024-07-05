import 'package:flutter/material.dart';
import 'package:modsen_banking/features/account_page/widgets/transaction_card.dart';

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
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
          ),
        ),
        title: const Text(
          'All transactions',
          style: TextStyle(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz_rounded,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Expanded(
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: ListView(children: const [
              TransactionCard(
                title: 'Hello world',
                date: '30.06.2024',
                amount: '15.0',
                status: 'Declined',
              ),
              TransactionCard(
                title: 'Modsen',
                date: '30.05.2024',
                amount: '25.0',
                status: 'In progress',
              ),
              TransactionCard(
                title: 'Gift',
                date: '25.06.2024',
                amount: '100.0',
                status: 'Executed',
              ),
              TransactionCard(
                title: 'Hello world',
                date: '30.06.2024',
                amount: '15.0',
                status: 'Declined',
              ),
              TransactionCard(
                title: 'Modsen',
                date: '30.05.2024',
                amount: '25.0',
                status: 'In progress',
              ),
              TransactionCard(
                title: 'Gift',
                date: '25.06.2024',
                amount: '100.0',
                status: 'Executed',
              ),
              TransactionCard(
                title: 'Hello world',
                date: '30.06.2024',
                amount: '15.0',
                status: 'Declined',
              ),
              TransactionCard(
                title: 'Modsen',
                date: '30.05.2024',
                amount: '25.0',
                status: 'In progress',
              ),
              TransactionCard(
                title: 'Gift',
                date: '25.06.2024',
                amount: '100.0',
                status: 'Executed',
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
