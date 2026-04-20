import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;
import 'dart:ui';
import 'package:permission_handler/permission_handler.dart';
import 'package:go_router/go_router.dart';
import '../../../core/router/app_router.dart';

class PermissionScreen2 extends StatefulWidget {
  const PermissionScreen2({super.key});

  @override
  State<PermissionScreen2> createState() => _PermissionScreen2State();
}

class _PermissionScreen2State extends State<PermissionScreen2> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final cardWidth = math.min(345.0, size.width * 0.9);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Consistent Responsive Background
          Positioned(
            top: -size.height * 0.15,
            left: -size.width * 0.1,
            child: Transform.rotate(
              angle: -55 * (math.pi / 180),
              child: Opacity(
                opacity: 0.4,
                child: Container(
                  width: math.max(size.width * 2, 921.0),
                  height: math.max(size.height * 1.5, 1200.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(64),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0x334C1D95), Color(0x338B5CF6)],
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(64),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                      child: Container(color: Colors.transparent),
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Responsive Centered Card
          Center(
            child: SingleChildScrollView(
              child: Container(
                width: cardWidth,
                margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
                decoration: BoxDecoration(
                  color: const Color(0xFFF8FAFC),
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      blurRadius: 4,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Phone Icon
                      SvgPicture.string(
                        '''<svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M12.7125 13.5C11.15 13.5 9.60625 13.1594 8.08125 12.4781C6.55625 11.7969 5.16875 10.8313 3.91875 9.58125C2.66875 8.33125 1.70312 6.94375 1.02188 5.41875C0.340625 3.89375 0 2.35 0 0.7875C0 0.5625 0.075 0.375 0.225 0.225C0.375 0.075 0.5625 0 0.7875 0H3.825C4 0 4.15625 0.059375 4.29375 0.178125C4.43125 0.296875 4.5125 0.4375 4.5375 0.6L5.025 3.225C5.05 3.425 5.04375 3.59375 5.00625 3.73125C4.96875 3.86875 4.9 3.9875 4.8 4.0875L2.98125 5.925C3.23125 6.3875 3.52812 6.83437 3.87187 7.26562C4.21562 7.69688 4.59375 8.1125 5.00625 8.5125C5.39375 8.9 5.8 9.25938 6.225 9.59063C6.65 9.92188 7.1 10.225 7.575 10.5L9.3375 8.7375C9.45 8.625 9.59688 8.54062 9.77813 8.48438C9.95938 8.42813 10.1375 8.4125 10.3125 8.4375L12.9 8.9625C13.075 9.0125 13.2188 9.10312 13.3312 9.23438C13.4437 9.36563 13.5 9.5125 13.5 9.675V12.7125C13.5 12.9375 13.425 13.125 13.275 13.275C13.125 13.425 12.9375 13.5 12.7125 13.5ZM2.26875 4.5L3.50625 3.2625L3.1875 1.5H1.51875C1.58125 2.0125 1.66875 2.51875 1.78125 3.01875C1.89375 3.51875 2.05625 4.0125 2.26875 4.5ZM8.98125 11.2125C9.46875 11.425 9.96563 11.5938 10.4719 11.7188C10.9781 11.8438 11.4875 11.925 12 11.9625V10.3125L10.2375 9.95625L8.98125 11.2125Z" fill="#BE32D7"/>
</svg>''',
                        width: 18,
                        height: 18,
                      ),
                      const SizedBox(height: 16),
                      // Header Text
                      SizedBox(
                        width: cardWidth * 0.7,
                        child: Text(
                          "Allow YugaiPay to make and manage Contacts, Message, Camera & Files ?",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF1A1D3A),
                            height: 1.4,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        width: double.infinity,
                        height: 0.25,
                        color: const Color(0xFF94A3B8),
                      ),
                      const SizedBox(height: 16),
                      
                      // Actions
                      _buildActionLink(
                        text: 'Allow',
                        onTap: () => _handlePermissions(context),
                      ),
                      const SizedBox(height: 16),
                      _buildActionLink(
                        text: 'Don’t allow',
                        onTap: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionLink({required String text, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          fontSize: 10,
          fontWeight: FontWeight.w600,
          color: const Color(0xFF4A5568),
          height: 1.0,
        ),
      ),
    );
  }

  Future<void> _handlePermissions(BuildContext context) async {
    if (!kIsWeb) {
      try {
        await [
          Permission.contacts,
          Permission.sms,
          Permission.camera,
          Permission.storage,
        ].request();
      } catch (e) {
        debugPrint('Permission error: $e');
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Permissions Simulating on Web...')),
      );
    }

    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Moving to Identity Verification...')),
      );
    }
  }
}
