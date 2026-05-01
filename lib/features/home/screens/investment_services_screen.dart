import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';
import '../../../core/router/app_router.dart';

class InvestmentServicesScreen extends StatelessWidget {
  const InvestmentServicesScreen({super.key});

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
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 6 * vw),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header
                  Padding(
                    padding: EdgeInsets.only(top: 2 * vh, bottom: 2 * vh),
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
                  
                  SizedBox(height: 5 * vh),

                  // Gold Savings Section
                  _buildSectionHeading(vw, 'Gold Savings'),
                  SizedBox(height: 2 * vh),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Daily Savings Card (Large)
                      Expanded(
                        flex: 5,
                        child: _buildInvestmentCard(
                          vw,
                          'Daily Savings',
                          'Start saving as low\nas ₹ 10 per day',
                          'assets/icon/png/investment/Daily_Savings.png',
                          height: 22 * vh,
                        ),
                      ),
                      SizedBox(width: 3 * vw),
                      // Right Column for Buy Gold and Monthly Savings
                      Expanded(
                        flex: 4,
                        child: Column(
                          children: [
                            _buildInvestmentCard(
                              vw,
                              'Buy Gold',
                              'One time gold savings',
                              'assets/icon/png/investment/buy_gold.png',
                              height: 10.5 * vh,
                              isCompact: true,
                            ),
                            SizedBox(height: 1 * vh),
                            _buildInvestmentCard(
                              vw,
                              'Monthly Savings',
                              'Steady gold savings',
                              'assets/icon/png/investment/Monthly_Savings.png',
                              height: 10.5 * vh,
                              isCompact: true,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 4 * vh),

                  // Silver Savings Section
                  _buildSectionHeading(vw, 'Silver Savings'),
                  SizedBox(height: 2 * vh),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildCircularItem(vw, 'Save\nDaily', 'assets/icon/png/investment/Save_Daily.png', const Color(0xFF14B8A6)),
                      _buildCircularItem(vw, 'Save\nMonthly', 'assets/icon/png/investment/Save_Monthly.png', const Color(0xFF14B8A6)),
                      _buildCircularItem(vw, 'Buy\nSilver', 'assets/icon/png/investment/Buy_Silver.png', const Color(0xFF14B8A6)),
                      SizedBox(width: 18 * vw), // Spacer to match grid alignment
                    ],
                  ),

                  SizedBox(height: 5 * vh),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeading(double vw, String title) {
    return Text(
      title,
      style: GoogleFonts.poppins(
        fontSize: 4.07 * vw, // 16px
        fontWeight: FontWeight.w600,
        color: const Color(0xFF1A1D3A),
      ),
    );
  }

  Widget _buildInvestmentCard(double vw, String title, String subtitle, String assetPath, {required double height, bool isCompact = false}) {
    return Container(
      height: height,
      padding: EdgeInsets.all(isCompact ? 2.5 * vw : 4 * vw),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6 * vw), // 24px
        border: Border.all(color: const Color(0xFFEBEBEB), width: 1),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.poppins(
                  fontSize: 3.05 * vw, // 12px
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF1A1D3A),
                  height: 1.2,
                ),
              ),
              SizedBox(height: 0.5 * vw),
              Text(
                subtitle,
                style: GoogleFonts.poppins(
                  fontSize: 2.03 * vw, // 8px
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF717171),
                  height: 1.2,
                ),
              ),
            ],
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset(
              assetPath,
              width: isCompact ? 10 * vw : 15 * vw,
              height: isCompact ? 10 * vw : 15 * vw,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) => Icon(Icons.currency_exchange, color: const Color(0xFF14B8A6), size: 10 * vw),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCircularItem(double vw, String label, String assetPath, Color themeColor) {
    return SizedBox(
      width: 18 * vw,
      child: Column(
        children: [
          Container(
            width: 14 * vw,
            height: 14 * vw,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: themeColor.withValues(alpha: 0.2), width: 1.5),
            ),
            child: Center(
              child: Image.asset(
                assetPath,
                width: 7 * vw,
                height: 7 * vw,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) => Icon(Icons.savings_outlined, color: themeColor, size: 7 * vw),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 2.54 * vw, // 10px
              fontWeight: FontWeight.w500,
              color: const Color(0xFF1A1D3A),
              height: 1.2,
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
            child: _buildNavItem(vw, Icons.home_outlined, 'Home', true),
          ),
          _buildNavItem(vw, Icons.search, 'Search', false),
          _buildNavItem(vw, Icons.notifications_none, 'Alerts', false),
          _buildNavItem(vw, Icons.access_time, 'Report', false),
        ],
      ),
    );
  }

  Widget _buildNavItem(double vw, IconData icon, String label, bool isActive) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: const Color(0xFF1A1D3A), size: 6 * vw),
        const SizedBox(height: 4),
        Text(
          label,
          style: GoogleFonts.poppins(
            fontSize: 2.5 * vw,
            fontWeight: isActive ? FontWeight.w600 : FontWeight.w500,
            color: const Color(0xFF1A1D3A),
          ),
        ),
      ],
    );
  }
}
