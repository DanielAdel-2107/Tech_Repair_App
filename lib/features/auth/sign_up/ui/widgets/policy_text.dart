import 'package:flutter/material.dart';
import 'package:tech_repair_app/core/assets/styles/app_styles.dart';

class PolicyText extends StatelessWidget {
  const PolicyText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'By selection Agree and continue, I agree to Dynamic Layers ',
            style: AppStyles.bodyText,
          ),
          TextSpan(
            text: 'Teams of Service, Payments Teams of Service, ',
            style: AppStyles.bodyTextblue,
          ),
          TextSpan(
            text: 'and ',
            style: AppStyles.bodyText,
          ),
          TextSpan(
            text: 'Notification Policy ',
            style: AppStyles.bodyTextblue,
          ),
          TextSpan(
            text: 'and acknowledge the ',
            style: AppStyles.bodyText,
          ),
          TextSpan(
            text: 'Privacy Policy. ',
            style: AppStyles.bodyTextblue,
          ),
        ],
      ),
    );
  }
}
