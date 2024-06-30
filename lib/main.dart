import 'package:flutter/material.dart';
import 'package:modsen_banking/widgets/calendar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Calendar(),
    );
  }
}

