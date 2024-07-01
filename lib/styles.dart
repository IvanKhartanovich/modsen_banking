import 'package:flutter/material.dart';

class AppTextStyles {
  static const TextStyle labelTextStyle = TextStyle(
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w400,
    fontSize: 17,
    height: 1.29,
    letterSpacing: -0.41,
  );

  static const TextStyle inputTextStyle = TextStyle(
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w400,
    fontSize: 15,
    height: 1.33,
    letterSpacing: -0.24,
  );

  static const TextStyle buttonTextStyle = TextStyle(
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w700,
    fontSize: 17,
    height: 1.29,
    letterSpacing: -0.41,
  );
}

class AppColors {
  static const Color primaryColor = Color(0xFF409CFF);
  static const Color backgroundColor = Colors.white;
}

class AppButtonStyles {
  static final ButtonStyle okayButtonStyle = ElevatedButton.styleFrom(
    foregroundColor: Colors.white,
    backgroundColor: Color(0xFF409CFF),
    minimumSize: Size(double.infinity, 48),
    padding: EdgeInsets.fromLTRB(13, 20, 13, 20),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  );
}

class AppTextWithPadding {
  static Widget label(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: Text(text, style: AppTextStyles.labelTextStyle),
    );
  }
}

class AppInputDecoration {
  static const InputDecoration textFieldStyle = InputDecoration(
    border: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.green, width: 3.0),
    ),
  );
}