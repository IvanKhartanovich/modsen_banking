import 'package:flutter/material.dart';
import 'widgets/bottom_sheet_content.dart';

class BottomSheetWidget {
  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return FractionallySizedBox(
          heightFactor: 0.46,
          child: Container(
            color: Colors.black,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: BottomSheetContent(),
            ),
          ),
        );
      },
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(40.0),
        ),
      ),
      isScrollControlled: true,
    );
  }
}
