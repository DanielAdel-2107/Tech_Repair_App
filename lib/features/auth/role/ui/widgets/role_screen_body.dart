import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:tech_repair_app/core/assets/colors/app_colors.dart';
import 'package:tech_repair_app/core/assets/images/app_images.dart';
import 'package:tech_repair_app/core/assets/styles/app_styles.dart';
import 'package:tech_repair_app/features/auth/role/ui/widgets/custom_role_card.dart';

class RoleScreenBody extends StatelessWidget {
  const RoleScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Select a Role',
            style: AppStyles.heading2
              ..copyWith(
                color: AppColors.blueColor,
              ),
          ),
          Gap(30.h),
          const CustomRoleCard(
            title: 'Looking for a specialist',
            description: 'To place any type of order to search for performer',
            image: AppImages.userImage,
          ),
          Gap(15.h),
          const CustomRoleCard(
            title: 'I want to find a job',
            description: 'search and execute orders in your field of activity',
            image: AppImages.performerImage,
          )
        ],
      ),
    );
  }
}
