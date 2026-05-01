import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';
import '../../../core/router/app_router.dart';

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
                                clipBehavior: Clip.none,
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
                                    left: 24.94 * vw, // ~111px - relative to the card's padding?
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
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Positioned(
                                    top: 0.82 * vh, // ~7px
                                    left: 3.56 * vw, // ~14px
                                    child: Container(
                                      width: 28.50 * vw, // ~112px
                                      // height removed to fix overflow
                                      alignment: Alignment.centerLeft,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Monthly Savings',
                                            style: GoogleFonts.poppins(
                                              fontSize: 2.54 * vw, // ~10px
                                              fontWeight: FontWeight.w700,
                                              color: const Color(0xFF1A1D3A),
                                              height: 1.2, // Reduced from 2.2
                                            ),
                                          ),
                                          Text(
                                            'Steady gold savings',
                                            style: GoogleFonts.poppins(
                                              fontSize: 2.54 * vw, // ~10px
                                              fontWeight: FontWeight.w400,
                                              color: const Color(0xFF4A5568),
                                              height: 2.2, // 22/10 = 2.2
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                    Positioned(
                                      top: 4.93 * vh, // ~42px
                                      left: 28.50 * vw, // ~112px
                                      child: Image.asset(
                                        'assets/images/Gold.png',
                                        width: 7.63 * vw, // ~30px
                                        height: 3.52 * vh, // ~30px
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 2.82 * vh), // ~24px gap between gold and silver
                    Text(
                      'Silver Savings',
                      style: GoogleFonts.poppins(
                        fontSize: 4.07 * vw, // ~16px
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF1A1D3A),
                        height: 1.0,
                      ),
                    ),
                    SizedBox(height: 3.99 * vh), // ~34px gap
                    Container(
                    width: 87.79 * vw, // ~345px
                    height: 10.68 * vh, // ~91px
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 22.65 * vw, // ~89px
                          height: 10.68 * vh, // ~91px
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 13.23 * vw, // ~52px
                                height: 6.10 * vh, // ~52px
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFFFFFF),
                                  shape: BoxShape.circle,
                                  border: Border.all(color: const Color(0xFFEBEBEB), width: 1),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 1.29 * vh, // ~11px
                                      left: 2.93 * vw, // ~11.5px
                                      child: Image.asset(
                                        'assets/images/Save_Daily.png',
                                        width: 7.63 * vw, // ~30px
                                        height: 3.52 * vh, // ~30px
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 0.94 * vh), // Increased to ~8px
                              Text(
                                'Save\nDaily',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  fontSize: 2.54 * vw, // ~10px
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xFF1A1D3A),
                                  height: 1.5, // Increased from 1.0
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 28.75 * vw, // ~113px
                          height: 10.68 * vh, // ~91px
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 13.23 * vw, // ~52px
                                height: 6.10 * vh, // ~52px
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFFFFFF),
                                  shape: BoxShape.circle,
                                  border: Border.all(color: const Color(0xFFEBEBEB), width: 1),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 1.29 * vh, // ~11px
                                      left: 2.93 * vw, // ~11.5px
                                      child: Image.asset(
                                        'assets/images/Save_mon.png',
                                        width: 7.63 * vw, // ~30px
                                        height: 3.52 * vh, // ~30px
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 0.94 * vh), // Increased to ~8px
                              Text(
                                'Save\nMonthly',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  fontSize: 2.54 * vw, // ~10px
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xFF1A1D3A),
                                  height: 1.5, // Increased from 1.0
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 18.83 * vw, // ~74px
                          height: 10.68 * vh, // ~91px
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 13.23 * vw, // ~52px
                                height: 6.10 * vh, // ~52px
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFFFFFF),
                                  shape: BoxShape.circle,
                                  border: Border.all(color: const Color(0xFFEBEBEB), width: 1),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 1.29 * vh, // ~11px
                                      left: 2.93 * vw, // ~11.5px
                                      child: Image.asset(
                                        'assets/images/Silver.png',
                                        width: 7.63 * vw, // ~30px
                                        height: 3.52 * vh, // ~30px
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 0.94 * vh), // Increased to ~8px
                              Text(
                                'Buy\nSilver',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  fontSize: 2.54 * vw, // ~10px
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xFF1A1D3A),
                                  height: 1.5, // Increased from 1.0
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
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
          currentIndex: 0, // Reset to 0 as Investment is a sub-page
          onTap: (index) {
            if (index == 3) {
              context.push(AppRoutes.report);
            } else if (index == 0) {
              context.go(AppRoutes.home);
            }
          },
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
