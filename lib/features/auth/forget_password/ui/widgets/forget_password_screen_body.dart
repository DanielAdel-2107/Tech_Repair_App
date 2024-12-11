import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:tech_repair_app/core/assets/styles/app_styles.dart';
import 'package:tech_repair_app/core/widgets/custom_elevated_button.dart';
import 'package:tech_repair_app/core/widgets/custom_text_form_field.dart';
import 'package:tech_repair_app/features/auth/forget_password/logic/forget_password_provider.dart';

class ForgetPasswordScreenBody extends StatelessWidget {
  const ForgetPasswordScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ForgetPasswordProvider(),
      child: Consumer<ForgetPasswordProvider>(
        builder: (context, provider, child) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: provider.formKey,
            child: Column(
              children: [
                Gap(10.h),
                CustomTextFormField(
                  label: 'Email',
                  controller: provider.emailController,
                ),
                Gap(10.h),
                const Text(
                  'Enters the email address you used to register. You will receive an email to define a new password.',
                  style: AppStyles.descriptionText,
                ),
                Gap(20.h),
                CustomElevatedButton(
                  label: 'Define new password',
                  onPressed: () {
                    provider.resetPassword();
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
