import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';

class InvestmentScreen extends StatelessWidget {
  const InvestmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double vw = MediaQuery.of(context).size.width / 100;
    final double vh = MediaQuery.of(context).size.height / 100;

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
          Positioned(
            top: 16.55 * vh, // ~141px (assuming 852px height)
            left: 6.11 * vw, // ~24px (assuming 393px width)
            child: Container(
              width: 87.79 * vw, // ~345px
              height: 39.32 * vh, // ~335px
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Gold Savings',
                    style: GoogleFonts.poppins(
                      fontSize: 4.07 * vw, // ~16px
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF1A1D3A),
                      height: 1.375, // 22/16 = 1.375
                    ),
                  ),
                  SizedBox(height: 2.82 * vh), // ~24px gap
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 41.98 * vw, // ~165px
                        height: 17.61 * vh, // ~150px
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(6.11 * vw), // ~24px
                          border: Border.all(color: const Color(0xFFEBEBEB), width: 1),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 2.58 * vh, // ~22px
                              left: 3.31 * vw, // ~13px
                              child: Container(
                                width: 32.0 * vw, // Increased from 25vw to fit "low" on the first line
                                // height removed to fix overflow
                                child: Column(
                                  children: [
                                    Container(
                                      width: 23.92 * vw, // ~94px
                                      height: 4.11 * vh, // ~35px
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Daily Savings',
                                        style: GoogleFonts.poppins(
                                          fontSize: 2.54 * vw, // ~10px
                                          fontWeight: FontWeight.w700,
                                          color: const Color(0xFF1A1D3A),
                                          height: 2.2, // 22/10 = 2.2
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 0.70 * vh), // ~6px gap
                                    Text(
                                      'Start saving as low\nas ₹ 10 per day',
                                      style: GoogleFonts.poppins(
                                        fontSize: 2.54 * vw, // ~10px
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xFF4A5568),
                                        height: 1.2, // 12/10 = 1.2
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 11.03 * vh, // ~94px
                              left: 25.19 * vw, // ~99px
                              child: Image.asset(
                                'assets/images/money.png',
                                width: 12.21 * vw, // ~48px
                                height: 5.63 * vh, // ~48px
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 1.02 * vw), // ~4px gap
                      Container(
                        width: 41.73 * vw, // ~164px
                        height: 17.37 * vh, // ~148px
                        child: Column(
                          children: [
                            Container(
                              width: 41.73 * vw, // ~164px
                              height: 8.45 * vh, // ~72px
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFFFFF),
                                borderRadius: BorderRadius.circular(4.58 * vw), // ~18px
                                border: Border.all(color: const Color(0xFFEBEBEB), width: 1),
                              ),
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.only(left: 3.31 * vw), // ~13px padding
                              child: Stack(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Buy Gold',
                                        style: GoogleFonts.poppins(
                                          fontSize: 2.54 * vw, // ~10px
                                          fontWeight: FontWeight.w700,
                                          color: const Color(0xFF1A1D3A),
                                          height: 1.2, // Reduced from 2.2
                                        ),
                                      ),
                                      Text(
                                        'One time gold savings',
                                        style: GoogleFonts.poppins(
                                          fontSize: 2.54 * vw, // ~10px
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xFF4A5568),
                                          height: 2.2, // 22/10 = 2.2
                                        ),
                                      ),
                                    ],
                                  ),
                                  Positioned(
                                    top: 4.81 * vh, // ~41px
                                    left: 21.0 * vw, // Moved left
                                    // Actually, left: 111px absolute in a 164px wide container.
                                    // Since there is 13px padding, we subtract 13?
                                    // Or just use the absolute position from the Stack start.
                                    // If the Stack is inside the padded container, 111-13 = 98px.
                                    child: Image.asset(
                                      'assets/images/Buy_Gold.png',
                                      width: 9.16 * vw, // ~36px
                                      height: 4.23 * vh, // ~36px
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 0.47 * vh), // ~4px gap to fill 148px height
                            Container(
                              width: 41.73 * vw, // ~164px
                              height: 8.45 * vh, // ~72px
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFFFFF),
                                borderRadius: BorderRadius.circular(4.58 * vw), // ~18px
                                border: Border.all(color: const Color(0xFFEBEBEB), width: 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 1.88 * vh), // ~16px gap for the next item
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
}
