import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:tech_repair_app/core/assets/colors/app_colors.dart';
import 'package:tech_repair_app/core/assets/images/app_images.dart';
import 'package:tech_repair_app/core/assets/styles/app_styles.dart';
import 'package:tech_repair_app/core/routing/route_names.dart';
import 'package:tech_repair_app/core/widgets/custom_elevated_button.dart';
import 'package:tech_repair_app/core/widgets/custom_text_button.dart';
import 'package:tech_repair_app/features/auth/role/ui/widgets/custom_role_card.dart';
import 'package:tech_repair_app/features/auth/sign_up/logic/sign_up_provider.dart';

class RoleScreenBody extends StatelessWidget {
  const RoleScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: ChangeNotifierProvider(
          create: (context) => SignUpProvider(),
          child: Consumer<SignUpProvider>(
            builder: (context, provider, child) {
              return Column(
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
                  CustomRoleCard(
                    title: 'Looking for a specialist',
                    description:
                        'To place any type of order to search for performer',
                    image: AppImages.userImage,
                    cardNo: 0,
                    onTap: () {
                      provider.selectCard(0);
                    },
                    selected: provider.selectedcard == 0,
                  ),
                  Gap(15.h),
                  CustomRoleCard(
                    title: 'I want to find a job',
                    description:
                        'search and execute orders in your field of activity',
                    image: AppImages.performerImage,
                    cardNo: 1,
                    onTap: () {
                      provider.selectCard(1);
                    },
                    selected: provider.selectedcard == 1,
                  ),
                  Gap(100.h),
                  provider.selectedcard == null
                      ? CustomTextButton(
                          label: 'Skip and Start',
                          onPressed: () {
                            context.pushNamed(RouteNames.authChoice);
                          })
                      : CustomElevatedButton(
                          label: 'Continue',
                          color: Colors.blueGrey.shade700,
                          onPressed: () =>
                              context.pushNamed(RouteNames.authChoice),
                        ),
                  provider.selectedcard == null
                      ? Gap(0.h)
                      : CustomTextButton(
                          label: 'Cancel',
                          onPressed: () => provider.cancelCard(),
                        )
                ],
              );
            },
          ),
        ));
  }
}
