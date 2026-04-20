import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;
import 'dart:ui';
import 'package:permission_handler/permission_handler.dart';
import 'package:go_router/go_router.dart';
import '../../../core/router/app_router.dart';

class PermissionScreen extends StatefulWidget {
  const PermissionScreen({super.key});

  @override
  State<PermissionScreen> createState() => _PermissionScreenState();
}

class _PermissionScreenState extends State<PermissionScreen> {
  bool isPreciseSelected = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final cardWidth = math.min(345.0, size.width * 0.9);
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Background decorations (Scaling with screen size)
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
          
          // Main Permissions Card (Responsive centering)
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
                  padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Header Text
                      Text(
                        "Allow YugaiPay to access this\ndevice's location?",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF1A1D3A),
                          height: 1.4,
                        ),
                      ),
                      const SizedBox(height: 19),
                      Container(
                        width: double.infinity,
                        height: 0.25,
                        color: const Color(0xFF94A3B8),
                      ),
                      const SizedBox(height: 19),
                      
                      // Responsive Selection Row
                      LayoutBuilder(
                        builder: (context, constraints) {
                          final itemWidth = (constraints.maxWidth - 20) / 2;
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _buildLocationOption(
                                title: 'Precise',
                                isSelected: isPreciseSelected,
                                imagePath: 'assets/images/globemap.jpg',
                                width: itemWidth,
                                onTap: () => setState(() => isPreciseSelected = true),
                              ),
                              const SizedBox(width: 20),
                              _buildLocationOption(
                                title: 'Approximate',
                                isSelected: !isPreciseSelected,
                                imagePath: 'assets/images/approximatemap.jpg',
                                width: itemWidth,
                                onTap: () => setState(() => isPreciseSelected = false),
                              ),
                            ],
                          );
                        },
                      ),
                      
                      const SizedBox(height: 19),
                      Container(
                        width: double.infinity,
                        height: 0.25,
                        color: const Color(0xFF94A3B8),
                      ),
                      const SizedBox(height: 19),
                      
                      // Action Buttons
                      Column(
                        children: [
                          _buildActionLink(
                            text: 'While Using this app',
                            onTap: () => _handlePermissionRequest(context),
                          ),
                          const SizedBox(height: 16),
                          _buildActionLink(
                            text: 'Only this time',
                            onTap: () => _handlePermissionRequest(context),
                          ),
                          const SizedBox(height: 16),
                          _buildActionLink(
                            text: 'Don’t allow',
                            onTap: () => Navigator.pop(context),
                          ),
                        ],
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

  Widget _buildLocationOption({
    required String title,
    required bool isSelected,
    required String imagePath,
    required double width,
    required VoidCallback onTap,
  }) {
    final imageSize = math.min(width, 100.0);
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: width,
        child: Column(
          children: [
            Container(
              width: imageSize,
              height: imageSize,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected ? const Color(0xFFFF7A18) : const Color(0xFF94A3B8),
                  width: isSelected ? 3 : 2,
                ),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: isSelected ? const Color(0xFFFF7A18) : const Color(0xFF1A1D3A),
                height: 1.0,
              ),
            ),
          ],
        ),
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

  Future<void> _handlePermissionRequest(BuildContext context) async {
    if (!kIsWeb) {
      try {
        final status = await Permission.locationWhenInUse.request();
        if (status.isGranted && context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Location Permission Granted!')),
          );
        }
      } catch (e) {
        debugPrint('Permission error: $e');
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Permission requested (Simulated on Web)')),
      );
    }
    
    if (context.mounted) {
      context.push(AppRoutes.permission2);
    }
  }
}
