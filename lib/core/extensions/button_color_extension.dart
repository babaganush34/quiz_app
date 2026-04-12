import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:qwiz_app/features/quiz/presentation/widgets/answer_widget.dart';

extension ButtonColorExtension on AnswerStatus {
  Color get statusColor {
    switch (this) {
      case AnswerStatus.correct:
        return Colors.green;
      case AnswerStatus.incorrect:
        return Colors.red;
      case AnswerStatus.notSelected:
        return Colors.transparent;
      case AnswerStatus.selected:
        return Colors.blueAccent;
    }
  }
}

extension TextColorExtension on AnswerStatus {
  Color get titleColor {
    switch (this) {
      case AnswerStatus.notSelected:
        return Colors.blueAccent;
      default:
        return Colors.white;
    }
  }
}

extension BorderColorExtension on AnswerStatus {
  Color get borderColor {
    switch (this) {
      case AnswerStatus.correct:
        return Colors.green;
      case AnswerStatus.incorrect:
        return Colors.red;
      case AnswerStatus.notSelected:
        return Colors.blueAccent;
      case AnswerStatus.selected:
        return Colors.blueAccent;
    }
  }
}
