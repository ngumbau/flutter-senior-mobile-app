import 'package:amitruck_interview/src/features/authentication/presentation/sign_in_screen.dart';
import 'package:amitruck_interview/src/features/onboarding/presentation/on_boarding_screen.dart';
import 'package:amitruck_interview/src/features/orders/presentation/order_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/authentication/presentation/verify_code_screen.dart';

enum AppRoute {
  onboarding,
  signIn,
  verify,
  home,
  orders,
}

final goRouter = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      name: AppRoute.onboarding.name,
      builder: (context, state) => const OnBoardingScreen(),
      routes: [
        GoRoute(
          path: 'signIn',
          name: AppRoute.signIn.name,
          builder: (context, state) => const SignInScreen(),
          routes: [
            GoRoute(
              path: 'verify',
              name: AppRoute.verify.name,
              pageBuilder: (context, state) {
                return MaterialPage(
                  key: state.pageKey,
                  fullscreenDialog: true,
                  child: const VerifyCodeScreen(),
                );
              },
            ),
          ],
        ),
        GoRoute(
          path: 'home',
          name: AppRoute.home.name,
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            fullscreenDialog: true,
            child: const OrderListScreen(),
          ),
        ),
      ],
    ),
  ],
  // errorBuilder: (context, state) => const NotFoundScreen(),
);
