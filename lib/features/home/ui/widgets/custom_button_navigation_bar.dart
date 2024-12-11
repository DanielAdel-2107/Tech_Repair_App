import 'package:flutter/material.dart';
import 'package:tech_repair_app/core/assets/colors/app_colors.dart';

class CustomBootomNavigationBar extends StatelessWidget {
  const CustomBootomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Explore'),
        BottomNavigationBarItem(
            icon: Icon(Icons.assignment), label: 'Projects'),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Messages'),
        BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz_rounded), label: 'More'),
      ],
      selectedItemColor: AppColors.blueColor,
      showUnselectedLabels: true,
      unselectedItemColor: Colors.grey,
    );
  }
}
