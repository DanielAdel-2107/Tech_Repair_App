import 'package:flutter/material.dart';
import 'package:tech_repair_app/core/assets/colors/app_colors.dart';
import 'package:tech_repair_app/core/assets/styles/app_styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    this.onPressed,
    required this.label,
    this.color = AppColors.blueColor,
    this.icon,
  });
  final Function()? onPressed;
  final String label;
  final Color color;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          label,
          style: AppStyles.blueStyle
            ..copyWith(
              decoration: TextDecoration.underline,
            ),
        ));
  }
}
