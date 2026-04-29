import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
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
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: SizedBox(
            width: 393,
            height: 852,
            child: Stack(
              children: [
                // Large Rotated Decorative Background
                Positioned(
                  top: -130.52,
                  left: -50,
                  child: Transform.rotate(
                    angle: -55 * (math.pi / 180),
                    child: Opacity(
                      opacity: 0.4,
                      child: Container(
                        width: 921.47,
                        height: 1200.62,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(64),
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0x334C1D95), // rgba(76, 29, 149, 0.2)
                              Color(0x338B5CF6), // rgba(139, 92, 246, 0.2)
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.08),
                              blurRadius: 4,
                              offset: const Offset(0, 4),
                            ),
                          ],
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

                // Second Rotated Decorative Background
                Positioned(
                  top: 250,
                  left: -260,
                  child: Transform.rotate(
                    angle: -41.59 * (math.pi / 180),
                    child: Opacity(
                      opacity: 0.1,
                      child: Container(
                        width: 900.47,
                        height: 450.10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0x334C1D95), // rgba(76, 29, 149, 0.2)
                              Color(0x334C1D95), // rgba(76, 29, 149, 0.2)
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.18), // #0000002E
                              blurRadius: 4,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(24),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                            child: Container(color: Colors.transparent),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                
                // Main Permissions Card
                Center(
                  child: Container(
                    width: 345,
                    height: 375,
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
                      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 10),
                      child: Column(
                        children: [
                          // Header Text
                          SizedBox(
                            width: 228,
                            child: Text(
                              "Allow YugaiPay to access this\ndevice's location?",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF1A1D3A),
                                height: 1.4,
                              ),
                            ),
                          ),
                          const SizedBox(height: 19),
                          // Divider Line
                          Container(
                            width: double.infinity,
                            height: 0.25,
                            color: const Color(0xFF94A3B8),
                          ),
                          const SizedBox(height: 19),
                          
                          // Permission Items Row
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Precise Item
                              _buildLocationOption(
                                title: 'Precise',
                                isSelected: isPreciseSelected,
                                imagePath: 'assets/images/globemap.jpg',
                                onTap: () => setState(() => isPreciseSelected = true),
                              ),
                              const SizedBox(width: 40),
                              // Approximate Item
                              _buildLocationOption(
                                title: 'Approximate',
                                isSelected: !isPreciseSelected,
                                imagePath: 'assets/images/approximatemap.jpg',
                                onTap: () => setState(() => isPreciseSelected = false),
                              ),
                            ],
                          ),
                          
                          const SizedBox(height: 19),
                          // Divider Line
                          Container(
                            width: double.infinity,
                            height: 0.25,
                            color: const Color(0xFF94A3B8),
                          ),
                          const SizedBox(height: 19),
                          
                          // Action Buttons Column
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                _buildActionLink(
                                  text: 'While Using this app',
                                  onTap: () => _handlePermissionRequest(context),
                                ),
                                _buildActionLink(
                                  text: 'Only this time',
                                  onTap: () => _handlePermissionRequest(context),
                                ),
                                _buildActionLink(
                                  text: 'Don’t allow',
                                  onTap: () => Navigator.pop(context),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLocationOption({
    required String title,
    required bool isSelected,
    required String imagePath,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 104,
        child: Column(
          children: [
            Container(
              width: 100,
              height: 100,
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
    // Check if running on Web to avoid PlatformChannel errors with permission_handler
    if (!kIsWeb) {
      try {
        final status = await Permission.locationWhenInUse.request();
        if (status.isGranted) {
          if (context.mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Location Permission Granted!')),
            );
          }
        }
      } catch (e) {
        debugPrint('Permission request error: $e');
      }
    } else {
      // On Web, we simulate the grant for the demo flow
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Permission requested (Simulated on Web)')),
      );
    }

    // Navigate to Permission Screen 2 regardless for testing flow
    if (context.mounted) {
      context.push(AppRoutes.permission2);
    }
  }
}
