import 'package:flutter/material.dart';
import 'package:tech_repair_app/core/assets/colors/app_colors.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
  });
  final String title;
  final IconData icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: color,
        child: Icon(
          icon,
          color: AppColors.whiteColor,
        ),
      ),
      title: Text(title),
    );
  }
}
