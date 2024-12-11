import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tech_repair_app/core/helpers/custom_app_bar.dart';
import 'package:tech_repair_app/features/auth/login/ui/widgets/login_screen_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: 'I have an account',
        onPressed: () => context.pop(),
      ),
      body: const LoginScreenBody(),
    );
  }
}
