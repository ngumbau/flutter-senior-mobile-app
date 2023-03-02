import 'package:go_router/go_router.dart';

enum AppRoute {
  onboard,
  signIn,
  verify,
  home,
  order,
}

final goRouterProvider = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      name: AppRoute.onboard.name,
      path: '/',
    ),
    GoRoute(
      name: AppRoute.signIn.name,
      path: 'signIn',
    ),
    GoRoute(
      name: AppRoute.verify.name,
      path: 'verify',
    ),
    GoRoute(
      name: AppRoute.home.name,
      path: 'home',
    ),
    GoRoute(
      name: AppRoute.order.name,
      path: 'order',
    ),
  ],
  // errorBuilder: (context, state) => const NotFoundScreen(),
);
