import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:tech_repair_app/core/routing/route_names.dart';
import 'package:tech_repair_app/core/widgets/custom_elevated_button.dart';
import 'package:tech_repair_app/core/widgets/custom_text_button.dart';
import 'package:tech_repair_app/core/widgets/custom_text_form_field.dart';
import 'package:tech_repair_app/features/auth/login/logic/login_provider.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginProvider(),
      child: Consumer<LoginProvider>(
        builder: (context, provider, child) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: provider.formKey,
            child: Column(
              children: [
                Gap(10.h),
                CustomTextFormField(
                    label: 'Email', controller: provider.emailController),
                Gap(20.h),
                CustomTextFormField(
                    label: 'Password',
                    ispassword: true,
                    controller: provider.passwordController),
                Gap(15.h),
                CustomTextButton(
                  label: 'Forget password?',
                  onPressed: () {
                    context.pushNamed(RouteNames.forgetPassword);
                  },
                ),
                Gap(15.h),
                CustomElevatedButton(
                  label: 'Login',
                  onPressed: () {
                    provider.login();
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
