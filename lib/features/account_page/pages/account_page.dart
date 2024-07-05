import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modsen_banking/features/account_page/widgets/transaction_card.dart';
import 'package:modsen_banking/features/transaction_info_screen/entities/transaction.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 1, 1),
      body: Padding(
        padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.042,
          right: MediaQuery.of(context).size.width * 0.042,
          top: MediaQuery.of(context).size.height * 0.016,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Account',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.011,
                bottom: MediaQuery.of(context).size.height * 0.03,
              ),
              height: 92,
              color: const Color.fromARGB(255, 28, 28, 30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Recent Transactions',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                GestureDetector(
                  child: const Text(
                    'VIEW ALL',
                    style: TextStyle(
                      color: Color.fromARGB(255, 64, 156, 255),
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  onTap: () => context.push('/transactions'),
                )
              ],
            ),
            const SizedBox(height: 16),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Container(
                color: const Color.fromARGB(255, 28, 28, 30),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    TransactionCard(
                      transaction: Transaction(
                        companyName: 'Hello world',
                        date: '30.06.2024',
                        amount: '15.0',
                        status: 'Declined',
                        transactionNumber: 'dddd',
                      ),
                    ),
                    const Divider(
                      color: Colors.white30,
                      height: 1,
                      thickness: 0.5,
                      indent: 16.0,
                      endIndent: 16.0,
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
                    const Divider(
                      color: Colors.white30,
                      height: 1,
                      thickness: 0.5,
                      indent: 16.0,
                      endIndent: 16.0,
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 64, 156, 255),
          onPressed: () => context.push('/addTransaction'),
          shape: const CircleBorder(),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
