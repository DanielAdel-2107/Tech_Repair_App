import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:tech_repair_app/core/assets/images/app_images.dart';
import 'package:tech_repair_app/core/widgets/custom_elevated_button.dart';

class WelcomeScreenBody extends StatelessWidget {
  const WelcomeScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AppImages.welcomeImage).animate().fade().scale(
              duration: const Duration(milliseconds: 500),
            ),
        Gap(50.h),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomElevatedButton(
            label: 'Start',
            onPressed: () {},
          ).animate().fade().scale(
                delay: const Duration(milliseconds: 500),
                duration: const Duration(milliseconds: 500),
              ),
        )
      ],
    );
  }
}
