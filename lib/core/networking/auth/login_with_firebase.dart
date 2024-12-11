import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';
import 'package:tech_repair_app/core/helpers/global_dialog.dart';
import 'package:tech_repair_app/core/routing/route_names.dart';
import 'package:tech_repair_app/core/utils/app_route.dart';

class LoginWithFirebase {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  static Future<void> login(String emailAddress, String password) async {
    try {
      try {
        final credential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(
                email: emailAddress, password: password);
        if (credential.user != null && credential.user!.emailVerified) {
          AppNavigator.context.goNamed(RouteNames.explore);
        } else {
          showCustomDialog(
              content: "Email is not verified. Please verify your email first.",
              title: 'Note',
              enabelButton: false);
        }
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          showCustomDialog(
              content: 'No user found for that email.',
              title: 'Error',
              enabelButton: false);
        } else if (e.code == 'wrong-password') {
          showCustomDialog(
              content: 'Wrong password provided for that user.',
              title: 'Error',
              enabelButton: false);
        } else if (e.code == 'invalid-email') {
          showCustomDialog(
              content: 'The email address is badly formatted.',
              title: 'Error',
              enabelButton: false);
        }
      }
    } catch (e) {
      showCustomDialog(
          content: 'Error please try again later.\n${e.toString()}',
          title: 'Error',
          enabelButton: false);
    }
  }
}
