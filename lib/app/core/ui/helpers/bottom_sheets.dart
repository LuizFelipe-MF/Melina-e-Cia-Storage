import 'package:flutter/material.dart';

mixin BottomSheets<T extends StatefulWidget> on State<T> {
  void showModalBottomSheets(Widget child) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Center(child: child),
    );
  }
}
