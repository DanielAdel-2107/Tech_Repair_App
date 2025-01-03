import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_repair_app/core/assets/colors/app_colors.dart';
import 'package:tech_repair_app/core/assets/styles/app_styles.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.label,
    this.onPressed,
    this.color = AppColors.blueColor,
  });
  final String label;
  final Function()? onPressed;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          fixedSize: Size(double.infinity, 60.h),
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          )),
      onPressed: onPressed,
      child: Center(
        child: Text(
          label,
          style: AppStyles.elevatedbuttonText,
        ),
      ),
    );
  }
}
