import 'package:flutter/material.dart';

class AppTextStyles {
  static const TextStyle labelTextStyle = TextStyle(
    color: Colors.white,
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w400,
    fontSize: 17,
    height: 1.29,
    letterSpacing: -0.41,
  );

  static const TextStyle inputTextStyle = TextStyle(
    color: Colors.white,
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w400,
    fontSize: 15,
    height: 1.33,
    letterSpacing: -0.24,
  );

  static const TextStyle buttonTextStyle = TextStyle(
    color: Colors.white,
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w700,
    fontSize: 17,
    height: 1.29,
    letterSpacing: -0.41,
  );
}

class AppButtonStyles {
  static final ButtonStyle okayButtonStyle = ElevatedButton.styleFrom(
    foregroundColor: Colors.white,
    backgroundColor: const Color.fromRGBO(64, 156, 255, 1),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  );
}

class AppInputDecoration {
  static final InputDecoration textFieldStyle = InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white, width: 1.0),
      borderRadius: BorderRadius.circular(8.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white, width: 1.5),
      borderRadius: BorderRadius.circular(8.0),
    ),
  );
}
