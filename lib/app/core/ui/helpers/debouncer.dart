import 'dart:async';

import 'package:flutter/material.dart';

class Debouncer {
  final int milliseconds;
  VoidCallback? action;
  Timer _timer = Timer(Duration.zero, () {});

  Debouncer({required this.milliseconds});

  run(VoidCallback action) {
    if (_timer.isActive) {
      _timer.cancel();
    }
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }
}
