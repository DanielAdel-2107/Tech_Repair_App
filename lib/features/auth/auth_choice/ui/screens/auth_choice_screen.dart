import 'package:flutter/material.dart';
import 'package:tech_repair_app/features/auth/auth_choice/ui/widgets/auth_choice_screen_body.dart';

class AuthChoiceScreen extends StatelessWidget {
  const AuthChoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AuthChoiceScreenBody(),
    );
  }
}
