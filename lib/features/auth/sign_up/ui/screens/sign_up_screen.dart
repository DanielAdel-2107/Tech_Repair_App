import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tech_repair_app/core/helpers/custom_app_bar.dart';
import 'package:tech_repair_app/features/auth/sign_up/ui/widgets/sign_up_screen_body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: 'Sign up',
        onPressed: () => context.pop(),
      ),
      body: const SignUpScreenBody(),
    );
  }
}
