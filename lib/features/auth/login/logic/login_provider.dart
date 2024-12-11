import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tech_repair_app/core/helpers/global_dialog.dart';
import 'package:tech_repair_app/core/networking/auth/login_with_firebase.dart';
import 'package:tech_repair_app/core/routing/route_names.dart';
import 'package:tech_repair_app/core/utils/app_route.dart';

class LoginProvider with ChangeNotifier {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;
  login() async {
    if (formKey.currentState!.validate()) {
      try {
        await LoginWithFirebase.login(
            emailController.text, passwordController.text);
      } on Exception catch (e) {
        showCustomDialog(
          content: 'Error',
          title: 'Please try again later\n$e',
        );
      }
    }

    void disposeControllers() {
      _emailController.dispose();
      _passwordController.dispose();
    }

    @override
    void dispose() {
      disposeControllers();
      super.dispose();
    }
  }
}
