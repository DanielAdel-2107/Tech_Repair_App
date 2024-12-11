import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:tech_repair_app/core/assets/colors/app_colors.dart';
import 'package:tech_repair_app/core/assets/styles/app_styles.dart';

class CustomRoleCard extends StatelessWidget {
  const CustomRoleCard({
    super.key,
    required this.title,
    required this.description,
    required this.image,
    required this.cardNo,
    this.onTap,
    this.selected = false,
  });

  final String title;
  final String description;
  final String image;
  final int cardNo;
  final Function()? onTap;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 150.h,
        decoration: BoxDecoration(
          color: selected ? Colors.blueGrey.shade700 : AppColors.greyColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: AppStyles.titleText,
                    ),
                    Gap(10.h),
                    Text(
                      description,
                      style: AppStyles.descriptionText,
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Image.asset(
                  image,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
