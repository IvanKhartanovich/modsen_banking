import 'package:flutter/material.dart';
import 'package:modsen_banking/features/account_page/widgets/transaction_card.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color.fromARGB(255, 1, 1, 1),
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.042,
            right: MediaQuery.of(context).size.width * 0.042,
            top: MediaQuery.of(context).size.height * 0.016,
          ),
          child: Column(
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
                  )
                ],
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: ListView(
                    children: const [
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Positioned(
        bottom: 16.0,
        left: 16.0,
        child: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 64, 156, 255),
          onPressed: () {},
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
