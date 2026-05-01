import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BankingServicesScreen extends StatelessWidget {
  const BankingServicesScreen({super.key});

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
                    'Banking Services',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF1A1D3A),
                      height: 22 / 16,
                      letterSpacing: 0,
                    ),
                  ),
                  const SizedBox(height: 24),

                  // AEPS Section
                  _buildSectionTitle('AEPS'),
                  const SizedBox(height: 16),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildServiceIcon(
                        title: 'Cash\nWithdrawal',
                        imagePath: 'assets/icon/png/Cash_Withdrawal.png',
                      ),
                      _buildServiceIcon(
                        title: 'Balance\nInquiry',
                        imagePath: 'assets/icon/png/Balance_Inquiry.png',
                      ),
                      _buildServiceIcon(
                        title: 'Mini\nStatement',
                        imagePath: 'assets/icon/png/Mini_Statement.png',
                      ),
                      _buildServiceIcon(
                        title: 'Deposit',
                        imagePath: 'assets/icon/png/Deposit.png',
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),

                  // Micro ATM Services Section
                  _buildSectionTitle('Micro ATM Services'),
                  const SizedBox(height: 16),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildServiceIcon(
                        title: 'Cash\nWithdrawal',
                        imagePath: 'assets/icon/png/Cash_Withdrawal.png',
                      ),
                      _buildServiceIcon(
                        title: 'Balance\nInquiry',
                        imagePath: 'assets/icon/png/Balance_Inquiry.png',
                      ),
                      _buildServiceIcon(
                        title: 'Mini\nStatement',
                        imagePath: 'assets/icon/png/Mini_Statement.png',
                      ),
                      _buildServiceIcon(
                        title: 'Deposit',
                        imagePath: 'assets/icon/png/Deposit.png',
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),

                  // Aadhaar Pay and CMS Section
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildSectionTitle('Aadhaar Pay'),
                            const SizedBox(height: 16),
                            _buildServiceIcon(
                              title: 'Cash\nWithdrawal',
                              imagePath: 'assets/icon/png/Cash_Withdrawal.png',
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildSectionTitle('CMS'),
                            const SizedBox(height: 16),
                            _buildServiceIcon(
                              title: 'Cash\nManagement\nServices',
                              imagePath: 'assets/icon/png/CMS.png',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),

                  // Open Bank Account Section
                  _buildSectionTitle('Open Bank Account'),
                  const SizedBox(height: 16),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildServiceIcon(
                        title: 'Savings Account\nOpening',
                        imagePath: 'assets/icon/png/Savings_Account_Opening.png',
                        width: 100,
                      ),
                      _buildServiceIcon(
                        title: 'Credit Card\nSourcing',
                        imagePath: 'assets/icon/png/Credit_Card_Sourcing.png',
                        width: 100,
                      ),
                      _buildServiceIcon(
                        title: 'Current Account\nOpening',
                        imagePath: 'assets/icon/png/Current_Account_Opening.png',
                        width: 100,
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
    double width = 80,
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
              border: Border.all(color: const Color(0xFFCBE0FF), width: 1.2),
            ),
            child: Image.asset(imagePath, fit: BoxFit.contain),
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
