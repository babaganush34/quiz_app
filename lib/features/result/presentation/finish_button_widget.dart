import 'package:flutter/material.dart';
import 'package:qwiz_app/core/di/inject_module.dart';
import 'package:qwiz_app/core/router/app_router.dart';

class FinishButtonWidget extends StatelessWidget {
  const FinishButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        getIt<AppRouter>().replaceAll([HomeRoute()]);
      },
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.green,
        ),
        child: Align(
          alignment: AlignmentGeometry.center,
          child: Text(
            'Finish',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
