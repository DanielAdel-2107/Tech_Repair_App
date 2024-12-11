import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:tech_repair_app/core/assets/lottie/app_lotties.dart';
import 'package:tech_repair_app/core/routing/route_names.dart';
import 'package:tech_repair_app/core/widgets/custom_elevated_button.dart';
import 'package:tech_repair_app/core/widgets/custom_outLined_button.dart';

class AuthChoiceScreenBody extends StatelessWidget {
  const AuthChoiceScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            AppLotties.authLottie,
            fit: BoxFit.cover,
          ),
          CustomElevatedButton(
            label: 'Sign Up',
            onPressed: () {
              context.pushNamed(RouteNames.signUp);
            },
          ),
          Gap(20.h),
          CustomOutLinedButton(
            label: 'Login',
            onPressed: () {
              context.pushNamed(RouteNames.login);
            },
          )
        ],
      ),
    );
  }
}
