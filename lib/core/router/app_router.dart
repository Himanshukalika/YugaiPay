import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/splash/screens/splash_screen.dart';
import '../../features/auth/screens/auth_screen.dart';
import '../../features/home/screens/home_screen.dart';
import '../../features/send/screens/send_screen.dart';
import '../../features/receive/screens/receive_screen.dart';
import '../../features/history/screens/history_screen.dart';
import '../../features/profile/screens/profile_screen.dart';
import '../../features/onboarding/screens/onboarding_screen.dart';
import '../../features/auth/screens/loading_screen.dart';
import '../../features/auth/screens/permission_screen.dart';
import '../../features/auth/screens/permission_screen_2.dart';
import '../../features/auth/screens/login_screen.dart';
import '../shell/main_shell.dart';

class AppRoutes {
  static const String splash = '/splash';
  static const String auth = '/auth';
  static const String onboarding = '/onboarding';
  static const String loading = '/loading';
  static const String permission1 = '/permission1';
  static const String permission2 = '/permission2';
  static const String login = '/login';
  static const String home = '/home';
  static const String send = '/send';
  static const String receive = '/receive';
  static const String history = '/history';
  static const String profile = '/profile';
}

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: AppRoutes.splash,
  debugLogDiagnostics: true,
  routes: [
    // Splash
    GoRoute(
      path: AppRoutes.splash,
      builder: (context, state) => const SplashScreen(),
    ),
    // Auth
    GoRoute(
      path: AppRoutes.auth,
      builder: (context, state) => const AuthScreen(),
    ),
    // Onboarding
    GoRoute(
      path: AppRoutes.onboarding,
      builder: (context, state) => const OnboardingScreen(),
    ),
    // Auth Flow Screens
    GoRoute(
      path: AppRoutes.loading,
      builder: (context, state) => const LoadingScreen(),
    ),
    GoRoute(
      path: AppRoutes.permission1,
      builder: (context, state) => const PermissionScreen(),
    ),
    GoRoute(
      path: AppRoutes.permission2,
      builder: (context, state) => const PermissionScreen2(),
    ),
    GoRoute(
      path: AppRoutes.login,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: AppRoutes.home,
      builder: (context, state) => const HomeScreen(),
    ),
    // Main Shell (bottom nav)
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) => MainShell(child: child),
      routes: [
        GoRoute(
          path: AppRoutes.send,
          builder: (context, state) => const SendScreen(),
        ),
        GoRoute(
          path: AppRoutes.receive,
          builder: (context, state) => const ReceiveScreen(),
        ),
        GoRoute(
          path: AppRoutes.history,
          builder: (context, state) => const HistoryScreen(),
        ),
        GoRoute(
          path: AppRoutes.profile,
          builder: (context, state) => const ProfileScreen(),
        ),
      ],
    ),
  ],
);
