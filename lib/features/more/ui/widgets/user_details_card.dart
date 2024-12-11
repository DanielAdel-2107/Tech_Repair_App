import 'package:flutter/material.dart';
import 'package:tech_repair_app/core/assets/styles/app_styles.dart';

class UserDetailsCard extends StatelessWidget {
  const UserDetailsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              'Hello, ',
              style: AppStyles.heading2,
            ),
            Text(
              'website@ ',
              style: AppStyles.descriptionText,
            ),
          ],
        ),
        CircleAvatar(
          radius: 25,
          child: Icon(Icons.person),
        )
      ],
    );
  }
}
