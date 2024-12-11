import 'package:flutter/material.dart';
import 'package:tech_repair_app/core/assets/colors/app_colors.dart';

class AppStyles {
  static const TextStyle heading1 = TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle heading2 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle blueStyle = TextStyle(
    fontSize: 16,
    color: AppColors.blueColor,
  );

  static const TextStyle heading3 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle whitestyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.whiteColor,
  );

  static const TextStyle bodyText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle bodyTextblue = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.blueColor,
    decoration: TextDecoration.underline,
  );

  static const TextStyle body = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle caption = TextStyle(
    fontSize: 14,
  );

  static const TextStyle elevatedbuttonText = TextStyle(
    fontSize: 18,
    color: AppColors.whiteColor,
  );

  static const TextStyle outLinedButtonText = TextStyle(
    fontSize: 18,
    color: AppColors.blueColor,
  );

  static const TextStyle titleText = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle descriptionText =
      TextStyle(fontSize: 14, color: Colors.grey);
}
