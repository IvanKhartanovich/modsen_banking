import 'package:flutter/material.dart';
import 'package:modsen_banking/core/constants/styles.dart';

class Label extends StatelessWidget {
  final String text;

  const Label(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: Text(text, style: AppTextStyles.labelTextStyle),
    );
  }
}
