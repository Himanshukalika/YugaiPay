import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';
import '../../../core/router/app_router.dart';

class TaxComplianceServicesScreen extends StatelessWidget {
  const TaxComplianceServicesScreen({super.key});

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

                  // Main Title
                  Text(
                    'Tax & Compliance Services',
                    style: GoogleFonts.poppins(
                      fontSize: 4.07 * vw, // 16px
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF1A1D3A),
                    ),
                  ),
                  SizedBox(height: 3 * vh),

                  // Grid of Services
                  GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    mainAxisSpacing: 4 * vw,
                    crossAxisSpacing: 4 * vw,
                    childAspectRatio: 165 / 160,
                    children: [
                      _buildServiceCard(
                        vw,
                        'PAN Application & Correction',
                        '(via Authorized Agency)',
                        'assets/icon/png/tax/ID_Card.png',
                        const Color(0xFF14B8A6),
                      ),
                      _buildServiceCard(
                        vw,
                        'GST Registration',
                        'Quick & easy GST registration',
                        'assets/icon/png/tax/GST_Registration.png',
                        const Color(0xFF14B8A6),
                      ),
                      _buildServiceCard(
                        vw,
                        'GST Return Filing',
                        'File GST returns online with ease',
                        'assets/icon/png/tax/Gst.png',
                        const Color(0xFF14B8A6),
                      ),
                      _buildServiceCard(
                        vw,
                        'Assisted Income Tax Filing',
                        'Expert help with your income tax filing',
                        'assets/icon/png/tax/Tax.png',
                        const Color(0xFF14B8A6),
                      ),
                      _buildServiceCard(
                        vw,
                        'Billing & Accounting Solutions',
                        '(via Authorized Technology Partner)',
                        'assets/icon/png/tax/Vyapar.png',
                        const Color(0xFF14B8A6),
                        isBrandIcon: true,
                      ),
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

  Widget _buildServiceCard(double vw, String title, String subtitle, String assetPath, Color themeColor, {bool isBrandIcon = false}) {
    return Container(
      padding: EdgeInsets.all(4 * vw),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6 * vw), // 24px
        border: Border.all(color: const Color(0xFFEBEBEB), width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.02),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 12 * vw,
            height: 12 * vw,
            decoration: BoxDecoration(
              color: isBrandIcon ? Colors.transparent : const Color(0xFFF8FAFC),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Image.asset(
                assetPath,
                width: isBrandIcon ? 12 * vw : 7 * vw,
                height: isBrandIcon ? 12 * vw : 7 * vw,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) => Icon(Icons.description_outlined, color: themeColor, size: 7 * vw),
              ),
            ),
          ),
          const Spacer(),
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 2.8 * vw, // ~11px
              fontWeight: FontWeight.w700,
              color: const Color(0xFF1A1D3A),
              height: 1.2,
            ),
          ),
          SizedBox(height: 0.5 * vw),
          Text(
            subtitle,
            style: GoogleFonts.poppins(
              fontSize: 2.3 * vw, // ~9px
              fontWeight: FontWeight.w400,
              color: const Color(0xFF717171),
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
