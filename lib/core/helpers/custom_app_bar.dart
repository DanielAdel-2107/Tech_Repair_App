import 'package:flutter/material.dart';
import 'package:tech_repair_app/core/assets/styles/app_styles.dart';
import 'package:tech_repair_app/core/widgets/custom_icon_button.dart';

AppBar customAppBar({
  required String title,
  Function()? onPressed,
  bool automaticallyImplyLeading = true,
}) {
  return AppBar(
    centerTitle: true,
    title: Text(
      title,
      style: AppStyles.heading3,
    ),
    automaticallyImplyLeading: automaticallyImplyLeading,
    leading: automaticallyImplyLeading
        ? CustomIconButton(
            icon: Icons.arrow_back_ios_new,
            onPressed: onPressed,
          )
        : null,
  );
}
