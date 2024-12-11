import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tech_repair_app/core/helpers/custom_app_bar.dart';
import 'package:tech_repair_app/features/auth/forget_password/ui/widgets/forget_password_screen_body.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: 'Forget password',
        onPressed: () => context.pop(),
      ),
      body: const ForgetPasswordScreenBody(),
    );
  }
}
