import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/screens/splash_screen.dart';
import '../../features/auth/screens/auth_screen.dart';
import '../../features/home/screens/home_screen.dart';
import '../../features/send/screens/send_screen.dart';
import '../../features/receive/screens/receive_screen.dart';
import '../../features/home/screens/history_screen.dart';
import '../../features/profile/screens/profile_screen.dart';
import '../../features/onboarding/screens/onboarding_screen.dart';
import '../../features/auth/screens/loading_screen.dart';
import '../../features/auth/screens/permission_screen.dart';
import '../../features/auth/screens/permission_screen_2.dart';
import '../../features/auth/screens/login_screen.dart';
import '../../features/home/screens/investment_services_screen.dart';
import '../../features/home/screens/banking_services_screen.dart';
import '../../features/home/screens/payment_transfers_screen.dart';
import '../../features/home/screens/loan_services_screen.dart';
import '../../features/home/screens/insurance_services_screen.dart';
import '../../features/home/screens/tax_compliance_services_screen.dart';
import '../../features/home/screens/travel_booking_services_screen.dart';
import '../../features/home/screens/alert_screen.dart';
import '../../features/home/screens/search_screen.dart';
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
  static const String investment = '/investment';
  static const String bankingServices = '/banking-services';
  static const String paymentTransfers = '/payment-transfers';
  static const String loanServices = '/loan-services';
  static const String insuranceServices = '/insurance-services';
  static const String taxComplianceServices = '/tax-compliance-services';
  static const String travelBookingServices = '/travel-booking-services';
  static const String alerts = '/alerts';
  static const String search = '/search';
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
    
    // Service Screens (Outside shell to hide bottom nav or have custom header)
    GoRoute(
      path: AppRoutes.investment,
      builder: (context, state) => const InvestmentServicesScreen(),
    ),
    GoRoute(
      path: AppRoutes.bankingServices,
      builder: (context, state) => const BankingServicesScreen(),
    ),
    GoRoute(
      path: AppRoutes.paymentTransfers,
      builder: (context, state) => const PaymentTransfersScreen(),
    ),
    GoRoute(
      path: AppRoutes.loanServices,
      builder: (context, state) => const LoanServicesScreen(),
    ),
    GoRoute(
      path: AppRoutes.insuranceServices,
      builder: (context, state) => const InsuranceServicesScreen(),
    ),
    GoRoute(
      path: AppRoutes.taxComplianceServices,
      builder: (context, state) => const TaxComplianceServicesScreen(),
    ),
    GoRoute(
      path: AppRoutes.travelBookingServices,
      builder: (context, state) => const TravelBookingServicesScreen(),
    ),

    // Main Shell (bottom nav shared between core screens)
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) => MainShell(child: child),
      routes: [
        GoRoute(
          path: AppRoutes.home,
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: AppRoutes.search,
          builder: (context, state) => const SearchScreen(),
        ),
        GoRoute(
          path: AppRoutes.alerts,
          builder: (context, state) => const AlertScreen(),
        ),
        GoRoute(
          path: AppRoutes.history,
          builder: (context, state) => const HistoryScreen(),
        ),
        GoRoute(
          path: AppRoutes.send,
          builder: (context, state) => const SendScreen(),
        ),
        GoRoute(
          path: AppRoutes.receive,
          builder: (context, state) => const ReceiveScreen(),
        ),
        GoRoute(
          path: AppRoutes.profile,
          builder: (context, state) => const ProfileScreen(),
        ),
      ],
    ),
  ],
);
