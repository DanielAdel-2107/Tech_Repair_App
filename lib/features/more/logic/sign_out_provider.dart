import 'package:flutter/material.dart';
import 'package:tech_repair_app/core/helpers/global_dialog.dart';
import 'package:tech_repair_app/core/networking/auth/sign_out_with_firebase.dart';

class SignOutProvider with ChangeNotifier {
  signOut() async {
    try {
      showCustomDialog(
        title: 'Sign out',
        content: 'Are you sure?',
        onPressOk: () async {
          await SignOutWithFirebase.signOut();
        },
        enabelButton: true,
      );
    } on Exception catch (e) {
      showCustomDialog(
        content: 'Error',
        title: 'Please try again later\n${e.toString()}',
      );
    }
  }
}
