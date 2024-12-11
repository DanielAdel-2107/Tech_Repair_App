import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tech_repair_app/core/helpers/global_dialog.dart';
import 'package:tech_repair_app/core/networking/auth/forget_password_with_firebase.dart';
import 'package:tech_repair_app/core/routing/route_names.dart';
import 'package:tech_repair_app/core/utils/app_route.dart';

class ForgetPasswordProvider with ChangeNotifier {
  final TextEditingController _emailController = TextEditingController();
  TextEditingController get emailController => _emailController;
  final formKey = GlobalKey<FormState>();

  Future<void> resetPassword() async {
    if (formKey.currentState!.validate()) {
      try {
        await ForgetPasswordWithFirebase.forgetPassword(emailController.text);
      } on Exception catch (e) {
        showCustomDialog(
          content: 'Error',
          title: 'Please try again later\n${e.toString()}',
        );
      }
    }
  }
}
