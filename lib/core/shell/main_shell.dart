import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../router/app_router.dart';

class MainShell extends StatelessWidget {
  final Widget child;

  const MainShell({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 10,
              offset: const Offset(0, -5),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(context, Icons.home_outlined, Icons.home_rounded, 'Home', AppRoutes.home),
            _buildNavItem(context, Icons.search, Icons.search, 'Search', AppRoutes.search),
            _buildNavItem(context, Icons.notifications_none, Icons.notifications, 'Alerts', AppRoutes.alerts),
            _buildNavItem(context, Icons.access_time, Icons.access_time_filled, 'Report', AppRoutes.history),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(BuildContext context, IconData icon, IconData activeIcon, String label, String route) {
    final bool isActive = GoRouterState.of(context).uri.toString().startsWith(route);
    return GestureDetector(
      onTap: () => context.go(route),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            isActive ? activeIcon : icon,
            color: isActive ? const Color(0xFF6366F1) : const Color(0xFF1A1D3A),
            size: 26,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 10,
              fontWeight: isActive ? FontWeight.w600 : FontWeight.w500,
              color: isActive ? const Color(0xFF6366F1) : const Color(0xFF1A1D3A),
            ),
          ),
        ],
      ),
    );
  }
}
