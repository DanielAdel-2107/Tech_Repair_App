import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';
import 'package:tech_repair_app/core/helpers/global_dialog.dart';
import 'package:tech_repair_app/core/routing/route_names.dart';
import 'package:tech_repair_app/core/utils/app_route.dart';

class SignUpWithFirebase {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  static signUp({
    required String emailAddress,
    required String password,
    required String fristName,
    required String lastName,
    required String role,
  }) async {
    try {
      final user = FirebaseAuth.instance.currentUser;
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      await user?.sendEmailVerification();
      CollectionReference users =
          FirebaseFirestore.instance.collection('users');
      return users
          .add({
            'fristName': fristName,
            'lastName': lastName,
            'email': emailAddress,
            'role': role
          })
          .then((value) => showCustomDialog(
              content: 'Register Successfully\nPlease verify your email',
              title: 'Done',
              enabelButton: false,
              onDismiss: () {
                AppNavigator.context.pop();
                AppNavigator.context.goNamed(RouteNames.login);
              }))
          .catchError((error) => showCustomDialog(
              content: 'Register Failed', title: 'Error', enabelButton: false));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        showCustomDialog(
            content: 'The password provided is too weak.',
            title: 'Error',
            enabelButton: false);
      } else if (e.code == 'email-already-in-use') {
        showCustomDialog(
            content: 'The account already exists for that email.',
            title: 'Error',
            enabelButton: false);
      } else if (e.code == 'invalid-email') {
        showCustomDialog(
            content: 'The email address is badly formatted.',
            title: 'Error',
            enabelButton: false);
      }
    } catch (e) {
      showCustomDialog(
        title: 'Error',
        content: 'Please try again later.\n$e',
      );
    }
  }
}
