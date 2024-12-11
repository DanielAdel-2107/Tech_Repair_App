import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';
import 'package:tech_repair_app/core/routing/route_names.dart';
import 'package:tech_repair_app/core/utils/app_route.dart';

class SignOutWithFirebase {
  static Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
    AppNavigator.context.goNamed(RouteNames.login);
  }
}
