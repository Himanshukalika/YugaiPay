import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import '../../../core/router/app_router.dart';
import 'dart:ui';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // 1. Background Decorative Circle (Top Left) - FIXED
          Positioned(
            top: -79,
            left: -102,
            child: Opacity(
              opacity: 0.6,
              child: Container(
                width: 613,
                height: 631,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(76, 29, 149, 0.4),
                      Color.fromRGBO(108, 61, 198, 0.4),
                      Color.fromRGBO(139, 92, 246, 0.4),
                    ],
                    stops: [0.0, 0.5, 1.0],
                  ),
                ),
              ),
            ),
          ),

          // 2. Background Decorative Oval (Bottom) - FIXED
          Positioned(
            top: 450,
            left: -110,
            child: Opacity(
              opacity: 0.6,
              child: Container(
                width: 613,
                height: 463,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(76, 29, 149, 0.4),
                      Color.fromRGBO(108, 61, 198, 0.4),
                      Color.fromRGBO(139, 92, 246, 0.4),
                    ],
                    stops: [0.0, 0.5, 1.0],
                  ),
                ),
              ),
            ),
          ),

          // 3. Global Backdrop Filter - FIXED
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 80, sigmaY: 80),
              child: Container(color: Colors.transparent),
            ),
          ),

          // 4. Main Content (Non-scrollable)


                // 4. Header Image
                Positioned(
                  top: 6,
                  left: (screenWidth - 345) / 2,
                  child: Image.asset(
                    "assets/images/login _screen'.png",
                    width: 345,
                    height: 215,
                    fit: BoxFit.contain,
                  ),
                ),
                
                // 5. Login Form Card
                Positioned(
                  top: 221,
                  left: (screenWidth - 345) / 2,
                  child: Container(
                    width: 345,
                    height: 349,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.08),
                          blurRadius: 4,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40, left: 12, right: 12),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 321,
                            height: 270,
                            child: Column(
                              children: [
                                // Welcome Back Title
                                Text(
                                  'Welcome Back,',
                                  textAlign: TextAlign.center,
                                  maxLines: 1,
                                  softWrap: false,
                                  style: GoogleFonts.poppins(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xFF4A5568),
                                    height: 1.2,
                                  ),
                                ),
                                const SizedBox(height: 12),
                                // Subtitle and Partner Badge Row
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Login to your YugaiPay',
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xFF1A1D3A),
                                        height: 1.2,
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    ShaderMask(
                                      shaderCallback: (bounds) => const LinearGradient(
                                        colors: [Color(0xFFFFA143), Color(0xFFFA3B5E)],
                                      ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
                                      child: Text(
                                        'PARTNER',
                                        style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                          height: 1.2,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 32),
                                // Input Area
                                SizedBox(
                                  width: 296,

                                  child: Column(
                                    children: [
                                      // Styled Input Container with Gradient Border
                                      GestureDetector(
                                        onTap: () => context.go(AppRoutes.home),
                                        child: Container(
                                          width: 296,
                                          height: 38,
                                          padding: const EdgeInsets.all(1), // Border width
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(24),
                                          gradient: LinearGradient(
                                            begin: Alignment.centerLeft,
                                            end: Alignment.centerRight,
                                            colors: [
                                              const Color(0xFF4C1D95).withValues(alpha: 0.3),
                                              const Color(0xFF8B5CF6).withValues(alpha: 0.3),
                                            ],
                                          ),
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(23),
                                            gradient: const LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: [
                                                Color.fromRGBO(76, 29, 149, 0.05),
                                                Color.fromRGBO(139, 92, 246, 0.05),
                                              ],
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 56.5),
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                  width: 183,
                                                  height: 38,
                                                  child: Row(
                                                    children: [
                                                      SvgPicture.string(
                                                        '''<svg width="19" height="20" viewBox="0 0 19 20" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M8.995 2.45C10.7617 2.45 12.4283 2.82917 13.995 3.5875C15.5617 4.34583 16.87 5.44167 17.92 6.875C18.0367 7.025 18.0742 7.15833 18.0325 7.275C17.9908 7.39167 17.92 7.49167 17.82 7.575C17.72 7.65833 17.6033 7.69583 17.47 7.6875C17.3367 7.67917 17.22 7.60833 17.12 7.475C16.2033 6.175 15.0242 5.17917 13.5825 4.4875C12.1408 3.79583 10.6117 3.45 8.995 3.45C7.37833 3.45 5.86167 3.79583 4.445 4.4875C3.02833 5.17917 1.85333 6.175 0.92 7.475C0.82 7.625 0.703333 7.70833 0.57 7.725C0.436667 7.74167 0.32 7.70833 0.22 7.625C0.103333 7.54167 0.0325 7.4375 0.0075 7.3125C-0.0175 7.1875 0.02 7.05833 0.12 6.925C1.15333 5.50833 2.44917 4.40833 4.0075 3.625C5.56583 2.84167 7.22833 2.45 8.995 2.45ZM8.995 4.8C11.245 4.8 13.1783 5.55 14.795 7.05C16.4117 8.55 17.22 10.4083 17.22 12.625C17.22 13.4583 16.9242 14.1542 16.3325 14.7125C15.7408 15.2708 15.02 15.55 14.17 15.55C13.32 15.55 12.5908 15.2708 11.9825 14.7125C11.3742 14.1542 11.07 13.4583 11.07 12.625C11.07 12.075 10.8658 11.6125 10.4575 11.2375C10.0492 10.8625 9.56167 10.675 8.995 10.675C8.42833 10.675 7.94083 10.8625 7.5325 11.2375C7.12417 11.6125 6.92 12.075 6.92 12.625C6.92 14.2417 7.39917 15.5917 8.3575 16.675C9.31583 17.7583 10.5533 18.5167 12.07 18.95C12.22 19 12.32 19.0833 12.37 19.2C12.42 19.3167 12.4283 19.4417 12.395 19.575C12.3617 19.6917 12.295 19.7917 12.195 19.875C12.095 19.9583 11.97 19.9833 11.82 19.95C10.0867 19.5167 8.67 18.6542 7.57 17.3625C6.47 16.0708 5.92 14.4917 5.92 12.625C5.92 11.7917 6.22 11.0917 6.82 10.525C7.42 9.95833 8.145 9.675 8.995 9.675C9.845 9.675 10.57 9.95833 11.17 10.525C11.77 11.0917 12.07 11.7917 12.07 12.625C12.07 13.175 12.2783 13.6375 12.695 14.0125C13.1117 14.3875 13.6033 14.575 14.17 14.575C14.7367 14.575 15.22 14.3875 15.62 14.0125C16.02 13.6375 16.22 13.175 16.22 12.625C16.22 10.6917 15.5117 9.06667 14.095 7.75C12.6783 6.43333 10.9867 5.775 9.02 5.775C7.05333 5.775 5.36167 6.43333 3.945 7.75C2.52833 9.06667 1.82 10.6833 1.82 12.6C1.82 13 1.8575 13.5 1.9325 14.1C2.0075 14.7 2.18667 15.4 2.47 16.2C2.52 16.35 2.51583 16.4833 2.4575 16.6C2.39917 16.7167 2.30333 16.8 2.17 16.85C2.03667 16.9 1.9075 16.8958 1.7825 16.8375C1.6575 16.7792 1.57 16.6833 1.52 16.55C1.27 15.9 1.09083 15.2542 0.9825 14.6125C0.874167 13.9708 0.82 13.3083 0.82 12.625C0.82 10.4083 1.62417 8.55 3.2325 7.05C4.84083 5.55 6.76167 4.8 8.995 4.8ZM8.995 0C10.0617 0 11.1033 0.129167 12.12 0.3875C13.1367 0.645833 14.12 1.01667 15.07 1.5C15.22 1.58333 15.3075 1.68333 15.3325 1.8C15.3575 1.91667 15.345 2.03333 15.295 2.15C15.245 2.26667 15.1617 2.35833 15.045 2.425C14.9283 2.49167 14.7867 2.48333 14.62 2.4C13.7367 1.95 12.8242 1.60417 11.8825 1.3625C10.9408 1.12083 9.97833 1 8.995 1C8.02833 1 7.07833 1.1125 6.145 1.3375C5.21167 1.5625 4.32 1.91667 3.47 2.4C3.33667 2.48333 3.20333 2.50417 3.07 2.4625C2.93667 2.42083 2.83667 2.33333 2.77 2.2C2.70333 2.06667 2.68667 1.94583 2.72 1.8375C2.75333 1.72917 2.83667 1.63333 2.97 1.55C3.90333 1.05 4.87833 0.666667 5.895 0.4C6.91167 0.133333 7.945 0 8.995 0ZM8.995 7.225C10.545 7.225 11.8783 7.74583 12.995 8.7875C14.1117 9.82917 14.67 11.1083 14.67 12.625C14.67 12.775 14.6242 12.8958 14.5325 12.9875C14.4408 13.0792 14.32 13.125 14.17 13.125C14.0367 13.125 13.92 13.0792 13.82 12.9875C13.72 12.8958 13.67 12.775 13.67 12.625C13.67 11.375 13.2075 10.3292 12.2825 9.4875C11.3575 8.64583 10.2617 8.225 8.995 8.225C7.72833 8.225 6.64083 8.64583 5.7325 9.4875C4.82417 10.3292 4.37 11.375 4.37 12.625C4.37 13.975 4.60333 15.1208 5.07 16.0625C5.53667 17.0042 6.22 17.95 7.12 18.9C7.22 19 7.27 19.1167 7.27 19.25C7.27 19.3833 7.22 19.5 7.12 19.6C7.02 19.7 6.90333 19.75 6.77 19.75C6.63667 19.75 6.52 19.7 6.42 19.6C5.43667 18.5667 4.6825 17.5125 4.1575 16.4375C3.6325 15.3625 3.37 14.0917 3.37 12.625C3.37 11.1083 3.92 9.82917 5.02 8.7875C6.12 7.74583 7.445 7.225 8.995 7.225ZM8.97 12.125C9.12 12.125 9.24083 12.175 9.3325 12.275C9.42417 12.375 9.47 12.4917 9.47 12.625C9.47 13.875 9.92 14.9 10.82 15.7C11.72 16.5 12.77 16.9 13.97 16.9C14.07 16.9 14.2117 16.8917 14.395 16.875C14.5783 16.8583 14.77 16.8333 14.97 16.8C15.12 16.7667 15.2492 16.7875 15.3575 16.8625C15.4658 16.9375 15.5367 17.05 15.57 17.2C15.6033 17.3333 15.5783 17.45 15.495 17.55C15.4117 17.65 15.3033 17.7167 15.17 17.75C14.87 17.8333 14.6075 17.8792 14.3825 17.8875C14.1575 17.8958 14.02 17.9 13.97 17.9C12.4867 17.9 11.1992 17.4 10.1075 16.4C9.01583 15.4 8.47 14.1417 8.47 12.625C8.47 12.4917 8.51583 12.375 8.6075 12.275C8.69917 12.175 8.82 12.125 8.97 12.125Z" fill="url(#paint0_linear_7_5873)" fill-opacity="0.9"/>
<defs>
<linearGradient id="paint0_linear_7_5873" x1="9.02447" y1="0" x2="9.02447" y2="19.9643" gradientUnits="userSpaceOnUse">
<stop stop-color="#4C1D95"/>
<stop offset="1" stop-color="#8B5CF6"/>
</linearGradient>
</defs>
</svg>''',
                                                        width: 18.05,
                                                        height: 19.96,
                                                      ),
                                                      const SizedBox(width: 6),
                                                      ShaderMask(
                                                        shaderCallback: (bounds) => const LinearGradient(
                                                          colors: [Color(0xFF4C1D95), Color(0xFF8B5CF6)],
                                                        ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
                                                        child: Text(
                                                          'Login using Biometric',
                                                          style: GoogleFonts.poppins(
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w600,
                                                            color: Colors.white,
                                                            height: 1.2,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      ),
                                      const SizedBox(height: 12),
                                      // Second Styled Input Container (Gradient Border only)
                                      GestureDetector(
                                        onTap: () => context.go(AppRoutes.home),
                                        child: CustomPaint(
                                        painter: GradientBorderPainter(
                                          radius: 24,
                                          strokeWidth: 1,
                                          gradient: LinearGradient(
                                            begin: Alignment.centerLeft,
                                            end: Alignment.centerRight,
                                            colors: [
                                              const Color(0xFF4C1D95).withValues(alpha: 0.3),
                                              const Color(0xFF8B5CF6).withValues(alpha: 0.3),
                                            ],
                                          ),
                                        ),
                                        child: SizedBox(
                                          width: 296,
                                          height: 38,
                                          child: Padding(
                                            padding: const EdgeInsets.only(top: 4, left: 29.5, right: 29.5),
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                  width: 237,
                                                  height: 24,
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      // Element Container
                                                      Container(
                                                        width: 50,
                                                        height: 18,
                                                        padding: const EdgeInsets.only(top: 0.75, left: 3),
                                                        child: Row(
                                                          children: [
                                                            SvgPicture.string(
                                                              '''<svg width="12" height="16" viewBox="0 0 12 16" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M1.5 15.75C1.0875 15.75 0.734375 15.6031 0.440625 15.3094C0.146875 15.0156 0 14.6625 0 14.25V6.75C0 6.3375 0.146875 5.98438 0.440625 5.69063C0.734375 5.39687 1.0875 5.25 1.5 5.25H2.25V3.75C2.25 2.7125 2.61563 1.82812 3.34688 1.09687C4.07812 0.365625 4.9625 0 6 0C7.0375 0 7.92188 0.365625 8.65313 1.09687C9.38438 1.82812 9.75 2.7125 9.75 3.75V5.25H10.5C10.9125 5.25 11.2656 5.39687 11.5594 5.69063C11.8531 5.98438 12 6.3375 12 6.75V14.25C12 14.6625 11.8531 15.0156 11.5594 15.3094C11.2656 15.6031 10.9125 15.75 10.5 15.75H1.5ZM1.5 14.25H10.5V6.75H1.5V14.25ZM7.05938 11.5594C7.35313 11.2656 7.5 10.9125 7.5 10.5C7.5 10.0875 7.35313 9.73438 7.05938 9.44063C6.76563 9.14688 6.4125 9 6 9C5.5875 9 5.23438 9.14688 4.94063 9.44063C4.64687 9.73438 4.5 10.0875 4.5 10.5C4.5 10.9125 4.64687 11.2656 4.94063 11.5594C5.23438 11.8531 5.5875 12 6 12C6.4125 12 6.76563 11.8531 7.05938 11.5594ZM3.75 5.25H8.25V3.75C8.25 3.125 8.03125 2.59375 7.59375 2.15625C7.15625 1.71875 6.625 1.5 6 1.5C5.375 1.5 4.84375 1.71875 4.40625 2.15625C3.96875 2.59375 3.75 3.125 3.75 3.75V5.25Z" fill="#4A5568"/>
</svg>''',
                                                              width: 12,
                                                              height: 15.75,
                                                            ),
                                                            const SizedBox(width: 4), // Small gap between icon and text
                                                            Text(
                                                              'MPIN',
                                                              style: GoogleFonts.poppins(
                                                                fontSize: 10,
                                                                fontWeight: FontWeight.w600,
                                                                color: const Color(0xFF4A5568),
                                                                height: 1.2,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),

                                                      // Element Container (61x24)
                                                      Container(
                                                        width: 70,
                                                        height: 24,
                                                        alignment: Alignment.centerLeft,
                                                        child: Row(
                                                          children: [
                                                            Image.asset(
                                                              'assets/images/face_id.png',
                                                              width: 24,
                                                              height: 24,
                                                            ),
                                                            const SizedBox(width: 4), // Small gap
                                                            Text(
                                                              'Face ID',
                                                              style: GoogleFonts.poppins(
                                                                fontSize: 10,
                                                                fontWeight: FontWeight.w600,
                                                                color: const Color(0xFF4A5568),
                                                                height: 1.2,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),

                                                      // New Element Container (75x18)
                                                      SizedBox(
                                                        width: 75,
                                                        height: 18,
                                                        child: Row(
                                                          children: [
                                                            SvgPicture.string(
                                                              '''<svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
<mask id="mask0_7_5886" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="18" height="18">
<rect width="18" height="18" fill="#D9D9D9"/>
</mask>
<g mask="url(#mask0_7_5886)">
<path d="M4.5 16.5002C4.0875 16.5002 3.73438 16.3534 3.44063 16.0596C3.14687 15.7659 3 15.4127 3 15.0002V7.50024C3 7.08774 3.14687 6.73462 3.44063 6.44087C3.73438 6.14712 4.0875 6.00024 4.5 6.00024H5.25V4.50024C5.25 3.46274 5.61563 2.57837 6.34688 1.84712C7.07812 1.11587 7.9625 0.750244 9 0.750244C10.0375 0.750244 10.9219 1.11587 11.6531 1.84712C12.3844 2.57837 12.75 3.46274 12.75 4.50024V6.00024H13.5C13.9125 6.00024 14.2656 6.14712 14.5594 6.44087C14.8531 6.73462 15 7.08774 15 7.50024V15.0002C15 15.4127 14.8531 15.7659 14.5594 16.0596C14.2656 16.3534 13.9125 16.5002 13.5 16.5002H4.5ZM4.5 15.0002H13.5V7.50024H4.5V15.0002ZM10.0594 12.3096C10.3531 12.0159 10.5 11.6627 10.5 11.2502C10.5 10.8377 10.3531 10.4846 10.0594 10.1909C9.76563 9.89712 9.4125 9.75024 9 9.75024C8.5875 9.75024 8.23438 9.89712 7.94063 10.1909C7.64688 10.4846 7.5 10.8377 7.5 11.2502C7.5 11.6627 7.64688 12.0159 7.94063 12.3096C8.23438 12.6034 8.5875 12.7502 9 12.7502C9.4125 12.7502 9.76563 12.6034 10.0594 12.3096ZM6.75 6.00024H11.25V4.50024C11.25 3.87524 11.0312 3.34399 10.5938 2.90649C10.1562 2.46899 9.625 2.25024 9 2.25024C8.375 2.25024 7.84375 2.46899 7.40625 2.90649C6.96875 3.34399 6.75 3.87524 6.75 4.50024V6.00024Z" fill="#4A5568"/>
</g>
</svg>''',
                                                              width: 18,
                                                              height: 18,
                                                            ),
                                                            const SizedBox(width: 4),
                                                            Text(
                                                              'Password',
                                                              style: GoogleFonts.poppins(
                                                                fontSize: 10,
                                                                fontWeight: FontWeight.w600,
                                                                color: const Color(0xFF4A5568),
                                                                height: 1.2,
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
                                      ),
                                      ),
                                      const SizedBox(height: 48),
                                      // Forgot MPIN Text
                                      SizedBox(
                                        width: 96,
                                        height: 21,
                                        child: Center(
                                          child: RichText(
                                            textAlign: TextAlign.center,
                                            text: TextSpan(
                                              style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: const Color(0xFF4A5568),
                                                height: 1.2,
                                              ),
                                              children: [
                                                const TextSpan(text: 'Forgot '),
                                                TextSpan(
                                                  text: 'MPIN',
                                                  style: GoogleFonts.poppins(
                                                    decoration: TextDecoration.underline,
                                                  ),
                                                ),
                                                const TextSpan(text: ' ?'),
                                              ],
                                            ),
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
                ),
                
                // 6. New Container below card
                Positioned(
                  top: 590,
                  left: 12,
                  right: 12,
                  child: Container(
                    height: 157,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 372,
                          height: 21,
                          child: Text(
                            'Available Services',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF1A1D3A),
                              height: 1.0,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Container(
                          height: 120,
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Service Card 1
                              Expanded(
                                child: Container(
                                  height: 120,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                  child: CustomPaint(
                                    painter: GradientBorderPainter(
                                      radius: 24,
                                      strokeWidth: 1,
                                      gradient: const LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [Color(0xFFFFA143), Color(0xFFF43B5E)],
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 18, bottom: 0, left: 5, right: 5),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 102,
                                            child: Column(
                                              children: [
                                                SvgPicture.string(
                                                  '''<svg width="54" height="54" viewBox="0 0 54 54" fill="none" xmlns="http://www.w3.org/2000/svg">
<path fill-rule="evenodd" clip-rule="evenodd" d="M38.2168 46.179C35.8158 52.6488 28.8138 55.4969 22.5782 52.5403C21.5393 52.0475 21.0212 50.7746 21.4209 49.6966L22.8887 45.7386C23.711 46.057 24.6643 45.8852 25.3809 45.1897L46.0196 25.1526L38.2168 46.179ZM37.0704 7.52957C39.4716 1.06012 46.4726 -1.78818 52.7081 1.16824C53.7472 1.66095 54.2652 2.93473 53.8653 4.01297L47.167 22.0589C46.2788 21.534 45.1503 21.6465 44.3311 22.4417L24.3291 41.8596L37.0704 7.52957ZM1.0518 2.73465C6.90783 -1.08669 14.2333 0.863803 17.4141 7.09109L24.5069 20.9759C27.6877 27.2031 25.5189 35.3495 19.6631 39.1712C18.6871 39.8081 17.4658 39.4834 16.9356 38.4456L0.244186 5.76785C-0.285958 4.72995 0.07579 3.37158 1.0518 2.73465Z" fill="url(#paint0_linear_7_5902)"/>
<defs>
<linearGradient id="paint0_linear_7_5902" x1="3.10598" y1="4.96556" x2="37.9286" y2="85.0306" gradientUnits="userSpaceOnUse">
<stop stop-color="#FFB65C"/>
<stop offset="0.25" stop-color="#FFA143"/>
<stop offset="0.5" stop-color="#F43B5E"/>
</linearGradient>
</defs>
</svg>''',
                                                  width: 54,
                                                  height: 53.7,
                                                ),
                                                const SizedBox(height: 4),
                                                Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'YugaiPay-',
                                                      style: GoogleFonts.poppins(
                                                        fontSize: 10,
                                                        fontWeight: FontWeight.w700,
                                                        color: const Color(0xFF1A1D3A),
                                                        height: 1.5,
                                                      ),
                                                    ),
                                                    ShaderMask(
                                                      shaderCallback: (bounds) => const LinearGradient(
                                                        colors: [Color(0xFFFFA143), Color(0xFFF43B5E)],
                                                      ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
                                                      child: Text(
                                                        'Banking Services',
                                                        style: GoogleFonts.poppins(
                                                          fontSize: 10,
                                                          fontWeight: FontWeight.w700,
                                                          fontStyle: FontStyle.italic,
                                                          color: Colors.white,
                                                          height: 1.5,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              // Service Card 2: Sakhi
                              Expanded(
                                child: Container(
                                  height: 120,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                  child: CustomPaint(
                                    painter: GradientBorderPainter(
                                      radius: 24,
                                      strokeWidth: 1,
                                      gradient: const LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [Color(0xFFFF4081), Color(0xFFE82A6D)],
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 18, bottom: 0, left: 5, right: 5),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 102,
                                            child: Column(
                                              children: [
                                                SvgPicture.string(
                                                  '''<svg width="54" height="54" viewBox="0 0 54 54" fill="none" xmlns="http://www.w3.org/2000/svg">
<path fill-rule="evenodd" clip-rule="evenodd" d="M38.2168 46.179C35.8158 52.6488 28.8138 55.4969 22.5782 52.5403C21.5393 52.0475 21.0212 50.7746 21.4209 49.6966L22.8887 45.7386C23.711 46.057 24.6643 45.8852 25.3809 45.1897L46.0196 25.1526L38.2168 46.179ZM37.0704 7.52957C39.4716 1.06012 46.4726 -1.78818 52.7081 1.16824C53.7472 1.66095 54.2652 2.93473 53.8653 4.01297L47.167 22.0589C46.2788 21.534 45.1503 21.6465 44.3311 22.4417L24.3291 41.8596L37.0704 7.52957ZM1.0518 2.73465C6.90783 -1.08669 14.2333 0.863803 17.4141 7.09109L24.5069 20.9759C27.6877 27.2031 25.5189 35.3495 19.6631 39.1712C18.6871 39.8081 17.4658 39.4834 16.9356 38.4456L0.244186 5.76785C-0.285958 4.72995 0.07579 3.37158 1.0518 2.73465Z" fill="url(#paint0_linear_7_5910)"/>
<defs>
<linearGradient id="paint0_linear_7_5910" x1="24.1469" y1="-2.16236" x2="62.6989" y2="101.295" gradientUnits="userSpaceOnUse">
<stop stop-color="#D81B60"/>
<stop offset="0.175211" stop-color="#FF4081" stop-opacity="0.6"/>
<stop offset="0.337267" stop-color="#E82A6D" stop-opacity="0.840377"/>
<stop offset="0.389382" stop-color="#D81B60"/>
</linearGradient>
</defs>
</svg>''',
                                                  width: 54,
                                                  height: 53.7,
                                                ),
                                                const SizedBox(height: 4),
                                                Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'YugaiPay-',
                                                      style: GoogleFonts.poppins(
                                                        fontSize: 10,
                                                        fontWeight: FontWeight.w700,
                                                        color: const Color(0xFF1A1D3A),
                                                        height: 1.5,
                                                      ),
                                                    ),
                                                    ShaderMask(
                                                      shaderCallback: (bounds) => const LinearGradient(
                                                        begin: Alignment.topCenter,
                                                        end: Alignment.bottomCenter,
                                                        colors: [Color(0xFFFF4081), Color(0xFFE82A6D)],
                                                      ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
                                                      child: Text(
                                                        'Sakhi',
                                                        style: GoogleFonts.poppins(
                                                          fontSize: 10,
                                                          fontWeight: FontWeight.w700,
                                                          fontStyle: FontStyle.italic,
                                                          color: Colors.white,
                                                          height: 1.5,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              // Service Card 3: Agri
                              Expanded(
                                child: Container(
                                  height: 120,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                  child: CustomPaint(
                                    painter: GradientBorderPainter(
                                      radius: 24,
                                      strokeWidth: 1,
                                      gradient: const LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [Color(0xFFA8E063), Color(0xFF56AB2F)],
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 18, bottom: 0, left: 5, right: 5),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 102,
                                            child: Column(
                                              children: [
                                                SvgPicture.string(
                                                  '''<svg width="54" height="54" viewBox="0 0 54 54" fill="none" xmlns="http://www.w3.org/2000/svg">
<path fill-rule="evenodd" clip-rule="evenodd" d="M38.2168 46.1791C35.8157 52.6489 28.8137 55.497 22.5782 52.5405C21.5391 52.0475 21.021 50.7739 21.4209 49.6957L22.8887 45.7377C23.7111 46.0563 24.6643 45.8845 25.3809 45.1889L46.0206 25.1508L38.2168 46.179ZM37.0704 7.52971C39.4715 1.05985 46.4724 -1.78822 52.7081 1.16839C53.7473 1.66119 54.2652 2.93484 53.8653 4.01311L47.168 22.059C46.2788 21.5335 45.1506 21.6454 44.3311 22.4408L24.3291 41.8588L37.0704 7.52971ZM1.0518 2.73382C6.90777 -1.08841 14.2333 0.863135 17.4141 7.09026L24.5069 20.976C27.6874 27.2033 25.5191 35.3498 19.6631 39.1713C18.6871 39.8083 17.4657 39.4827 16.9356 38.4448L0.244186 5.76702C-0.285958 4.72912 0.07579 3.37075 1.0518 2.73382Z" fill="url(#paint0_linear_7_5918)"/>
<defs>
<linearGradient id="paint0_linear_7_5918" x1="3.10598" y1="4.96556" x2="37.9286" y2="85.0306" gradientUnits="userSpaceOnUse">
<stop stop-color="#9ACFA1"/>
<stop offset="0.25" stop-color="#A8E063"/>
<stop offset="0.5" stop-color="#56AB2F"/>
</linearGradient>
</defs>
</svg>''',
                                                  width: 54,
                                                  height: 53.7,
                                                ),
                                                const SizedBox(height: 4),
                                                Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'YugaiPay-',
                                                      style: GoogleFonts.poppins(
                                                        fontSize: 10,
                                                        fontWeight: FontWeight.w700,
                                                        color: const Color(0xFF1A1D3A),
                                                        height: 1.5,
                                                      ),
                                                    ),
                                                    ShaderMask(
                                                      shaderCallback: (bounds) => const LinearGradient(
                                                        begin: Alignment.topCenter,
                                                        end: Alignment.bottomCenter,
                                                        colors: [Color(0xFFA8E063), Color(0xFF56AB2F)],
                                                      ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
                                                      child: Text(
                                                        'Agri',
                                                        style: GoogleFonts.poppins(
                                                          fontSize: 10,
                                                          fontWeight: FontWeight.w700,
                                                          fontStyle: FontStyle.italic,
                                                          color: Colors.white,
                                                          height: 1.5,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                
                // 7. Footer Container
                Positioned(
                  top: 767,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 18,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Secure',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF4A5568),
                            height: 1.0,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Container(
                          width: 4,
                          height: 4,
                          decoration: const BoxDecoration(
                            color: Color(0xFF1A1D3A),
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          'Encrypted',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF4A5568),
                            height: 1.0,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Container(
                          width: 4,
                          height: 4,
                          decoration: const BoxDecoration(
                            color: Color(0xFF1A1D3A),
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          'Trusted',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF4A5568),
                            height: 1.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
        ],
      ),
    );
  }
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
