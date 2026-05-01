import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoanServicesScreen extends StatelessWidget {
  const LoanServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF1E233A)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.help_outline, color: Color(0xFF1E233A)),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          // Subtle top-left gradient blob
          Positioned(
            top: -100,
            left: -100,
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    const Color(0xFFF0F4FF).withValues(alpha: 0.8),
                    Colors.white.withValues(alpha: 0.0),
                  ],
                ),
              ),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  

                  // Retail Loans Section
                  _buildSectionTitle('Retail Loans'),
                  const SizedBox(height: 16),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildServiceIcon(
                        title: 'Personal\nLoan',
                        imagePath: 'assets/icon/png/Personal_Loan.png',
                      ),
                      _buildServiceIcon(
                        title: 'Gold Loan',
                        imagePath: 'assets/icon/png/home.png',
                      ),
                      _buildServiceIcon(
                        title: 'Home Loan',
                        imagePath: 'assets/icon/png/home.png',
                      ),
                      _buildServiceIcon(
                        title: 'Loan Against\nProperty',
                        imagePath: 'assets/icon/png/Loan_Against_Property.png',
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildServiceIcon(
                        title: 'Micro Loan',
                        imagePath: 'assets/icon/png/MSME_Loan.png',
                      ),
                      _buildServiceIcon(
                        title: 'Salary Loan',
                        imagePath: 'assets/icon/png/Salary_Loan.png',
                      ),
                      _buildServiceIcon(
                        title: 'Education\nLoan',
                        imagePath: 'assets/icon/png/Education_Loan.png',
                      ),
                      _buildServiceIcon(
                        title: 'Consumer\nDurabale\nLoan',
                        imagePath: 'assets/icon/png/Consumer_Durabale_Loan.png',
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),

                  // Vehicle Loans Section
                  _buildSectionTitle('Vehicle Loans'),
                  const SizedBox(height: 16),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildServiceIcon(
                        title: 'Car Loan',
                        imagePath: 'assets/icon/png/car.png',
                      ),
                      _buildServiceIcon(
                        title: 'Bike Loan',
                        imagePath: 'assets/icon/png/bike.png',
                      ),
                      _buildServiceIcon(
                        title: 'Commercial\nVehicle Loan',
                        imagePath: 'assets/icon/png/bike.png',
                      ),
                      _buildServiceIcon(
                        title: 'Machinery\nLoan',
                        imagePath: 'assets/icon/png/bike.png',
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),

                  // Business & MSME Loans Section
                  _buildSectionTitle('Business & MSME Loans'),
                  const SizedBox(height: 16),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildServiceIcon(
                        title: 'Business\nLoan',
                        imagePath: 'assets/icon/png/Personal_Loan.png',
                      ),
                      _buildServiceIcon(
                        title: 'MSME Loan',
                        imagePath: 'assets/icon/png/MSME_Loan.png',
                      ),
                      _buildServiceIcon(
                        title: 'Working Capital\nLoan',
                        imagePath: 'assets/icon/png/MSME_Loan.png',
                      ),
                      _buildServiceIcon(
                        title: 'Credit Line\nFacility',
                        imagePath: 'assets/icon/png/Credit_Facility.png',
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),

                  // Agriculture & Green Financing Section
                  _buildSectionTitle('Agriculture & Green Financing'),
                  const SizedBox(height: 16),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildServiceIcon(
                        title: 'Agriculture\nInfra Loan',
                        imagePath: 'assets/icon/png/Agriculture_Loan.png',
                      ),
                      _buildServiceIcon(
                        title: 'Kisan Credit\nCard (KCC)',
                        imagePath: 'assets/icon/png/Agriculture_Loan.png',
                      ),
                      _buildServiceIcon(
                        title: 'Rural Enterprise\nLoan',
                        imagePath: 'assets/icon/png/Rural_Enterprise.png',
                      ),
                      _buildServiceIcon(
                        title: 'Solar Loan',
                        imagePath: 'assets/icon/png/Solar_Loan.png',
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 10,
              offset: const Offset(0, -5),
            ),
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: const Color(0xFF1E233A),
          unselectedItemColor: const Color(0xFF8D92A3),
          selectedLabelStyle: GoogleFonts.inter(
            fontSize: 10,
            fontWeight: FontWeight.w600,
            height: 1.5,
          ),
          unselectedLabelStyle: GoogleFonts.inter(
            fontSize: 10,
            fontWeight: FontWeight.w500,
            height: 1.5,
          ),
          elevation: 0,
          items: const [
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Icon(Icons.home_outlined, size: 24),
              ),
              activeIcon: Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Icon(Icons.home, size: 24),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Icon(Icons.search, size: 24),
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Icon(Icons.notifications_none, size: 24),
              ),
              label: 'Alerts',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Icon(Icons.access_time, size: 24),
              ),
              label: 'Report',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: const Color(0xFF1A1D3A),
        height: 1.0,
        letterSpacing: 0,
      ),
    );
  }

  Widget _buildServiceIcon({
    required String title,
    required String imagePath,
    double width = 76,
    bool isPlaceholder = false,
    String placeholderText = '',
  }) {
    return SizedBox(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 56,
            height: 56,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              // Light orange border for loan services
              border: Border.all(color: const Color(0xFFFFEDD5), width: 1.2),
            ),
            child: isPlaceholder 
                ? Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFFF0941F), width: 1),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        placeholderText, 
                        style: GoogleFonts.poppins(
                          fontSize: 8, 
                          fontWeight: FontWeight.w600, 
                          color: const Color(0xFFF0941F)
                        ),
                      ),
                    ),
                  )
                : Image.asset(imagePath, fit: BoxFit.contain),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: const Color(0xFF1A1D3A),
              height: 1.0,
              letterSpacing: 0,
            ),
          ),
        ],
      ),
    );
  }
}
