import 'package:flutter/material.dart';
import 'package:tech_repair_app/core/helpers/global_dialog.dart';
import 'package:tech_repair_app/core/networking/auth/sign_up_with_firebase.dart';

class SignUpProvider with ChangeNotifier {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool passwordSuccess = false;
  TextEditingController get firstNameController => _firstNameController;
  TextEditingController get lastNameController => _lastNameController;
  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;
  int? selectedcard;
  String role = '';
  selectCard(int index) {
    selectedcard = index;
    if (index == 0) {
      role = 'user';
    } else if (index == 1) {
      role = 'performer';
    }
    notifyListeners();
  }

  cancelCard() {
    selectedcard = null;
    role = '';
    notifyListeners();
  }

  signUp() async {
    if (formKey.currentState!.validate() && passwordSuccess) {
      try {
        await SignUpWithFirebase.signUp(
          emailAddress: emailController.text,
          password: passwordController.text,
          fristName: firstNameController.text,
          lastName: lastNameController.text,
          role: role,
        );
      } on Exception catch (e) {
        showCustomDialog(
            title: 'Error',
            content: 'Please try again later\n$e',
            enabelButton: false);
      }
    }
  }

  void disposeControllers() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  void dispose() {
    disposeControllers();
    super.dispose();
  }
}
