import 'package:flutter/material.dart';

class ErrorTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool hasError;
  final VoidCallback onTap;

  const ErrorTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.hasError,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: hasError ? Colors.red : Colors.grey,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: hasError ? Colors.red : Colors.grey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: hasError ? Colors.red : Colors.grey,
          ),
        ),
        suffixIcon: IconButton(
          icon: const Icon(Icons.calendar_month, color: Colors.white),
          onPressed: onTap,
        ),
        hintStyle: const TextStyle(color: Colors.grey),
      ),
      readOnly: true,
      style: const TextStyle(color: Colors.grey),
    );
  }
}
