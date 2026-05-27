import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/screens/splash_screen.dart';
import '../../features/auth/screens/auth_screen.dart';
import '../../features/home/screens/home_screen.dart';
import '../../features/send/screens/send_screen.dart';
import '../../features/receive/screens/receive_screen.dart';
import '../../features/home/screens/history_screen.dart';
import '../../features/home/screens/profile_screen.dart';
import '../../features/onboarding/screens/onboarding_screen.dart';
import '../../features/auth/screens/loading_screen.dart';
import '../../features/auth/screens/permission_screen.dart';
import '../../features/auth/screens/permission_screen_2.dart';
import '../../features/auth/screens/login_screen.dart';
import '../../features/auth/screens/mpin_login_screen.dart';
import '../../features/auth/screens/need_help_screen.dart';
import '../../features/investment/screens/report_screen.dart';
import '../../features/home/screens/investment_services_screen.dart';
import '../../features/home/screens/banking_services_screen.dart';
import '../../features/home/screens/payment_transfers_screen.dart';
import '../../features/home/screens/loan_services_screen.dart';
import '../../features/home/screens/insurance_services_screen.dart';
import '../../features/home/screens/tax_compliance_services_screen.dart';
import '../../features/home/screens/travel_booking_services_screen.dart';
import '../../features/home/screens/alert_screen.dart';
import '../../features/home/screens/search_screen.dart';
import '../../features/auth/screens/signup_screen.dart';
import '../../features/auth/screens/signin_screen.dart';
import '../../features/auth/screens/otp_verification_screen.dart';
import '../../features/home/screens/profile/edit_personal_details.dart';
import '../../features/home/screens/profile/edit_address_details.dart';
import '../../features/home/screens/profile/notifications_screen.dart';
import '../../features/home/screens/profile/refer_earn_screen.dart';
import '../../features/home/screens/profile/rateus_screen.dart';
import '../../features/home/screens/profile/languages_screen.dart';
import '../../features/home/screens/profile/security_screen.dart';
import '../../features/home/screens/profile/bank_accounts_screen.dart';
import '../../features/home/screens/profile/add_bank_screen.dart';
import '../../features/utility/screens/no_network_screen.dart';
import '../../features/home/screens/mobile_recharge_screen.dart';
import '../../features/home/screens/dth_recharge_screen.dart';
import '../../features/home/screens/fastag_recharge_screen.dart';
import '../../features/home/screens/fastag_detail_screen.dart';
import '../../features/home/screens/ncmc_recharge_screen.dart';
import '../../features/utility/screens/error_screen.dart';
import '../../features/utility/screens/session_expired_screen.dart';
import '../../features/home/screens/become_partner_screen.dart';
import '../../features/home/screens/registration_login_screen.dart';
import '../../features/home/screens/registration_screen.dart';
import '../../features/home/screens/register_device_screen.dart';
import '../shell/main_shell.dart';

class AppRoutes {
  static const String splash = '/splash';
  static const String auth = '/auth';
  static const String onboarding = '/onboarding';
  static const String loading = '/loading';
  static const String permission1 = '/permission1';
  static const String permission2 = '/permission2';
  static const String login = '/login';
  static const String mpinLogin = '/mpin-login';
  static const String needHelp = '/need-help';
  static const String signin = '/signin';
  static const String signup = '/signup';
  static const String otp = '/otp';
  static const String home = '/home';
  static const String send = '/send';
  static const String receive = '/receive';
  static const String history = '/history';
  static const String profile = '/profile';
  static const String investment = '/investment';
  static const String report = '/report';
  static const String bankingServices = '/banking-services';
  static const String paymentTransfers = '/payment-transfers';
  static const String loanServices = '/loan-services';
  static const String insuranceServices = '/insurance-services';
  static const String taxComplianceServices = '/tax-compliance-services';
  static const String travelBookingServices = '/travel-booking-services';
  static const String alerts = '/alerts';
  static const String search = '/search';
  static const String editPersonalDetails = '/edit-personal-details';
  static const String editAddressDetails = '/edit-address-details';
  static const String notifications = '/notifications';
  static const String referEarn = '/refer-earn';
  static const String rateUs = '/rate-us';
  static const String languages = '/languages';
  static const String security = '/security';
  static const String bankAccounts = '/bank-accounts';
  static const String addBank = '/add-bank';
  static const String mobileRecharge = '/mobile-recharge';
  static const String dthRecharge = '/dth-recharge';
  static const String fastagRecharge = '/fastag-recharge';
  static const String fastagDetail = '/fastag-detail';
  static const String ncmcRecharge = '/ncmc-recharge';
  static const String becomePartner = '/become-partner';
  static const String registrationLogin = '/registration-login';
  static const String registration = '/registration';
  static const String registerDevice = '/register-device';
  static const String noNetwork = '/no-network';
  static const String error = '/error';
  static const String sessionExpired = '/session-expired';
}

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: AppRoutes.becomePartner,
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
      path: AppRoutes.mpinLogin,
      builder: (context, state) => const MpinLoginScreen(),
    ),
    GoRoute(
      path: AppRoutes.needHelp,
      builder: (context, state) => const NeedHelpScreen(),
    ),
    GoRoute(
      path: AppRoutes.signin,
      builder: (context, state) => const SigninScreen(),
    ),
    GoRoute(
      path: AppRoutes.signup,
      builder: (context, state) => const SignUpScreen(),
    ),
    GoRoute(
      path: AppRoutes.otp,
      builder: (context, state) => const OTPVerificationScreen(),
    ),

    // Service Screens (Outside shell to hide bottom nav or have custom header)
    GoRoute(
      path: AppRoutes.investment,
      builder: (context, state) => const InvestmentServicesScreen(),
    ),
    GoRoute(
      path: AppRoutes.report,
      builder: (context, state) => const ReportScreen(),
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
    GoRoute(
      path: AppRoutes.editPersonalDetails,
      builder: (context, state) => const EditPersonalDetailsScreen(),
    ),
    GoRoute(
      path: AppRoutes.editAddressDetails,
      builder: (context, state) => const EditAddressDetailsScreen(),
    ),
    GoRoute(
      path: AppRoutes.notifications,
      builder: (context, state) => const NotificationsScreen(),
    ),
    GoRoute(
      path: AppRoutes.referEarn,
      builder: (context, state) => const ReferEarnScreen(),
    ),
    GoRoute(
      path: AppRoutes.rateUs,
      builder: (context, state) => const RateUsScreen(),
    ),
    GoRoute(
      path: AppRoutes.languages,
      builder: (context, state) => const LanguagesScreen(),
    ),
    GoRoute(
      path: AppRoutes.security,
      builder: (context, state) => const SecurityScreen(),
    ),
    GoRoute(
      path: AppRoutes.bankAccounts,
      builder: (context, state) => const BankAccountsScreen(),
    ),
    GoRoute(
      path: AppRoutes.addBank,
      builder: (context, state) => const AddBankScreen(),
    ),
    GoRoute(
      path: AppRoutes.mobileRecharge,
      builder: (context, state) => const MobileRechargeScreen(),
    ),
    GoRoute(
      path: AppRoutes.dthRecharge,
      builder: (context, state) => const DthRechargeScreen(),
    ),
    GoRoute(
      path: AppRoutes.fastagRecharge,
      builder: (context, state) => const FastagRechargeScreen(),
    ),
    GoRoute(
      path: AppRoutes.fastagDetail,
      builder: (context, state) =>
          FastagDetailScreen(bankName: (state.extra as String?) ?? 'FASTag'),
    ),
    GoRoute(
      path: AppRoutes.ncmcRecharge,
      builder: (context, state) => const NcmcRechargeScreen(),
    ),
    GoRoute(
      path: AppRoutes.becomePartner,
      builder: (context, state) => const BecomePartnerScreen(),
    ),
    GoRoute(
      path: AppRoutes.registration,
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const RegistrationScreen(),
        transitionDuration: const Duration(milliseconds: 300),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            SlideTransition(
              position:
                  Tween<Offset>(
                    begin: const Offset(1.0, 0.0),
                    end: Offset.zero,
                  ).animate(
                    CurvedAnimation(parent: animation, curve: Curves.easeOut),
                  ),
              child: child,
            ),
      ),
    ),
    GoRoute(
      path: AppRoutes.registerDevice,
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const RegisterDeviceScreen(),
        transitionDuration: const Duration(milliseconds: 300),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            SlideTransition(
              position:
                  Tween<Offset>(
                    begin: const Offset(1.0, 0.0),
                    end: Offset.zero,
                  ).animate(
                    CurvedAnimation(parent: animation, curve: Curves.easeOut),
                  ),
              child: child,
            ),
      ),
    ),
    GoRoute(
      path: AppRoutes.registrationLogin,
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const RegistrationLoginScreen(),
        transitionDuration: const Duration(milliseconds: 300),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            SlideTransition(
              position:
                  Tween<Offset>(
                    begin: const Offset(1.0, 0.0),
                    end: Offset.zero,
                  ).animate(
                    CurvedAnimation(parent: animation, curve: Curves.easeOut),
                  ),
              child: child,
            ),
      ),
    ),
    GoRoute(
      path: AppRoutes.noNetwork,
      builder: (context, state) => const NoNetworkScreen(),
    ),
    GoRoute(
      path: AppRoutes.error,
      builder: (context, state) => const ErrorScreen(),
    ),
    GoRoute(
      path: AppRoutes.sessionExpired,
      builder: (context, state) => const SessionExpiredScreen(),
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
