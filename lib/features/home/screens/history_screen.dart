import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

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
                
                // Title and "My Statements" Button
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6 * vw),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Wallet',
                        style: GoogleFonts.poppins(
                          fontSize: 6 * vw, // ~24px
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF1A1D3A),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 3 * vw, vertical: 1 * vh),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5 * vw),
                          border: Border.all(color: const Color(0xFFEBEBEB), width: 1),
                        ),
                        child: Row(
                          children: [
                            const Icon(Icons.arrow_circle_down_outlined, size: 18, color: Color(0xFF1A1D3A)),
                            SizedBox(width: 2 * vw),
                            Text(
                              'My Statements',
                              style: GoogleFonts.poppins(
                                fontSize: 3 * vw,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF1A1D3A),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 3 * vh),

                // Search Bar with Filter
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6 * vw),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 4 * vw, vertical: 1.5 * vh),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF3F4F6).withValues(alpha: 0.8),
                      borderRadius: BorderRadius.circular(8 * vw),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.search, color: Color(0xFF1A1D3A), size: 24),
                        SizedBox(width: 3 * vw),
                        Expanded(
                          child: Text(
                            "Search transactions",
                            style: GoogleFonts.poppins(
                              fontSize: 3.5 * vw,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF717171),
                            ),
                          ),
                        ),
                        const Icon(Icons.tune, color: Color(0xFF1A1D3A), size: 24),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 3 * vh),

                // Transactions List
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.symmetric(horizontal: 6 * vw),
                    children: [
                      _buildTransactionItem(
                        vw,
                        vh,
                        'Paid to',
                        'ABC',
                        '3 day ago',
                        '₹5,000',
                        'Debited from.......',
                        TransactionStatus.paid,
                      ),
                      _buildTransactionItem(
                        vw,
                        vh,
                        'Received from',
                        'ABC',
                        '3 day ago',
                        '₹8,000',
                        'Credited to.......',
                        TransactionStatus.received,
                      ),
                      _buildTransactionItem(
                        vw,
                        vh,
                        'Pending',
                        'ABC',
                        '3 day ago',
                        '₹8,000',
                        'Processing to.......',
                        TransactionStatus.pending,
                      ),
                      _buildTransactionItem(
                        vw,
                        vh,
                        'Paid to',
                        'ABC',
                        '3 day ago',
                        '₹5,000',
                        'Debited from.......',
                        TransactionStatus.paid,
                      ),
                      _buildTransactionItem(
                        vw,
                        vh,
                        'Received from',
                        'ABC',
                        '3 day ago',
                        '₹8,000',
                        'Credited to.......',
                        TransactionStatus.received,
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

  Widget _buildTransactionItem(
    double vw,
    double vh,
    String type,
    String name,
    String time,
    String amount,
    String details,
    TransactionStatus status,
  ) {
    Color statusColor = const Color(0xFFDC2626);
    IconData statusIcon = Icons.north_east;
    Color bgColor = const Color(0xFFFADADD);

    switch (status) {
      case TransactionStatus.paid:
        statusColor = const Color(0xFFDC2626);
        statusIcon = Icons.north_east;
        bgColor = const Color(0xFFFADADD);
        break;
      case TransactionStatus.received:
        statusColor = const Color(0xFF22C55E);
        statusIcon = Icons.south_west;
        bgColor = const Color(0xFFE6FAF1);
        break;
      case TransactionStatus.pending:
        statusColor = const Color(0xFFF59E0B);
        statusIcon = Icons.north_east; 
        bgColor = const Color(0xFFFFF4CC);
        break;
    }

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 2 * vh),
          child: Row(
            children: [
              // Status Icon
              Container(
                width: 12 * vw,
                height: 12 * vw,
                decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.circular(3 * vw),
                ),
                child: Center(
                  child: Icon(statusIcon, color: statusColor, size: 6 * vw),
                ),
              ),
              SizedBox(width: 4 * vw),
              // Name and Type
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      type,
                      style: GoogleFonts.poppins(
                        fontSize: 3 * vw,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF717171),
                      ),
                    ),
                    Text(
                      name,
                      style: GoogleFonts.poppins(
                        fontSize: 4 * vw,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF1A1D3A),
                      ),
                    ),
                    Text(
                      time,
                      style: GoogleFonts.poppins(
                        fontSize: 2.8 * vw,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF717171),
                      ),
                    ),
                  ],
                ),
              ),
              // Amount and Details
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    amount,
                    style: GoogleFonts.poppins(
                      fontSize: 4 * vw,
                      fontWeight: FontWeight.w700,
                      color: status == TransactionStatus.paid ? const Color(0xFFDC2626) : const Color(0xFF22C55E),
                    ),
                  ),
                  Text(
                    details,
                    style: GoogleFonts.poppins(
                      fontSize: 2.3 * vw,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF717171),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Divider(color: Color(0xFFF3F4F6), thickness: 1, height: 1),
      ],
    );
  }
}

enum TransactionStatus { paid, received, pending }
