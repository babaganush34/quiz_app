import 'dart:ui';
import 'package:flutter/material.dart';

extension PercentColorExtension on int {
  Color get scoreColor {
    final percent = this;
    if (percent >= 80) return Colors.green;
    if (percent >= 50) return Colors.orange;
    return Colors.red;
  }
}
