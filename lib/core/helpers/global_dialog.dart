import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tech_repair_app/core/utils/app_route.dart';

void showCustomDialog({
  required String title,
  required String content,
  Function()? onDismiss,
  Function()? onPressOk,
  bool enabelButton = true,
}) {
  AppNavigator.navigatorKey.currentState!.push(
    DialogRoute(
      context: AppNavigator.navigatorKey.currentContext!,
      builder: (context) => AlertDialog(
        title: Text(
          title,
          // style: AppStyles.red16,
        ),
        content: Text(
          content,
          // style: AppStyles.black16,
        ),
        actions: [
          TextButton(
            onPressed: onDismiss ??
                () {
                  Navigator.of(context).pop();
                },
            child: const Text("Close"),
          ),
          enabelButton
              ? TextButton(
                  onPressed: enabelButton ? onPressOk : null,
                  child: const Text("Ok"),
                )
              : const SizedBox(),
        ],
      ),
    ),
  );
}
