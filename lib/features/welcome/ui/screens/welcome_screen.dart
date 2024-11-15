import 'package:flutter/material.dart';
import 'package:tech_repair_app/features/welcome/ui/widgets/wlecome_screen_body.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WelcomeScreenBody(),
    );
  }
}
