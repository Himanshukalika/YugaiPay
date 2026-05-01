import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';
import '../../../core/router/app_router.dart';

class InsuranceServicesScreen extends StatelessWidget {
  const InsuranceServicesScreen({super.key});

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

                  // General Insurance Section
                  _buildSectionHeading(vw, 'General Insurance'),
                  SizedBox(height: 2 * vh),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildCircularItem(vw, 'Motor\nInsurance', 'assets/icon/png/insurance/Motor_Insurance.png', const Color(0xFF14B8A6)),
                      _buildCircularItem(vw, 'Home\nInsurance', 'assets/icon/png/insurance/Home_Insurance.png', const Color(0xFF14B8A6)),
                      _buildCircularItem(vw, 'Shop\nInsurance', 'assets/icon/png/insurance/Shop_Insurance.png', const Color(0xFF14B8A6)),
                      _buildCircularItem(vw, 'Travel\nInsurance', 'assets/icon/png/insurance/Travel_Insurance.png', const Color(0xFF14B8A6)),
                    ],
                  ),

                  SizedBox(height: 4 * vh),

                  // Health Insurance Section
                  _buildSectionHeading(vw, 'Health Insurance'),
                  SizedBox(height: 2 * vh),
                  Row(
                    children: [
                      _buildHorizontalItem(vw, 'Individual', 'assets/icon/png/insurance/Individual.png', const Color(0xFF14B8A6)),
                      SizedBox(width: 8 * vw),
                      _buildHorizontalItem(vw, 'Family', 'assets/icon/png/insurance/Family.png', const Color(0xFF14B8A6)),
                    ],
                  ),

                  SizedBox(height: 4 * vh),

                  // Life Insurance Section
                  _buildSectionHeading(vw, 'Life Insurance'),
                  SizedBox(height: 2 * vh),
                  GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    mainAxisSpacing: 3 * vw,
                    crossAxisSpacing: 3 * vw,
                    childAspectRatio: 165 / 150,
                    children: [
                      _buildInsuranceCard(vw, 'Term Plans', 'Pure protection for your loved ones with high cover', 'assets/icon/png/insurance/Term_Plans.png'),
                      _buildInsuranceCard(vw, 'Unit Linked Insurance Plans', 'Wealth creation combined with life insurance cover', null),
                      _buildInsuranceCard(vw, 'Child Plans', 'Secure your child\'s education and future dreams.', null),
                      _buildInsuranceCard(vw, 'Retirement/Pension Plans', 'Life long income post maturity', 'assets/icon/png/insurance/Pension_Plans.png'),
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
                errorBuilder: (context, error, stackTrace) => Icon(Icons.security, color: themeColor, size: 7 * vw),
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

  Widget _buildHorizontalItem(double vw, String label, String assetPath, Color themeColor) {
    return Row(
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
              errorBuilder: (context, error, stackTrace) => Icon(Icons.person_outline, color: themeColor, size: 7 * vw),
            ),
          ),
        ),
        SizedBox(width: 3 * vw),
        Text(
          label,
          style: GoogleFonts.poppins(
            fontSize: 3.05 * vw, // 12px
            fontWeight: FontWeight.w600,
            color: const Color(0xFF1A1D3A),
          ),
        ),
      ],
    );
  }

  Widget _buildInsuranceCard(double vw, String title, String subtitle, String? illustrationPath) {
    return Container(
      padding: EdgeInsets.all(3 * vw),
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
              const Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 2.5 * vw, vertical: 1 * vw),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFFFF7A18), Color(0xFFFFB347)],
                  ),
                  borderRadius: BorderRadius.circular(4 * vw), // 18px radius
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.08),
                      blurRadius: 4,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Text(
                  'Upto 25% Off',
                  style: GoogleFonts.poppins(
                    fontSize: 2.03 * vw, // 8px
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          if (illustrationPath != null)
            Positioned(
              right: 0,
              bottom: 0,
              child: Image.asset(
                illustrationPath,
                width: 10 * vw,
                height: 10 * vw,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) => const SizedBox.shrink(),
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
