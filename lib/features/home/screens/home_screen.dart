import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'dart:ui';
import '../../../core/router/app_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    // Base design width: 393px, Height: 852px
    final double vw = screenWidth / 100;
    final double vh = screenHeight / 100;

    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: SizedBox(
          height: 230 * vh, // Adjusted for fixed navbar
          child: Stack(
            children: [
              // 1. Top Header Background Container
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  width: screenWidth,
                  height: 37.2 * vh, // ~317px
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFF0F7FF),
                        Color(0xFFF9F5FF),
                        Color(0xFFFFFDF0),
                      ],
                      stops: [0.0781, 0.5119, 0.9458],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x0A000000),
                        blurRadius: 2.34 * vh,
                        offset: Offset(0, 0.94 * vh),
                      ),
                    ],
                  ),
                ),
              ),

              // 2. Profile Button
              Positioned(
                top: 7.75 * vh, // ~66px
                left: 6.1 * vw, // ~24px
                child: GestureDetector(
                  onTap: () => context.push(AppRoutes.profile),
                  child: Container(
                    width: 9.68 * vw, // ~38.07px
                    height: 4.58 * vh, // ~39px
                    decoration: BoxDecoration(
                      color: const Color(0xFFF59E0B),
                      borderRadius: BorderRadius.circular(3.05 * vw), // ~12px
                    ),
                    child: Center(
                      child: Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 3.05 * vw, // ~12px
                      ),
                    ),
                  ),
                ),
              ),

              // 3. Info/Service Section Container
              Positioned(
                top: 16 * vh, // ~137px
                left: 6.1 * vw, // ~24px
                child: SizedBox(
                  width: 46 * vw, // ~181px
                  height: 19 * vh, // Increased from 18.2 * vh to fix sub-pixel overflow
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 3.1 Cashback Text
                      SizedBox(
                        width: 46 * vw, // ~181px
                        height: 12 * vh, // ~102px
                        child: RichText(
                          text: TextSpan(
                            style: GoogleFonts.poppins(
                              color: const Color(0xFF1A1D3A),
                              height: 1.2,
                            ),
                            children: [
                              TextSpan(
                                text: 'Get Cashback upto ',
                                style: GoogleFonts.poppins(
                                  fontSize: 6.1 * vw, // ~24px
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              TextSpan(
                                text: '₹500 ',
                                style: GoogleFonts.poppins(
                                  fontSize: 6.1 * vw, // ~24px
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: 'on bill',
                                style: GoogleFonts.poppins(
                                  fontSize: 4.07 * vw, // ~16px
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: '\npayments',
                                style: GoogleFonts.poppins(
                                  fontSize: 4.07 * vw, // ~16px
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 1.5 * vh), // ~13px
                      // 3.2 Action Button
                      Container(
                        width: 31.5 * vw, // ~124px
                        height: 4.7 * vh, // ~40px
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color(0xFFFF7A18), Color(0xFFFFB347)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(6.1 * vw), // ~24px
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x14000000),
                              blurRadius: 0.47 * vh,
                              offset: Offset(0, 0.47 * vh),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'Pay Now',
                            style: GoogleFonts.poppins(
                              fontSize: 3.05 * vw, // ~12px
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

          // 4. Right Side Section Container (e.g., Character/Illustration)
          Positioned(
            top: 90,
            left: 205,
            child: SizedBox(
              width: 164,
              height: 216,
              // Content will be added here
            ),
          ),

          // 5. Main Content Area
          Positioned(
            top: 40.1 * vh, // ~342px
            left: 0,
            right: 0,
            child: SizedBox(
              width: screenWidth,
              height: 190 * vh, // Adjusted for fixed navbar
              child: Column(
                children: [
                  // 5.1 Top Section in Main Area
                  Container(
                    width: screenWidth,
                    height: 14 * vh, // ~119px
                    color: Colors.white,
                    child: Stack(
                      children: [
                        // 5.1.1 Nested Container inside Top Section
                        Positioned(
                          top: 2.93 * vh, // ~25px
                          left: 3.56 * vw, // ~14px
                          right: 3.56 * vw, // Added right to match left for perfect centering
                          child: SizedBox(
                            height: 8.1 * vh, // ~69px
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // 5.1.1.1 Heading Text
                                Text(
                                  'SHG & Agriculture Services',
                                  style: GoogleFonts.poppins(
                                    fontSize: 3.05 * vw, // ~12px
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xFF1A1D3A),
                                    height: 1.0,
                                  ),
                                ),
                                SizedBox(height: 1.29 * vh), // ~11px
                                // 5.1.1.2 Services Row Container
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      _buildSakhiCard(vw, vh),
                                      _buildAgriCard(vw, vh),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    width: screenWidth,
                    height: 25 * vh, // Reduced from 148 * vh to fix excessive empty space
                    child: Stack(
                      children: [
                        // 5.2.1 Nested Container
                        Positioned(
                          top: 2.46 * vh, // ~21px
                          left: 6.17 * vw, // ~24.26px
                          right: 6.17 * vw, // Added right to match left for perfect centering
                          child: SizedBox(
                            height: 21.6 * vh, // ~184px
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // 5.2.1.1 Heading Text
                                GestureDetector(
                                  onTap: () => context.push(AppRoutes.bankingServices),
                                  child: Text(
                                    'Banking Services',
                                    style: GoogleFonts.poppins(
                                      fontSize: 3.05 * vw, // ~12px
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xFF1A1D3A),
                                      height: 1.0,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 4), // Gap property
                                // 5.2.1.2 Banner/Service Group Container
                                SizedBox(
                                  height: 14.08 * vh, // ~120px
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      _buildServiceItem(
                                        74,
                                        91,
                                        8,
                                        Image.asset(
                                          'assets/images/cash_with.png',
                                          width: 9.16 * vw,
                                          height: 9.16 * vw,
                                        ),
                                        'Cash Withdrawal',
                                      ),
                                      _buildServiceItem(
                                        74,
                                        91,
                                        8,
                                        Image.asset(
                                          'assets/images/balance_enq.png',
                                          width: 9.16 * vw,
                                          height: 9.16 * vw,
                                        ),
                                        'Balance Inquiry',
                                      ),
                                      _buildServiceItem(
                                        74,
                                        91,
                                        8,
                                        Image.asset(
                                          'assets/images/mini_stat.png',
                                          width: 8.14 * vw,
                                          height: 8.14 * vw,
                                        ),
                                        'Mini Statement',
                                      ),
                                      _buildServiceItem(
                                        74,
                                        91,
                                        8,
                                        Image.asset(
                                          'assets/images/deposit.png',
                                          width: 9.16 * vw,
                                          height: 9.16 * vw,
                                        ),
                                        'Deposit',
                                      ),
                                    ],
                                  ),
                                ),
                                // 5.2.1.3 Navigation Footer Row
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    // 5.2.1.3.1 Left Container
                                    Container(
                                      width: 64.12 * vw, // ~252px
                                      height: 3.75 * vh, // ~32px
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFF7F7F7),
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(color: const Color(0xFFEBEBEB)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color(0x05000000),
                                            blurRadius: 4,
                                            offset: const Offset(0, 4),
                                          ),
                                        ],
                                      ),
                                    ),
                                    // 5.2.1.3.2 "More" Button
                                    GestureDetector(
                                        onTap: () {
                                          context.push(AppRoutes.bankingServices);
                                        },
                                      child: Container(
                                        width: 18.32 * vw, // ~72px
                                        height: 3.75 * vh, // ~32px
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFEAF1FF),
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              top: 1.05 * vh, // ~9px
                                              left: 3.05 * vw, // ~12px
                                              child: Row(
                                                children: [
                                                  Text(
                                                    'More',
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 2.54 * vw, // ~10px
                                                      fontWeight: FontWeight.w600,
                                                      color: const Color(0xFF2F6FED),
                                                      height: 1.0,
                                                    ),
                                                  ),
                                                  SizedBox(width: 1.52 * vw), // ~6px
                                                  Icon(
                                                    Icons.arrow_forward,
                                                    size: 2.54 * vw, // ~10px
                                                    color: const Color(0xFF2F6FED),
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
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 0.0 * vh), // Reduced from 1.17 * vh to ~6px
                  // 5.3 Payment & Transfers Section
                  Container(
                    width: screenWidth,
                    height: 25 * vh, // Increased from 22 * vh to allow for multi-line labels
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 6.17 * vw, vertical: 2.11 * vh),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () => context.push(AppRoutes.paymentTransfers),
                          child: Text(
                            'Payment & Transfers',
                            style: GoogleFonts.poppins(
                              fontSize: 3.05 * vw, // ~12px
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF1A1D3A),
                            ),
                          ),
                        ),
                        // 5.3.1 Service Items Row
                        SizedBox(
                          width: 87.78 * vw, // ~345px
                          height: 12 * vh, // Increased from 8.5 * vh to accommodate multi-line labels
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _buildPaymentItem(vw, vh, 'DMT', 'assets/images/DMT.png', [const Color(0xFFE0E0E0), const Color(0xFF47248C)]),
                              _buildPaymentItem(vw, vh, 'Mobile\nRecharge', 'assets/images/mob_rec.png', [const Color(0xFFE0E0E0), const Color(0xFF47248C)]),
                              _buildPaymentItem(vw, vh, 'Electricity\nBill', 'assets/images/elec_bill.png', [const Color(0xFFE0E0E0), const Color(0xFF47248C)]),
                              _buildPaymentItem(vw, vh, 'FASTag\nRecharge', 'assets/images/fastag_rec.png', [const Color(0xFFE0E0E0), const Color(0xFF47248C)]),
                            ],
                          ),
                        ),
                        // 5.3.2 Bottom Action Row
                        SizedBox(height: 1.41 * vh), // ~12px gap
                        SizedBox(
                          width: 87.78 * vw, // ~345px
                          height: 3.76 * vh, // ~32px
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 64.12 * vw, // ~252px
                                height: 3.76 * vh, // ~32px
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF7F7F7),
                                  borderRadius: BorderRadius.circular(2.03 * vw), // ~8px
                                  border: Border.all(color: const Color(0xFFEBEBEB), width: 1),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0x05000000),
                                      blurRadius: 4,
                                      offset: const Offset(0, 4),
                                    ),
                                  ],
                                ),
                              ),
                                GestureDetector(
                                  onTap: () {
                                    context.push(AppRoutes.paymentTransfers);
                                  },
                                child: Container(
                                  width: 18.32 * vw, // ~72px
                                  height: 3.76 * vh, // ~32px
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFF2EBFF),
                                    borderRadius: BorderRadius.circular(2.03 * vw), // ~8px
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0x0A000000),
                                        blurRadius: 4,
                                        offset: const Offset(0, 4),
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'More',
                                        style: GoogleFonts.poppins(
                                          fontSize: 2.54 * vw, // ~10px
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xFF47248C),
                                          height: 1.0,
                                        ),
                                      ),
                                      SizedBox(width: 1.02 * vw), // ~4px
                                      Icon(
                                        Icons.arrow_forward,
                                        size: 2.54 * vw, // ~10px
                                        color: const Color(0xFF47248C),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Content items will be added here
                      ],
                    ),
                  ),
                  // 5.4 Loan Services Section
                  Container(
                    width: screenWidth,
                    height: 25 * vh,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 6.17 * vw, vertical: 2.11 * vh),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () => context.push(AppRoutes.loanServices),
                          child: Text(
                            'Loan Services',
                            style: GoogleFonts.poppins(
                              fontSize: 3.05 * vw, // ~12px
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF1A1D3A),
                            ),
                          ),
                        ),
                        // 5.4.1 Service Items Row
                        SizedBox(
                          width: 87.78 * vw, // ~345px
                          height: 12 * vh,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _buildPaymentItem(vw, vh, 'Personal\nLoan', 'assets/images/Personal_loan.png', [const Color(0xFFE0E0E0), const Color(0xFFF59E0B)]),
                              _buildPaymentItem(vw, vh, 'Car Loan', 'assets/images/Car Loan.png', [const Color(0xFFE0E0E0), const Color(0xFFF59E0B)]),
                              _buildPaymentItem(vw, vh, 'Business\nLoan', 'assets/images/Business Loan.png', [const Color(0xFFE0E0E0), const Color(0xFFF59E0B)]),
                              _buildPaymentItem(vw, vh, 'Home Loan', 'assets/images/Home Loan.png', [const Color(0xFFE0E0E0), const Color(0xFFF59E0B)]),
                            ],
                          ),
                        ),
                        // 5.4.2 Bottom Action Row
                        SizedBox(height: 1.41 * vh), // ~12px gap
                        SizedBox(
                          width: 87.78 * vw, // ~345px
                          height: 3.76 * vh, // ~32px
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 64.12 * vw, // ~252px
                                height: 3.76 * vh, // ~32px
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF7F7F7),
                                  borderRadius: BorderRadius.circular(2.03 * vw), // ~8px
                                  border: Border.all(color: const Color(0xFFEBEBEB), width: 1),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0x05000000),
                                      blurRadius: 4,
                                      offset: const Offset(0, 4),
                                    ),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  context.push(AppRoutes.loanServices);
                                },
                                child: Container(
                                  width: 18.32 * vw, // ~72px
                                  height: 3.76 * vh, // ~32px
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFF2EBFF),
                                    borderRadius: BorderRadius.circular(2.03 * vw), // ~8px
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0x0A000000),
                                        blurRadius: 4,
                                        offset: const Offset(0, 4),
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'More',
                                        style: GoogleFonts.poppins(
                                          fontSize: 2.54 * vw, // ~10px
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xFF47248C),
                                          height: 1.0,
                                        ),
                                      ),
                                      SizedBox(width: 1.02 * vw), // ~4px
                                      Icon(
                                        Icons.arrow_forward,
                                        size: 2.54 * vw, // ~10px
                                        color: const Color(0xFF47248C),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // 5.5 Insurance Services Section
                  Container(
                    width: screenWidth,
                    height: 25 * vh,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.only(
                      left: 6.17 * vw,
                      right: 6.17 * vw,
                      top: 0,
                      bottom: 2.11 * vh,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () => context.push(AppRoutes.insuranceServices),
                          child: Text(
                            'Insurance Services',
                            style: GoogleFonts.poppins(
                              fontSize: 3.05 * vw, // ~12px
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF1A1D3A),
                            ),
                          ),
                        ),
                        // 5.5.1 Service Items Row
                        SizedBox(
                          width: 87.78 * vw, // ~345px
                          height: 12 * vh,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _buildPaymentItem(vw, vh, 'Car', 'assets/images/car.png', [const Color(0xFFE0E0E0), const Color(0xFF14B8A6)], iconWidth: 8.14 * vw, iconHeight: 3.76 * vh, iconTop: 0.47 * vh, iconLeft: 5.34 * vw),
                              _buildPaymentItem(vw, vh, 'Bike', 'assets/images/bike.png', [const Color(0xFFE0E0E0), const Color(0xFF14B8A6)], iconWidth: 8.14 * vw, iconHeight: 3.76 * vh, iconTop: 0.47 * vh, iconLeft: 5.34 * vw),
                              _buildPaymentItem(vw, vh, 'Life', 'assets/images/life.png', [const Color(0xFFE0E0E0), const Color(0xFF14B8A6)], iconWidth: 8.14 * vw, iconHeight: 3.76 * vh, iconTop: 0.47 * vh, iconLeft: 5.34 * vw),
                              _buildPaymentItem(vw, vh, 'Health', 'assets/images/health.png', [const Color(0xFFE0E0E0), const Color(0xFF14B8A6)], iconWidth: 8.14 * vw, iconHeight: 3.76 * vh, iconTop: 0.47 * vh, iconLeft: 5.34 * vw),
                            ],
                          ),
                        ),
                        // 5.5.2 Bottom Action Row
                        SizedBox(height: 1.41 * vh), // ~12px gap
                        SizedBox(
                          width: 87.78 * vw, // ~345px
                          height: 3.76 * vh, // ~32px
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 64.12 * vw, // ~252px
                                height: 3.76 * vh, // ~32px
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF7F7F7),
                                  borderRadius: BorderRadius.circular(2.03 * vw), // ~8px
                                  border: Border.all(color: const Color(0xFFEBEBEB), width: 1),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0x05000000),
                                      blurRadius: 4,
                                      offset: const Offset(0, 4),
                                    ),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  context.push(AppRoutes.insuranceServices);
                                },
                                child: Container(
                                  width: 18.32 * vw, // ~72px
                                  height: 3.76 * vh, // ~32px
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFE6F7F5),
                                    borderRadius: BorderRadius.circular(2.03 * vw), // ~8px
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0x0A000000),
                                        blurRadius: 4,
                                        offset: const Offset(0, 4),
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'More',
                                        style: GoogleFonts.poppins(
                                          fontSize: 2.54 * vw, // ~10px
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xFF14B8A6),
                                          height: 1.0,
                                        ),
                                      ),
                                      SizedBox(width: 1.02 * vw), // ~4px
                                      Icon(
                                        Icons.arrow_forward,
                                        size: 2.54 * vw, // ~10px
                                        color: const Color(0xFF47248C),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // 5.6 Travel Booking Section
                  Container(
                    width: screenWidth,
                    height: 25 * vh,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.only(
                      left: 6.17 * vw,
                      right: 6.17 * vw,
                      top: 0,
                      bottom: 2.11 * vh,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () => context.push(AppRoutes.travelBookingServices),
                          child: Text(
                            'Travel Booking',
                            style: GoogleFonts.poppins(
                              fontSize: 3.05 * vw, // ~12px
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF1A1D3A),
                            ),
                          ),
                        ),
                        // 5.6.1 Service Items Row
                        SizedBox(
                          width: 87.78 * vw, // ~345px
                          height: 12 * vh,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _buildPaymentItem(vw, vh, 'Bus', 'assets/images/Bus.png', [const Color(0xFFEBEBEB), const Color(0xFF0EA5E9)], iconWidth: 8.14 * vw, iconHeight: 3.76 * vh, iconTop: 0.47 * vh, iconLeft: 5.34 * vw),
                              _buildPaymentItem(vw, vh, 'Train', 'assets/images/train.png', [const Color(0xFFEBEBEB), const Color(0xFF0EA5E9)], iconWidth: 8.14 * vw, iconHeight: 3.76 * vh, iconTop: 0.47 * vh, iconLeft: 5.34 * vw),
                              _buildPaymentItem(vw, vh, 'Flight', 'assets/images/plane.png', [const Color(0xFFEBEBEB), const Color(0xFF0EA5E9)], iconWidth: 8.14 * vw, iconHeight: 3.76 * vh, iconTop: 0.47 * vh, iconLeft: 5.34 * vw),
                              _buildPaymentItem(vw, vh, 'Hotel', 'assets/images/hotel.png', [const Color(0xFFEBEBEB), const Color(0xFF0EA5E9)], iconWidth: 8.14 * vw, iconHeight: 3.76 * vh, iconTop: 0.47 * vh, iconLeft: 5.34 * vw),
                            ],
                          ),
                        ),
                        // 5.6.2 Bottom Action Row
                        SizedBox(height: 1.41 * vh), // ~12px gap
                        SizedBox(
                          width: 87.78 * vw, // ~345px
                          height: 3.76 * vh, // ~32px
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 64.12 * vw, // ~252px
                                height: 3.76 * vh, // ~32px
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF7F7F7),
                                  borderRadius: BorderRadius.circular(2.03 * vw), // ~8px
                                  border: Border.all(color: const Color(0xFFEBEBEB), width: 1),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0x05000000),
                                      blurRadius: 4,
                                      offset: const Offset(0, 4),
                                    ),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  context.push(AppRoutes.travelBookingServices);
                                },
                                child: Container(
                                  width: 18.32 * vw, // ~72px
                                  height: 3.76 * vh, // ~32px
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFE7F6FD),
                                    borderRadius: BorderRadius.circular(2.03 * vw), // ~8px
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0x0A000000),
                                        blurRadius: 4,
                                        offset: const Offset(0, 4),
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'More',
                                        style: GoogleFonts.poppins(
                                          fontSize: 2.54 * vw, // ~10px
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xFF0EA5E9),
                                          height: 1.0,
                                        ),
                                      ),
                                      SizedBox(width: 1.02 * vw), // ~4px
                                      Icon(
                                        Icons.arrow_forward,
                                        size: 2.54 * vw, // ~10px
                                        color: const Color(0xFF0EA5E9),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // 5.7 Investment Services Section
                  Container(
                    width: screenWidth,
                    height: 25 * vh,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.only(
                      left: 6.17 * vw,
                      right: 6.17 * vw,
                      top: 0,
                      bottom: 2.11 * vh,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () => context.push(AppRoutes.investment),
                          child: Text(
                            'Investment Services',
                            style: GoogleFonts.poppins(
                              fontSize: 3.05 * vw, // ~12px
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF1A1D3A),
                            ),
                          ),
                        ),
                        // 5.7.1 Service Items Row
                        SizedBox(
                          width: 87.78 * vw, // ~345px
                          height: 12 * vh,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _buildPaymentItem(vw, vh, 'Gold', 'assets/images/Gold.png', [const Color(0xFFE0E0E0), const Color(0xFF22A55E)], iconWidth: 8.14 * vw, iconHeight: 3.76 * vh, iconTop: 0.47 * vh, iconLeft: 5.34 * vw),
                              _buildPaymentItem(vw, vh, 'Silver', 'assets/images/Silver.png', [const Color(0xFFE0E0E0), const Color(0xFF22A55E)], iconWidth: 8.14 * vw, iconHeight: 3.76 * vh, iconTop: 0.47 * vh, iconLeft: 5.34 * vw),
                              _buildPaymentItem(vw, vh, 'Gold\nSavings', 'assets/images/Gold_Sav.png', [const Color(0xFFE0E0E0), const Color(0xFF22A55E)], iconWidth: 8.14 * vw, iconHeight: 3.76 * vh, iconTop: 0.47 * vh, iconLeft: 5.34 * vw),
                              _buildPaymentItem(vw, vh, 'Silver\nSavings', 'assets/images/Silver_Sav.png', [const Color(0xFFE0E0E0), const Color(0xFF22A55E)], iconWidth: 8.14 * vw, iconHeight: 3.76 * vh, iconTop: 0.47 * vh, iconLeft: 5.34 * vw),
                            ],
                          ),
                        ),
                        // 5.7.2 Bottom Action Row
                        SizedBox(height: 1.41 * vh), // ~12px gap
                        SizedBox(
                          width: 87.78 * vw, // ~345px
                          height: 3.76 * vh, // ~32px
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 64.12 * vw, // ~252px
                                height: 3.76 * vh, // ~32px
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF7F7F7),
                                  borderRadius: BorderRadius.circular(2.03 * vw), // ~8px
                                  border: Border.all(color: const Color(0xFFEBEBEB), width: 1),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0x05000000),
                                      blurRadius: 4,
                                      offset: const Offset(0, 4),
                                    ),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  context.push(AppRoutes.investment);
                                },
                                child: Container(
                                  width: 18.32 * vw, // ~72px
                                  height: 3.76 * vh, // ~32px
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFE6FAF3),
                                    borderRadius: BorderRadius.circular(2.03 * vw), // ~8px
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0x0A000000),
                                        blurRadius: 4,
                                        offset: const Offset(0, 4),
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'More',
                                        style: GoogleFonts.poppins(
                                          fontSize: 2.54 * vw, // ~10px
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xFF22A55E),
                                          height: 1.0,
                                        ),
                                      ),
                                      SizedBox(width: 1.02 * vw), // ~4px
                                      Icon(
                                        Icons.arrow_forward,
                                        size: 2.54 * vw, // ~10px
                                        color: const Color(0xFF22A55E),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // 5.8 Tax & Compliance Services Section
                  Container(
                    width: screenWidth,
                    height: 25 * vh,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.only(
                      left: 6.17 * vw,
                      right: 6.17 * vw,
                      top: 0,
                      bottom: 2.11 * vh,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () => context.push(AppRoutes.taxComplianceServices),
                          child: Text(
                            'Tax & Compliance Services',
                            style: GoogleFonts.poppins(
                              fontSize: 3.05 * vw, // ~12px
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF1A1D3A),
                            ),
                          ),
                        ),
                        // 5.8.1 Service Items Row
                        SizedBox(
                          width: 87.78 * vw, // ~345px
                          height: 12 * vh,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _buildPaymentItem(vw, vh, 'Billing &\nAccounting\nSolutions', 'assets/images/Billing.png', [const Color(0xFFE0E0E0), const Color(0xFF4B5563)], iconWidth: 8.14 * vw, iconHeight: 3.76 * vh, iconTop: 0.47 * vh, iconLeft: 5.34 * vw, maxLines: 3),
                              _buildPaymentItem(vw, vh, 'PAN Card', 'assets/images/pan.png', [const Color(0xFFE0E0E0), const Color(0xFF4B5563)], iconWidth: 8.14 * vw, iconHeight: 3.76 * vh, iconTop: 0.47 * vh, iconLeft: 5.34 * vw),
                              _buildPaymentItem(vw, vh, 'Income Tax\nFiling', 'assets/images/ITR.png', [const Color(0xFFE0E0E0), const Color(0xFF4B5563)], iconWidth: 8.14 * vw, iconHeight: 3.76 * vh, iconTop: 0.47 * vh, iconLeft: 5.34 * vw),
                              _buildPaymentItem(vw, vh, 'GST', 'assets/images/GST.png', [const Color(0xFFE0E0E0), const Color(0xFF4B5563)], iconWidth: 8.14 * vw, iconHeight: 3.76 * vh, iconTop: 0.47 * vh, iconLeft: 5.34 * vw),
                            ],
                          ),
                        ),
                        // 5.8.2 Bottom Action Row
                        SizedBox(height: 1.41 * vh), // ~12px gap
                        SizedBox(
                          width: 87.78 * vw, // ~345px
                          height: 3.76 * vh, // ~32px
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 64.12 * vw, // ~252px
                                height: 3.76 * vh, // ~32px
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF7F7F7),
                                  borderRadius: BorderRadius.circular(2.03 * vw), // ~8px
                                  border: Border.all(color: const Color(0xFFEBEBEB), width: 1),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0x05000000),
                                      blurRadius: 4,
                                      offset: const Offset(0, 4),
                                    ),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  context.push(AppRoutes.taxComplianceServices);
                                },
                                child: Container(
                                  width: 18.32 * vw, // ~72px
                                  height: 3.76 * vh, // ~32px
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFF3F4F6),
                                    borderRadius: BorderRadius.circular(2.03 * vw), // ~8px
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0x0A000000),
                                        blurRadius: 4,
                                        offset: const Offset(0, 4),
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'More',
                                        style: GoogleFonts.poppins(
                                          fontSize: 2.54 * vw, // ~10px
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xFF4B5563),
                                          height: 1.0,
                                        ),
                                      ),
                                      SizedBox(width: 1.02 * vw), // ~4px
                                      Icon(
                                        Icons.arrow_forward,
                                        size: 2.54 * vw, // ~10px
                                        color: const Color(0xFF4B5563),
                                      ),
                                    ],
                                  ),
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
        ),
      ),
    );
  }

  Widget _buildPaymentItem(
    double vw,
    double vh,
    String label,
    String assetPath,
    List<Color> gradientColors, {
    double? iconWidth,
    double? iconHeight,
    double? iconTop,
    double? iconLeft,
    int? maxLines,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 18.82 * vw, // ~74px
          height: 4.7 * vh, // ~40px
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2.03 * vw), // ~8px
            boxShadow: [
              BoxShadow(
                color: const Color(0x0A000000),
                blurRadius: 4,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(2.03 * vw),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(2.03 * vw),
                ),
                child: CustomPaint(
                  painter: GradientBorderPainter(
                    radius: 2.03 * vw,
                    strokeWidth: 1,
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: gradientColors,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: iconTop ?? 0.59 * vh, // Default ~5px
                        left: iconLeft ?? 5.6 * vw, // Default ~22px
                        child: Image.asset(
                          assetPath,
                          width: iconWidth ?? 7.63 * vw, // Default ~30px
                          height: iconHeight ?? 3.52 * vh, // Default ~30px
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 0.94 * vh), // ~8px gap
        SizedBox(
          width: 18.82 * vw, // ~74px
          height: 5.2 * vh, // Fixed height to accommodate up to 3 lines (10px * 1.2 * 3 + safety)
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 2.54 * vw, // ~10px
              fontWeight: FontWeight.w500,
              color: const Color(0xFF1A1D3A),
              height: 1.2, // Increased line height for better readability when wrapped
            ),
            maxLines: maxLines ?? 3, // Increased default to 3
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }

  Widget _buildServiceItem(double width, double height, double gap, Widget content, String label) {
    return SizedBox(
      width: width,
      height: height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // 5.2.1.2.1.1.1 Icon Container
          Container(
            width: 52,
            height: 52,
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.9),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.04),
                  blurRadius: 4,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: CustomPaint(
              painter: GradientBorderPainter(
                radius: 26, // Perfect circle for 52x52
                strokeWidth: 1,
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFFE0E0E0), Color(0xFF2F6FED)],
                  stops: [0.1248, 0.8805],
                ),
              ),
              child: Center(child: content),
            ),
          ),
          SizedBox(height: gap),
          // 5.2.1.2.1.1.2 Label
          if (label.isNotEmpty)
            SizedBox(
              width: width,
              height: 31,
              child: Text(
                label,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF1A1D3A),
                  height: 1.0,
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildSakhiCard(double vw, double vh) {
    return Container(
      width: 45.54 * vw, // ~179px
      height: 4.7 * vh, // ~40px
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(2.03 * vw),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 4,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: CustomPaint(
        painter: GradientBorderPainter(
          radius: 2.03 * vw,
          strokeWidth: 1,
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFFE0E0E0), Color(0xFFFF4081)],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 5.34 * vw), // ~21px
          child: Row(
            children: [
              SvgPicture.string(
                '''<svg width="32" height="32" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">
<path fill-rule="evenodd" clip-rule="evenodd" d="M22.6465 27.3652C21.2237 31.1991 17.075 32.8866 13.3799 31.1347C12.7642 30.8427 12.4564 30.0881 12.6934 29.4492L13.5625 27.1045C14.0499 27.2936 14.6152 27.1914 15.0401 26.7793L27.2696 14.9053L22.6465 27.3652ZM21.9668 4.4619C23.3897 0.627951 27.5393 -1.05963 31.2344 0.692364C31.8501 0.984411 32.157 1.73901 31.92 2.37791L27.9502 13.0722C27.4239 12.7614 26.755 12.8276 26.2696 13.2988L14.4161 24.8066L21.9668 4.4619ZM0.623097 1.6201C4.09332 -0.644266 8.43445 0.51196 10.3194 4.20213L14.5225 12.4297C16.4075 16.12 15.1217 20.9473 11.6514 23.2119C11.0732 23.5891 10.3504 23.397 10.0362 22.7822L0.144581 3.41697C-0.169328 2.80198 0.0448562 1.99749 0.623097 1.6201Z" fill="url(#paint0_linear_7_4354)"/>
<defs>
<linearGradient id="paint0_linear_7_4354" x1="14.3092" y1="-1.28138" x2="37.1544" y2="60.0257" gradientUnits="userSpaceOnUse">
<stop stop-color="#D81B60"/>
<stop offset="1" stop-color="#E82A6D"/>
</linearGradient>
</defs>
</svg>''',
                width: 8.14 * vw,
                height: 8.14 * vw,
              ),
              SizedBox(width: 3.05 * vw), // ~12px
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'YugaiPay-',
                    style: GoogleFonts.poppins(
                      fontSize: 2.54 * vw,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF1A1D3A),
                    ),
                  ),
                  ShaderMask(
                    shaderCallback: (bounds) => const LinearGradient(
                      colors: [Color(0xFFE82A6D), Color(0xFFD81B60)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
                    child: Text(
                      'Sakhi',
                      style: GoogleFonts.poppins(
                        fontSize: 2.54 * vw,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                        color: Colors.white, // Overridden by ShaderMask
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAgriCard(double vw, double vh) {
    return Container(
      width: 45.54 * vw, // ~179px
      height: 4.7 * vh, // ~40px
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(2.03 * vw),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 4,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: CustomPaint(
        painter: GradientBorderPainter(
          radius: 2.03 * vw,
          strokeWidth: 1,
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFFE0E0E0), Color(0xFFA8E063)],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 7.12 * vw), // ~28px
          child: Row(
            children: [
              SvgPicture.string(
                '''<svg width="32" height="32" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">
<path fill-rule="evenodd" clip-rule="evenodd" d="M22.6465 27.3652C21.2237 31.199 17.075 32.8866 13.3799 31.1347C12.7641 30.8427 12.4563 30.0882 12.6934 29.4492L13.5635 27.1035C14.0509 27.2924 14.6163 27.1907 15.041 26.7783L27.2696 14.9052L22.6465 27.3652ZM21.9668 4.46187C23.3898 0.62811 27.5393 -1.05966 31.2344 0.692336C31.8499 0.984372 32.1567 1.7391 31.9199 2.37788L27.9502 13.0712C27.424 12.7607 26.7558 12.8277 26.2705 13.2988L14.416 24.8066L21.9668 4.46187ZM0.623067 1.62007C4.09332 -0.644466 8.43443 0.511864 10.3194 4.20213L14.5225 12.4296C16.4073 16.1198 15.1222 20.9471 11.6524 23.2119C11.0741 23.5892 10.3504 23.397 10.0362 22.7822L0.144551 3.41695C-0.169301 2.80198 0.0448491 1.99744 0.623067 1.62007Z" fill="url(#paint0_linear_7_4362)"/>
<defs>
<linearGradient id="paint0_linear_7_4362" x1="1.84056" y1="2.94251" x2="22.4758" y2="50.3878" gradientUnits="userSpaceOnUse">
<stop stop-color="#9ACFA1"/>
<stop offset="0.25" stop-color="#A8E063"/>
<stop offset="0.5" stop-color="#56AB2F"/>
</linearGradient>
</defs>
</svg>''',
                width: 8.14 * vw,
                height: 8.14 * vw,
              ),
              SizedBox(width: 3.05 * vw), // ~12px
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'YugaiPay-',
                    style: GoogleFonts.poppins(
                      fontSize: 2.54 * vw,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF1A1D3A),
                    ),
                  ),
                  ShaderMask(
                    shaderCallback: (bounds) => const LinearGradient(
                      colors: [Color(0xFFA8E063), Color(0xFF56AB2F)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
                    child: Text(
                      'Agri',
                      style: GoogleFonts.poppins(
                        fontSize: 2.54 * vw,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                        color: Colors.white, // Overridden by ShaderMask
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
<<<<<<< HEAD

  // --- BOTTOM NAV BAR ---
  Widget _buildBottomNavBar(BuildContext context, double vw, double vh) {
    return Container(
      width: 100 * vw,
      height: 7.98 * vh, // ~68px
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        horizontal: 7.89 * vw, // ~31px
      ),
      child: SafeArea(
        top: false,
        child: SizedBox(
          height: 4.81 * vh, // ~41px
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildSmallItem(
                vw,
                vh,
                'Home',
                SvgPicture.string(
                  '''<svg width="16" height="18" viewBox="0 0 16 18" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M2 16H5V10H11V16H14V7L8 2.5L2 7V16ZM0 18V6L8 0L16 6V18H9V12H7V18H0Z" fill="url(#paint0_linear_208_132)"/>
<defs>
<linearGradient id="paint0_linear_208_132" x1="8" y1="0" x2="8" y2="18" gradientUnits="userSpaceOnUse">
<stop stop-color="#4C1D95"/>
<stop offset="1" stop-color="#8B5CF6"/>
</linearGradient>
</defs>
</svg>''',
                  width: 4.07 * vw, // ~16px
                  height: 2.11 * vh, // ~18px
                ),
                labelGradient: const LinearGradient(
                  colors: [Color(0xFF4C1D95), Color(0xFF8B5CF6)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              _buildSmallItem(
                vw,
                vh,
                'Search',
                const Icon(Icons.search, color: Color(0xFF1A1D3A)),
                itemWidth: 11.96 * vw, // ~47px
                onTap: () {
                  // Navigate to Search Screen
                },
              ),
              _buildSmallItem(
                vw,
                vh,
                'Alerts',
                SvgPicture.string(
                  '''<svg width="16" height="20" viewBox="0 0 16 20" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0 17V15H2V8C2 6.61667 2.41667 5.3875 3.25 4.3125C4.08333 3.2375 5.16667 2.53333 6.5 2.2V1.5C6.5 1.08333 6.64583 0.729167 6.9375 0.4375C7.22917 0.145833 7.58333 0 8 0C8.41667 0 8.77083 0.145833 9.0625 0.4375C9.35417 0.729167 9.5 1.08333 9.5 1.5V2.2C10.8333 2.53333 11.9167 3.2375 12.75 4.3125C13.5833 5.3875 14 6.61667 14 8V15H16V17H0ZM8 20C7.45 20 6.97917 19.8042 6.5875 19.4125C6.19583 19.0208 6 18.55 6 18H10C10 18.55 9.80417 19.0208 9.4125 19.4125C9.02083 19.8042 8.55 20 8 20ZM4 15H12V8C12 6.9 11.6083 5.95833 10.825 5.175C10.0417 4.39167 9.1 4 8 4C6.9 4 5.95833 4.39167 5.175 5.175C4.39167 5.95833 4 6.9 4 8V15Z" fill="#4A5568"/>
</svg>''',
                  width: 4.07 * vw, // ~16px
                  height: 2.35 * vh, // ~20px
                ),
                itemWidth: 11.96 * vw, // ~47px
                onTap: () {
                  // Navigate to Alerts Screen
                },
              ),
              _buildSmallItem(
                vw,
                vh,
                'Report',
                SvgPicture.string(
                  '''<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M13.3 14.7L14.7 13.3L11 9.6V5H9V10.4L13.3 14.7ZM10 20C8.61667 20 7.31667 19.7375 6.1 19.2125C4.88333 18.6875 3.825 17.975 2.925 17.075C2.025 16.175 1.3125 15.1167 0.7875 13.9C0.2625 12.6833 0 11.3833 0 10C0 8.61667 0.2625 7.31667 0.7875 6.1C1.3125 4.88333 2.025 3.825 2.925 2.925C3.825 2.025 4.88333 1.3125 6.1 0.7875C7.31667 0.2625 8.61667 0 10 0C11.3833 0 12.6833 0.2625 13.9 0.7875C15.1167 1.3125 16.175 2.025 17.075 2.925C17.975 3.825 18.6875 4.88333 19.2125 6.1C19.7375 7.31667 20 8.61667 20 10C20 11.3833 19.7375 12.6833 19.2125 13.9C18.6875 15.1167 17.975 16.175 17.075 17.075C16.175 17.975 15.1167 18.6875 13.9 19.2125C12.6833 19.7375 11.3833 20 10 20ZM10 18C12.2167 18 14.1042 17.2208 15.6625 15.6625C17.2208 14.1042 18 12.2167 18 10C18 7.78333 17.2208 5.89583 15.6625 4.3375C14.1042 2.77917 12.2167 2 10 2C7.78333 2 5.89583 2.77917 4.3375 4.3375C2.77917 5.89583 2 7.78333 2 10C2 12.2167 2.77917 14.1042 4.3375 15.6625C5.89583 17.2208 7.78333 18 10 18Z" fill="#4A5568"/>
</svg>''',
                  width: 5.09 * vw, // ~20px
                  height: 2.35 * vh, // ~20px
                ),
                itemWidth: 11.96 * vw, // ~47px
                onTap: () {
                  context.push(AppRoutes.report);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper for small bottom items
  Widget _buildSmallItem(double vw, double vh, String label, Widget iconWidget, {Gradient? labelGradient, VoidCallback? onTap, double? itemWidth}) {
    final double width = itemWidth ?? 11.96 * vw; // Default ~47px (increased from 31px to prevent clipping)
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: 5.4 * vh, // Increased from 4.81 * vh to fix bottom overflow (accommodate icon + gap + label)
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconWidget,
            SizedBox(height: 0.23 * vh), // ~2px gap
            Container(
              width: width,
              height: 2.11 * vh, // Increased from 1.76 * vh to prevent text hiding/clipping
              alignment: Alignment.center,
              child: labelGradient != null
                ? ShaderMask(
                    shaderCallback: (bounds) => labelGradient.createShader(
                      Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                    ),
                    child: Text(
                      label,
                      style: GoogleFonts.poppins(
                        fontSize: 2.54 * vw, // ~10px
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        height: 1.0,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                : Text(
                    label,
                    style: GoogleFonts.poppins(
                      fontSize: 2.54 * vw, // ~10px
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF1A1D3A),
                      height: 1.0,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
          ),
        ],
      ),
    ),
  );
}
=======
>>>>>>> 39caa964e5d80f9f9d6f29a002143360d0fbf9e8
}

class GradientBorderPainter extends CustomPainter {
  final double radius;
  final double strokeWidth;
  final Gradient gradient;

  GradientBorderPainter({
    required this.radius,
    required this.strokeWidth,
    required this.gradient,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(
        strokeWidth / 2, strokeWidth / 2, size.width - strokeWidth, size.height - strokeWidth);
    final rRect = RRect.fromRectAndRadius(rect, Radius.circular(radius));
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..shader = gradient.createShader(rect);

    canvas.drawRRect(rRect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

