import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';
import '../../../core/router/app_router.dart';

class PaymentTransfersScreen extends StatelessWidget {
  const PaymentTransfersScreen({super.key});

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
                    const Color(0xFFF5F0FF).withValues(alpha: 0.6),
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

                  // DMT Section
                  _buildSection(vw, vh, 'DMT', [
                    _ServiceData('Fund\nTransfer', 'assets/images/DMT.png'),
                    _ServiceData('Add\nBeneficiary', 'assets/images/DMT.png'),
                  ], const Color(0xFF8B5CF6)),

                  SizedBox(height: 4 * vh),

                  // Recharges Section
                  _buildSection(vw, vh, 'Recharges', [
                    _ServiceData('Mobile\nRecharge', 'assets/images/mob_rec.png'),
                    _ServiceData('DTH', 'assets/images/elec_bill.png'),
                    _ServiceData('FASTag\nRecharge', 'assets/images/fastag_rec.png'),
                    _ServiceData('NCMC\nRecharge', 'assets/images/DMT.png'),
                  ], const Color(0xFF8B5CF6)),

                  SizedBox(height: 4 * vh),

                  // Utilities Section
                  _buildSection(vw, vh, 'Utilities', [
                    _ServiceData('Electricity', 'assets/images/elec_bill.png'),
                    _ServiceData('Loan\nRepayment', 'assets/images/mob_rec.png'),
                    _ServiceData('Broadband/\nLandline', 'assets/images/elec_bill.png'),
                    _ServiceData('Book\nCylinder', 'assets/images/fastag_rec.png'),
                  ], const Color(0xFF8B5CF6)),

                  SizedBox(height: 5 * vh),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSection(double vw, double vh, String title, List<_ServiceData> services, Color themeColor) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 4.07 * vw, // 16px
            fontWeight: FontWeight.w600,
            color: const Color(0xFF1A1D3A),
          ),
        ),
        SizedBox(height: 2 * vh),
        Wrap(
          spacing: 5 * vw,
          runSpacing: 3 * vh,
          children: services.map((s) => _buildServiceItem(vw, s, themeColor)).toList(),
        ),
      ],
    );
  }

  Widget _buildServiceItem(double vw, _ServiceData data, Color themeColor) {
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
                data.imagePath,
                width: 7 * vw,
                height: 7 * vw,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            data.title,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 2.54 * vw, // ~10px
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

class _ServiceData {
  final String title;
  final String imagePath;
  _ServiceData(this.title, this.imagePath);
}
