import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';
import '../../../core/router/app_router.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    final double vw = screenWidth / 100;
    final double vh = screenHeight / 100;

    return Scaffold(
      backgroundColor: Colors.white,
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
                    'Search',
                    style: GoogleFonts.poppins(
                      fontSize: 6 * vw, // ~24px
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF1A1D3A),
                    ),
                  ),
                ),

                SizedBox(height: 3 * vh),

                // Search Bar
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6 * vw),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 4 * vw, vertical: 1.5 * vh),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF3F4F6).withValues(alpha: 0.8),
                      borderRadius: BorderRadius.circular(8 * vw), // Fully rounded
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.search, color: Color(0xFF1A1D3A), size: 24),
                        SizedBox(width: 3 * vw),
                        Expanded(
                          child: Text(
                            "Search for 'loans'",
                            style: GoogleFonts.poppins(
                              fontSize: 3.5 * vw,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF717171),
                            ),
                          ),
                        ),
                        const Icon(Icons.mic_none, color: Color(0xFF1A1D3A), size: 24),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 4 * vh),

                // Popular Section
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6 * vw),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Popular',
                        style: GoogleFonts.poppins(
                          fontSize: 4 * vw, // ~16px
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF1A1D3A),
                        ),
                      ),
                      SizedBox(height: 3 * vh),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildPopularItem(vw, vh, 'Mobile\nRecharge', 'assets/icon/png/payment/Mobile_Recharge.png'),
                          _buildPopularItem(vw, vh, 'DTH', 'assets/icon/png/payment/DTH.png'),
                          _buildPopularItem(vw, vh, 'FASTag\nRecharge', 'assets/icon/png/payment/FASTag_Recharge.png'),
                          _buildPopularItem(vw, vh, 'Loan\nRepayment', 'assets/icon/png/payment/Loan_Repayment.png'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPopularItem(double vw, double vh, String label, String assetPath) {
    return Column(
      children: [
        Container(
          width: 14 * vw,
          height: 14 * vw,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: const Color(0xFFEBEBEB), width: 1),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.03),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Center(
            child: Image.asset(
              assetPath,
              width: 7 * vw,
              height: 7 * vw,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) => Icon(Icons.category_outlined, color: const Color(0xFF6366F1), size: 7 * vw),
            ),
          ),
        ),
        SizedBox(height: 1.5 * vh),
        Text(
          label,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            fontSize: 2.5 * vw, // ~10px
            fontWeight: FontWeight.w600,
            color: const Color(0xFF1A1D3A),
            height: 1.2,
          ),
        ),
      ],
    );
  }
}
