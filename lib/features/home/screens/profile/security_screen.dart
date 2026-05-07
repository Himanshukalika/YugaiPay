import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecurityScreen extends StatefulWidget {
  const SecurityScreen({super.key});

  @override
  State<SecurityScreen> createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  bool isBiometricEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF0F172A)),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Security',
          style: GoogleFonts.poppins(
            color: const Color(0xFF0F172A),
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        centerTitle: false,
        titleSpacing: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.help_outline, color: Color(0xFF0F172A)),
            onPressed: () {},
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            const SizedBox(height: 30),
            _buildSecurityItem(
              iconPath: 'assets/icon/png/security/finger.png',
              title: 'Biometric & screen lock',
              trailing: Switch(
                value: isBiometricEnabled,
                onChanged: (value) {
                  setState(() {
                    isBiometricEnabled = value;
                  });
                },
                activeThumbColor: const Color(0xFF2B6DFE),
                activeTrackColor: const Color(0xFF2B6DFE).withValues(alpha: 0.1),
                inactiveThumbColor: Colors.white,
                inactiveTrackColor: const Color(0xFFEBEBEB),
              ),
            ),
            _buildSecurityItem(
              iconPath: 'assets/icon/png/security/key.png',
              title: 'Set Up passcode',
              onTap: () {},
            ),
            _buildSecurityItem(
              iconPath: 'assets/icon/png/security/block.png',
              title: 'Blocked accounts',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSecurityItem({
    required String iconPath,
    required String title,
    Widget? trailing,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Color(0xFFF3F4F6), width: 1),
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              iconPath,
              width: 24,
              height: 24,
              color: const Color(0xFF0F172A),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Text(
                title,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF0F172A),
                ),
              ),
            ),
            trailing ?? const Icon(Icons.chevron_right, color: Color(0xFF0F172A), size: 20),
          ],
        ),
      ),
    );
  }
}
