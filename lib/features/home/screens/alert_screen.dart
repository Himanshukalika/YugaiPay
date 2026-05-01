import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';
import '../../../core/router/app_router.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    final double vw = screenWidth / 100;
    final double vh = screenHeight / 100;

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: _buildBottomNavBar(context, vw, vh),
      body: Stack(
        children: [
          // Subtle top-left gradient blob
          Positioned(
            top: -50,
            left: -50,
            child: Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    const Color(0xFFF0F9FF).withValues(alpha: 0.6),
                    Colors.white.withValues(alpha: 0.0),
                  ],
                ),
              ),
            ),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6 * vw, vertical: 2 * vh),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => context.pop(),
                        child: const Icon(Icons.arrow_back, color: Color(0xFF1A1D3A)),
                      ),
                      const Icon(Icons.help_outline, color: Color(0xFF1A1D3A)),
                    ],
                  ),
                ),
                
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6 * vw),
                  child: Text(
                    'Alerts',
                    style: GoogleFonts.poppins(
                      fontSize: 6 * vw, // ~24px
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF1A1D3A),
                    ),
                  ),
                ),

                const Spacer(),

                // Empty State Illustration
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icon/png/alert/alert.png',
                        width: 50 * vw, // ~200px
                        height: 28 * vh, // ~240px
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) => Icon(
                          Icons.notifications_none_outlined,
                          size: 30 * vw,
                          color: const Color(0xFF1A1D3A).withValues(alpha: 0.1),
                        ),
                      ),
                      SizedBox(height: 3 * vh),
                      Text(
                        'No alerts yet',
                        style: GoogleFonts.poppins(
                          fontSize: 4 * vw, // ~16px
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF1A1D3A),
                        ),
                      ),
                    ],
                  ),
                ),

                const Spacer(flex: 2),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavBar(BuildContext context, double vw, double vh) {
    return Container(
      height: 9 * vh,
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
          GestureDetector(
            onTap: () => context.go(AppRoutes.home),
            child: _buildNavItem(vw, Icons.home_outlined, 'Home', false),
          ),
          _buildNavItem(vw, Icons.search, 'Search', false),
          _buildNavItem(vw, Icons.notifications, 'Alerts', true),
          _buildNavItem(vw, Icons.access_time, 'Report', false),
        ],
      ),
    );
  }

  Widget _buildNavItem(double vw, IconData icon, String label, bool isActive) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: isActive ? const Color(0xFF6366F1) : const Color(0xFF1A1D3A),
          size: 6 * vw,
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: GoogleFonts.poppins(
            fontSize: 2.5 * vw,
            fontWeight: isActive ? FontWeight.w600 : FontWeight.w500,
            color: isActive ? const Color(0xFF6366F1) : const Color(0xFF1A1D3A),
          ),
        ),
      ],
    );
  }
}
