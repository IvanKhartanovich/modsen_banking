// Пользовательский виджет для элементов списка
import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  final String title;
  final String date;
  final String amount;
  final String status;

  const TransactionCard(
      {required this.title,
      required this.date,
      required this.amount,
      required this.status,
      super.key});

  Color getColor() {
    switch (status) {
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
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 95,
          color: const Color.fromARGB(255, 28, 28, 30),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
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
                        amount,
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
                              fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ))
                ],
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  date,
                  style: const TextStyle(
                      color: Colors.white60,
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  status,
                  style: TextStyle(
                      color: getColor(),
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ]),
          ),
        ),
        const Divider(
          color: Colors.white30,
          height: 1,
          thickness: 0.5,
          indent: 16.0,
          endIndent: 16.0,
        )
      ],
    );
  }
}
