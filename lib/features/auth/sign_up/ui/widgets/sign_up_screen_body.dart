import 'package:flutter/material.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:tech_repair_app/core/assets/styles/app_styles.dart';
import 'package:tech_repair_app/core/widgets/custom_elevated_button.dart';
import 'package:tech_repair_app/core/widgets/custom_text_form_field.dart';
import 'package:tech_repair_app/features/auth/sign_up/logic/sign_up_provider.dart';
import 'package:tech_repair_app/features/auth/sign_up/ui/widgets/policy_text.dart';

class SignUpScreenBody extends StatelessWidget {
  const SignUpScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignUpProvider(),
      child: Consumer<SignUpProvider>(
        builder: (context, provider, child) => Scaffold(
          body: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Form(
                key: provider.formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomTextFormField(
                              label: 'First name',
                              controller: provider.firstNameController),
                          Gap(7.h),
                          CustomTextFormField(
                              label: 'Last name',
                              controller: provider.lastNameController),
                          Gap(7.h),
                          CustomTextFormField(
                              label: 'Email',
                              controller: provider.emailController),
                          Gap(7.h),
                          const Text(
                            'We will email you trip confirmations and receipts',
                            style: AppStyles.descriptionText,
                          ),
                          Gap(7.h),
                          CustomTextFormField(
                              label: 'Password',
                              ispassword: true,
                              controller: provider.passwordController),
                          Gap(10.h),
                          Center(
                            child: FlutterPwValidator(
                              width: 360.w,
                              height: 200.h,
                              minLength: 10,
                              onSuccess: () {
                                provider.passwordSuccess = true;
                              },
                              onFail: () {
                                provider.passwordSuccess = false;
                              },
                              controller: provider.passwordController,
                              lowercaseCharCount: 3,
                              normalCharCount: 3,
                              numericCharCount: 3,
                              specialCharCount: 3,
                              uppercaseCharCount: 5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          const PolicyText(),
                          Gap(10.h),
                          CustomElevatedButton(
                            label: 'Agree and continue',
                            onPressed: () {
                              provider.signUp();
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
