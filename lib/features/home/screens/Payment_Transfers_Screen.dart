import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentTransfersScreen extends StatelessWidget {
  const PaymentTransfersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF1E233A)),
          onPressed: () {},
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
                    const Color(0xFFF0F4FF).withOpacity(0.8),
                    Colors.white.withOpacity(0.0),
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
                  Text(
                    'Payments & Transfers',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF1A1D3A),
                      height: 22 / 16,
                      letterSpacing: 0,
                    ),
                  ),
                  const SizedBox(height: 24),

                  // DMT Section
                  _buildSectionTitle('DMT'),
                  const SizedBox(height: 16),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildServiceIcon(
                        title: 'Fund\nTransfer',
                        imagePath: 'assets/icon/png/Fund_Trasnfer.png',
                      ),
                      const SizedBox(width: 76),
                      _buildServiceIcon(
                        title: 'Add\nBeneficiary',
                        imagePath: 'assets/icon/png/Add_Beneficiary.png',
                      ),
                      const SizedBox(width: 76),
                    ],
                  ),
                  const SizedBox(height: 32),

                  // Recharges Section
                  _buildSectionTitle('Recharges'),
                  const SizedBox(height: 16),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildServiceIcon(
                        title: 'Mobile\nRecharge',
                        imagePath: 'assets/icon/png/Mobile_Recharge.png',
                      ),
                      _buildServiceIcon(
                        title: 'DTH',
                        imagePath: 'assets/icon/png/DTH.png',
                      ),
                      _buildServiceIcon(
                        title: 'FASTag\nRecharge',
                        imagePath: 'assets/icon/png/FASTag_Recharge.png',
                      ),
                      _buildServiceIcon(
                        title: 'NCMC\nRecharge',
                        imagePath: '', // No NCMC icon in assets, using placeholder
                        isPlaceholder: true,
                        placeholderText: 'NCMC',
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),

                  // Utilities Section
                  _buildSectionTitle('Utilities'),
                  const SizedBox(height: 16),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildServiceIcon(
                        title: 'Electricity',
                        imagePath: 'assets/icon/png/Electricity.png',
                      ),
                      _buildServiceIcon(
                        title: 'Loan\nRepayment',
                        imagePath: 'assets/icon/png/Loan_Repayment.png',
                      ),
                      _buildServiceIcon(
                        title: 'Broadband/\nLandline',
                        imagePath: 'assets/icon/png/Broadband_Landline.png',
                      ),
                      _buildServiceIcon(
                        title: 'Book\nCylinder',
                        imagePath: 'assets/icon/png/Book_Gas.png',
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
              color: Colors.black.withOpacity(0.05),
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
              // Light purple border for this screen to match the icons
              border: Border.all(color: const Color(0xFFE5D5FF), width: 1.2),
            ),
            child: isPlaceholder 
                ? Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFF8A2BE2), width: 1),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        placeholderText, 
                        style: GoogleFonts.poppins(
                          fontSize: 8, 
                          fontWeight: FontWeight.w600, 
                          color: const Color(0xFF8A2BE2)
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
