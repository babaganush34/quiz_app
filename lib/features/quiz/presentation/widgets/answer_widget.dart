import 'package:flutter/material.dart';
import 'package:qwiz_app/core/extensions/button_color_extension.dart';

enum AnswerStatus { notSelected, correct, selected, incorrect }

class AnswerWidget extends StatefulWidget {
  const AnswerWidget({
    super.key,
    required this.answer,
    required this.onTap,
    required this.status,
  });

  final String answer;
  final VoidCallback onTap;
  final AnswerStatus status;

  @override
  State<AnswerWidget> createState() => _AnswerWidgetState();
}

class _AnswerWidgetState extends State<AnswerWidget> {
  @override
  Widget build(BuildContext context) {
    final status = widget.status;

    return InkWell(
      onTap: () {
        widget.onTap();
      },
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: status.statusColor,
          border: BoxBorder.all(color: status.borderColor),
        ),
        child: Align(
          alignment: AlignmentGeometry.center,
          child: Text(
            widget.answer,
            style: TextStyle(fontSize: 20, color: status.titleColor),
          ),
        ),
      ),
    );
  }
}
