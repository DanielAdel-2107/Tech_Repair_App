import 'package:flutter/material.dart';
import 'package:tech_repair_app/core/assets/colors/app_colors.dart';
import 'package:tech_repair_app/core/assets/styles/app_styles.dart';

class InviteFrieds extends StatelessWidget {
  const InviteFrieds({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.greyColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Invite your friedns', style: AppStyles.heading3),
          Text(
              'introduce your friends to the easiest way to find and hire professionals for your tech repair needs',
              style: AppStyles.descriptionText),
        ],
      ),
    );
  }
}
