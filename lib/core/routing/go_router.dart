import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tech_repair_app/core/routing/route_names.dart';
import 'package:tech_repair_app/core/utils/app_route.dart';
import 'package:tech_repair_app/features/auth/auth_choice/ui/screens/auth_choice_screen.dart';
import 'package:tech_repair_app/features/auth/forget_password/ui/screens/forget_password_screen.dart';
import 'package:tech_repair_app/features/auth/login/ui/screens/login_screen.dart';
import 'package:tech_repair_app/features/auth/role/ui/screens/role_screen_screen.dart';
import 'package:tech_repair_app/features/auth/sign_up/ui/screens/sign_up_screen.dart';
import 'package:tech_repair_app/features/edit_profile/ui/screens/edit_screen.dart';
import 'package:tech_repair_app/features/explore/ui/screens/explore_screen.dart';
import 'package:tech_repair_app/features/home/ui/screens/home_screen.dart';
import 'package:tech_repair_app/features/more/ui/screens/more_screen.dart';
import 'package:tech_repair_app/features/welcome/ui/screens/welcome_screen.dart';

class GoRouterConfig {
  static final goRouter = GoRouter(
    navigatorKey: AppNavigator.navigatorKey,
    initialLocation: '/editProfile',
    routes: [
      GoRoute(
          path: '/',
          builder: (context, state) => const WelcomeScreen(),
          name: RouteNames.welcome,
          routes: [
            GoRoute(
              path: 'authChoice',
              builder: (context, state) => const AuthChoiceScreen(),
              name: RouteNames.authChoice,
              pageBuilder: (context, state) {
                return transitionPage(state, child: const AuthChoiceScreen());
              },
            ),
            GoRoute(
              path: 'login',
              builder: (context, state) => const LoginScreen(),
              pageBuilder: (context, state) {
                return transitionPage(state, child: const LoginScreen());
              },
              name: RouteNames.login,
            ),
            GoRoute(
              path: 'signup',
              builder: (context, state) => const SignUpScreen(),
              name: RouteNames.signUp,
              pageBuilder: (context, state) {
                return transitionPage(state, child: const SignUpScreen());
              },
            ),
            GoRoute(
              path: 'role',
              builder: (context, state) => const RoleScreen(),
              name: RouteNames.role,
              pageBuilder: (context, state) {
                return transitionPage(state, child: const RoleScreen());
              },
            ),
            GoRoute(
              pageBuilder: (context, state) {
                return transitionPage(state,
                    child: const ForgetPasswordScreen());
              },
              path: 'forgetPassword',
              builder: (context, state) => const ForgetPasswordScreen(),
              name: RouteNames.forgetPassword,
            ),
            GoRoute(
              pageBuilder: (context, state) {
                return transitionPage(state, child: const MoreScreen());
              },
              path: 'more',
              builder: (context, state) => const MoreScreen(),
              name: RouteNames.more,
            ),
            GoRoute(
              pageBuilder: (context, state) {
                return transitionPage(state, child: const EditProfileScreen());
              },
              path: 'editProfile',
              builder: (context, state) => const EditProfileScreen(),
              name: RouteNames.editProfile,
            ),
            GoRoute(
              path: 'explore',
              builder: (context, state) => const ExploreScreen(),
              name: RouteNames.explore,
              pageBuilder: (context, state) {
                return transitionPage(state, child: const ExploreScreen());
              },
            ),
            GoRoute(
              path: 'home',
              builder: (context, state) => const HomeScreen(),
              name: RouteNames.home,
              pageBuilder: (context, state) {
                return transitionPage(state, child: const HomeScreen());
              },
            ),
          ]),
    ],
  );
}

CustomTransitionPage<dynamic> transitionPage(GoRouterState state,
    {required Widget child}) {
  return CustomTransitionPage(
    transitionDuration: const Duration(seconds: 1),
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
  );
}
