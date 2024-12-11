import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'dart:core';

import 'package:tech_repair_app/core/helpers/global_dialog.dart';
import 'package:tech_repair_app/core/networking/auth/login_with_firebase.dart';
import 'package:tech_repair_app/core/utils/app_route.dart';

class ForgetPasswordWithFirebase {
  static Future<void> forgetPassword(String emailAddress) async {
    if (emailAddress.isEmpty) {
      showCustomDialog(
        content: 'Please enter your email address.',
        title: 'Error',
      );
      return;
    }

    final emailRegex =
        RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");

    if (!emailRegex.hasMatch(emailAddress)) {
      showCustomDialog(
        content: "Please enter a valid email address.",
        title: 'Error',
      );
      return;
    }

    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: emailAddress);
      showCustomDialog(
        content: "Password reset email sent. Check your inbox.",
        title: 'Done',
        onDismiss: () {
          AppNavigator.context.pop();
        },
      );
    } catch (e) {
      showCustomDialog(
        content: "",
        title: 'Error',
      );
    }
  }
}
