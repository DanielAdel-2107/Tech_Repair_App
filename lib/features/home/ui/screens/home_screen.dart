import 'package:flutter/material.dart';
import 'package:tech_repair_app/features/explore/ui/screens/explore_screen.dart';
import 'package:tech_repair_app/features/home/ui/widgets/custom_button_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ExploreScreen(),
      bottomNavigationBar: CustomBootomNavigationBar(),
    );
  }
}
