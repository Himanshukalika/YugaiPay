import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';
import '../../../core/router/app_router.dart';

class TravelBookingServicesScreen extends StatelessWidget {
  const TravelBookingServicesScreen({super.key});

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
                    'Travel Booking',
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
                    childAspectRatio: 165 / 150,
                    children: [
                      _buildTravelCard(
                        vw,
                        'Bus',
                        'Save upto ₹400',
                        'assets/icon/png/travel/bus.png',
                      ),
                      _buildTravelCard(
                        vw,
                        'Train',
                        'Confirm ticket or\n3X return',
                        'assets/icon/png/travel/tran.png',
                      ),
                      _buildTravelCard(
                        vw,
                        'Flight',
                        'Flat 12% OFF',
                        'assets/icon/png/travel/flight.png',
                      ),
                      _buildTravelCard(
                        vw,
                        'Hotel',
                        'Upto 30% OFF',
                        'assets/icon/png/travel/hotel.png',
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

  Widget _buildTravelCard(double vw, String title, String subtitle, String illustrationPath) {
    return Container(
      padding: EdgeInsets.all(3.5 * vw),
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
                  fontSize: 2.3 * vw, // ~9px
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
          Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset(
              illustrationPath,
              width: 10 * vw,
              height: 10 * vw,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) => Icon(Icons.travel_explore, color: const Color(0xFF0EA5E9), size: 8 * vw),
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
