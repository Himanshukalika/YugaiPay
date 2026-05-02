import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';
import '../../../core/router/app_router.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    // Base design width: 393px, Height: 852px
    final double vw = screenWidth / 100;
    final double vh = screenHeight / 100;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF1A1D3A)),
          onPressed: () => context.pop(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.help_outline, color: Color(0xFF1A1D3A)),
            onPressed: () {},
          ),
          SizedBox(width: 2 * vw),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 6.1 * vw),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 2 * vh),
            // Profile Header
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 16.5 * vw, // ~65px
                      height: 16.5 * vw,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF3F4F6),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          'RK',
                          style: GoogleFonts.poppins(
                            fontSize: 5 * vw,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF1A1D3A),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                          color: Color(0xFFF59E0B),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.shopping_bag_outlined,
                          size: 3 * vw,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 4 * vw),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rajesh Kumar',
                      style: GoogleFonts.poppins(
                        fontSize: 4.5 * vw,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF1A1D3A),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.phone_outlined, size: 3 * vw, color: const Color(0xFF6B7280)),
                        SizedBox(width: 1 * vw),
                        Text(
                          '+91 0000000000',
                          style: GoogleFonts.poppins(
                            fontSize: 3 * vw,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF6B7280),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.email_outlined, size: 3 * vw, color: const Color(0xFF6B7280)),
                        SizedBox(width: 1 * vw),
                        Text(
                          'rajesh@email.com',
                          style: GoogleFonts.poppins(
                            fontSize: 3 * vw,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF6B7280),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 4 * vh),
            // Wallet Card
            Container(
              width: double.infinity,
              height: 25 * vh,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF1E293B),
                    Color(0xFF0F172A),
                  ],
                ),
                borderRadius: BorderRadius.circular(6 * vw),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              padding: EdgeInsets.all(6 * vw),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'BUSINESS WALLET +',
                        style: GoogleFonts.poppins(
                          fontSize: 3.5 * vw,
                          fontWeight: FontWeight.w600,
                          color: Colors.white.withValues(alpha: 0.8),
                        ),
                      ),
                      // Logo
                      SizedBox(
                        width: 10 * vw,
                        height: 10 * vw,
                        child: CustomPaint(
                          painter: MiniLogoPainter(),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Text(
                    '₹ 34,10,452.00',
                    style: GoogleFonts.poppins(
                      fontSize: 7 * vw,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 2 * vh),
                  Row(
                    children: [
                      _buildCardDots(),
                      SizedBox(width: 4 * vw),
                      _buildCardDots(),
                      SizedBox(width: 4 * vw),
                      _buildCardDots(),
                      SizedBox(width: 4 * vw),
                      Text(
                        '1234',
                        style: GoogleFonts.poppins(
                          fontSize: 4 * vw,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      const Spacer(),
                      Icon(Icons.copy_outlined, color: Colors.white.withValues(alpha: 0.6), size: 4 * vw),
                    ],
                  ),
                  SizedBox(height: 2 * vh),
                  Row(
                    children: [
                      _buildWalletAction('Report Statement', vw),
                      const Spacer(),
                      _buildWalletAction('Wallet Statement', vw),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 3 * vh),
            // Partner Role Section
            Container(
              padding: EdgeInsets.all(4 * vw),
              decoration: BoxDecoration(
                color: const Color(0xFFF9FAFB),
                borderRadius: BorderRadius.circular(4 * vw),
                border: Border.all(color: const Color(0xFFF3F4F6)),
              ),
              child: Row(
                children: [
                  const Icon(Icons.person_outline, color: Color(0xFF1A1D3A)),
                  SizedBox(width: 4 * vw),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Select Your Partner Role',
                          style: GoogleFonts.poppins(
                            fontSize: 3.5 * vw,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF1A1D3A),
                          ),
                        ),
                        Text(
                          'Choose your partner level to generate your YugaiPay Partner ID.',
                          style: GoogleFonts.poppins(
                            fontSize: 2.5 * vw,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF6B7280),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Icon(Icons.keyboard_arrow_down, color: Color(0xFF6B7280)),
                ],
              ),
            ),
            SizedBox(height: 3 * vh),
            // Settings Groups
            _buildSectionHeader('ACCOUNT SETTINGS', vw),
            _buildSettingItem(
              Icons.person_outline,
              'Personal Details',
              'Name, phone, email',
              vw,
              onTap: () => context.push(AppRoutes.editPersonalDetails),
            ),
            _buildSettingItem(
              Icons.location_on_outlined,
              'Address Details',
              'Update your address',
              vw,
              onTap: () => context.push(AppRoutes.editAddressDetails),
            ),
            _buildSettingItem(Icons.credit_card_outlined, 'Bank Accounts', 'Manage linked accounts', vw),
            _buildSettingItem(Icons.verified_user_outlined, 'KYC Status', 'Verified', vw),
            
            SizedBox(height: 3 * vh),
            _buildSectionHeader('PREFERENCES', vw),
            _buildSettingItem(
              Icons.notifications_outlined,
              'Notifications',
              'Manage notifications',
              vw,
              onTap: () => context.push(AppRoutes.notifications),
            ),
            _buildSettingItem(Icons.language_outlined, 'Languages', 'Manage languages', vw),
            _buildSettingItem(Icons.lock_outline, 'Security & Privacy', 'PIN, biometric', vw),
            
            SizedBox(height: 3 * vh),
            _buildSectionHeader('SUPPORT & LEGAL', vw),
            _buildSettingItem(Icons.help_center_outlined, 'Help Center', 'FAQs and support', vw),
            _buildSettingItem(Icons.description_outlined, 'Terms & Conditions', 'Legal information', vw),
            _buildSettingItem(Icons.privacy_tip_outlined, 'Privacy Policy', 'How we use your data', vw),
            
            SizedBox(height: 3 * vh),
            _buildSectionHeader('More', vw),
            _buildSettingItem(Icons.share_outlined, 'Refer & Earn', 'Invite friends', vw),
            _buildSettingItem(Icons.star_outline, 'Rate Us', 'Share your feedback', vw),
            
            SizedBox(height: 4 * vh),
            // Logout Button
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 4 * vh),
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Color(0xFFEF4444)),
                  padding: EdgeInsets.symmetric(vertical: 2 * vh),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4 * vw),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.logout, color: Color(0xFFEF4444)),
                    SizedBox(width: 2 * vw),
                    Text(
                      'Logout',
                      style: GoogleFonts.poppins(
                        fontSize: 4 * vw,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFFEF4444),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCardDots() {
    return Row(
      children: List.generate(4, (index) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 2),
        width: 1.5 * 2, // approximation
        height: 1.5 * 2,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
      )),
    );
  }

  Widget _buildWalletAction(String title, double vw) {
    return Row(
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 2.8 * vw,
            fontWeight: FontWeight.w500,
            color: Colors.white.withValues(alpha: 0.8),
          ),
        ),
        SizedBox(width: 1 * vw),
        Icon(Icons.call_made, size: 3 * vw, color: Colors.white.withValues(alpha: 0.8)),
      ],
    );
  }

  Widget _buildSectionHeader(String title, double vw) {
    return Padding(
      padding: EdgeInsets.only(bottom: 1.5 * vw),
      child: Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: 3.5 * vw,
          fontWeight: FontWeight.w700,
          color: const Color(0xFF1A1D3A),
        ),
      ),
    );
  }

  Widget _buildSettingItem(IconData icon, String title, String subtitle, double vw, {VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 1.5 * vw),
      padding: EdgeInsets.all(4 * vw),
      decoration: BoxDecoration(
        color: const Color(0xFFF9FAFB),
        borderRadius: BorderRadius.circular(4 * vw),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(2 * vw),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(2 * vw),
            ),
            child: Icon(icon, color: const Color(0xFF1A1D3A), size: 5 * vw),
          ),
          SizedBox(width: 4 * vw),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 3.5 * vw,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF1A1D3A),
                  ),
                ),
                Text(
                  subtitle,
                  style: GoogleFonts.poppins(
                    fontSize: 2.5 * vw,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF6B7280),
                  ),
                ),
              ],
            ),
          ),
          Icon(Icons.chevron_right, color: const Color(0xFF6B7280), size: 5 * vw),
        ],
      ),
    ),
    );
  }
}

class MiniLogoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double scale = size.width / 100;
    
    final paint1 = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color(0xFFFFB65C), Color(0xFFFFA143), Color(0xFFF43B5E)],
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    final paint2 = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color(0xFFFFB65C), Color(0xFFFFA143), Color(0xFFF43B5E)],
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    // Simplified logo for the card
    Path path1 = Path();
    path1.addRRect(RRect.fromLTRBAndCorners(
      0, 0, 30 * scale, 80 * scale,
      topLeft: const Radius.circular(8),
      topRight: const Radius.circular(40),
      bottomRight: const Radius.circular(40),
      bottomLeft: const Radius.circular(8),
    ));

    Path path2 = Path();
    path2.addRRect(RRect.fromLTRBAndCorners(
      0, 0, 30 * scale, 100 * scale,
      topLeft: const Radius.circular(40),
      topRight: const Radius.circular(8),
      bottomRight: const Radius.circular(40),
      bottomLeft: const Radius.circular(8),
    ));

    canvas.save();
    canvas.translate(20 * scale, 10 * scale);
    canvas.rotate(-0.5); // ~30 degrees
    canvas.drawPath(path1, paint1);
    canvas.restore();

    canvas.save();
    canvas.translate(50 * scale, 10 * scale);
    canvas.rotate(0.4); // ~22 degrees
    canvas.drawPath(path2, paint2);
    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
