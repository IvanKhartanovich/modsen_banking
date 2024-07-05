// Пользовательский виджет для элементов списка
import 'package:flutter/material.dart';
import 'package:modsen_banking/features/transaction_info_screen/entities/transaction.dart';
import 'package:modsen_banking/features/transaction_info_screen/pages/transaction_screen.dart';

class TransactionCard extends StatelessWidget {
  final Transaction transaction;

  const TransactionCard({
    required this.transaction,
    super.key,
  });

  Color _getColor() {
    switch (transaction.status) {
      case 'Executed':
        return const Color.fromARGB(255, 82, 171, 91);
      case 'In progress':
        return const Color.fromARGB(255, 241, 191, 55);
      case 'Declined':
        return const Color.fromARGB(255, 245, 103, 94);
      default:
        return const Color.fromARGB(255, 241, 191, 55);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      color: const Color.fromARGB(255, 28, 28, 30),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  transaction.companyName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '\$${transaction.amount}',
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                      GestureDetector(
                        child: const Text(
                          ' >',
                          style: TextStyle(
                            color: Colors.white30,
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                TransactionScreen(transaction: transaction),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                transaction.date,
                style: const TextStyle(
                  color: Colors.white60,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                transaction.status,
                style: TextStyle(
                  color: _getColor(),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
