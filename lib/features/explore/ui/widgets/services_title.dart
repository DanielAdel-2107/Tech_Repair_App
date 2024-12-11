import 'package:flutter/material.dart';
import 'package:tech_repair_app/core/assets/colors/app_colors.dart';
import 'package:tech_repair_app/core/assets/styles/app_styles.dart';
import 'package:tech_repair_app/core/widgets/custom_text_button.dart';

class ServicesTitle extends StatelessWidget {
  const ServicesTitle({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppStyles.heading3,
        ),
        CustomTextButton(
          label: 'View all >',
          onPressed: () {},
          color: AppColors.blackColor,
        ),
      ],
    );
  }
}
