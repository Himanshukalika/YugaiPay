import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/router/app_router.dart';

class RegisterDeviceScreen extends StatefulWidget {
  const RegisterDeviceScreen({super.key});

  @override
  State<RegisterDeviceScreen> createState() => _RegisterDeviceScreenState();
}

class _RegisterDeviceScreenState extends State<RegisterDeviceScreen> {
  static const _primary = Color(0xFF461599);
  static const _textDark = Color(0xFF1A1D3A);
  static const _textGray = Color(0xFF6B7280);
  static const _inputBorder = Color(0xFFE5E7EB);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0EFF6),
      body: SafeArea(
        child: Column(
          children: [
            // ── Header ──
            Padding(
              padding: EdgeInsets.fromLTRB(17.w, 16.h, 17.w, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => context.pop(),
                    child: Row(
                      children: [
                        Icon(Icons.arrow_back, color: _primary, size: 20.sp),
                        SizedBox(width: 8.w),
                        Text(
                          'Register Device',
                          style: GoogleFonts.manrope(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF312E81),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 32.w,
                    height: 32.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: _inputBorder),
                    ),
                    child: Icon(Icons.help_outline, color: _textGray, size: 18.sp),
                  ),
                ],
              ),
            ),

            // ── Scrollable content ──
            Expanded(
              child: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.fromLTRB(24.w, 16.h, 24.w, 16.h),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.r),
                      child: Image.asset(
                        'assets/images/register_device_banner.jpg',
                        width: double.infinity,
                        height: 192.h,
                        fit: BoxFit.cover,
                      ),
                    ),

                    SizedBox(height: 16.h),

                    SizedBox(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Register this device?',
                            style: GoogleFonts.manrope(
                              fontSize: 22.sp,
                              fontWeight: FontWeight.w700,
                              color: _textDark,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            'Link this device to your YugaiPay account for\nenhanced security and faster transactions.',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                              color: _textGray,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 12.h),

                    _deviceCard(name: 'Yugai Laptop',         lastActive: 'LAST ACTIVE TODAY AT 11:08 AM'),
                    SizedBox(height: 8.h),
                    _deviceCard(name: 'Vyapar Laptop Mahesh', lastActive: 'LAST ACTIVE 4 MAY, 11:35 AM'),

                    SizedBox(height: 10.h),

                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                      decoration: BoxDecoration(
                        color: const Color(0x0D461599),
                        borderRadius: BorderRadius.circular(12.r),
                        border: Border.all(color: const Color(0x1A461599), width: 1),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.lock, size: 16.sp, color: const Color(0xFF461599)),
                          SizedBox(width: 8.w),
                          Expanded(
                            child: Text(
                              'This device will be registered securely to your account',
                              style: GoogleFonts.inter(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: _textDark,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 8.h),

                    SizedBox(
                      width: double.infinity,
                      height: 65.h,
                      child: ElevatedButton(
                        onPressed: () => context.go(AppRoutes.login),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: _primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          padding: EdgeInsets.only(top: 20.h, bottom: 18.h),
                          elevation: 4,
                          shadowColor: const Color(0x0A000000),
                        ),
                        child: Text(
                          'Confirm & Register Device',
                          style: GoogleFonts.manrope(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                            letterSpacing: 0.4,
                          ),
                        ),
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

  Widget _deviceCard({required String name, required String lastActive}) {
    return Container(
      width: double.infinity,
      height: 119.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: const Color(0x0D000000), width: 1),
        boxShadow: const [
          BoxShadow(color: Color(0x0A000000), blurRadius: 20, offset: Offset(0, 4)),
        ],
      ),
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(16.w, 14.h, 16.w, 8.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 48.w,
                    height: 48.w,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF2EBF7),
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(color: const Color(0xFFCBC3D5), width: 1),
                    ),
                    child: Icon(Icons.laptop, color: const Color(0xFF461599), size: 24.sp),
                  ),
                  SizedBox(width: 12.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(name,
                          style: GoogleFonts.manrope(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              color: _textDark)),
                      SizedBox(height: 3.h),
                      Text(lastActive,
                          style: GoogleFonts.inter(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                              color: _textGray,
                              letterSpacing: 0.3)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 45.h,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
            decoration: BoxDecoration(
              color: const Color(0x4DF8F1FC),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12.r),
                bottomRight: Radius.circular(12.r),
              ),
              border: const Border(top: BorderSide(color: Color(0x4DCBC3D5), width: 1)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.location_on_outlined, size: 14.sp, color: _textGray),
                    SizedBox(width: 4.w),
                    Text('New Delhi, India',
                        style: GoogleFonts.inter(fontSize: 12.sp, color: _textGray)),
                  ],
                ),
                Text('Logout',
                    style: GoogleFonts.inter(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                        color: _primary)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
