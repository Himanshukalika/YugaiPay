import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InvestmentScreen extends StatelessWidget {
  const InvestmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    final double vw = screenWidth / 100;
    final double vh = screenHeight / 100;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Top Header
            Container(
              width: screenWidth, // ~402px (Full width)
              height: 7.27 * vh, // ~62px
              padding: EdgeInsets.only(
                top: 2.46 * vh, // ~21px
                bottom: 2.23 * vh, // ~19px
                left: 6.1 * vw, // ~24px
                right: 6.1 * vw, // ~24px
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // Gap 154px handled by spacing
                children: [
                  // TODO: Add content here if needed
                ],
              ),
            ),
            SizedBox(height: 0.47 * vh), // ~4px gap (Top 66px - 62px Header)

            // Second Row (width 345, height 24)
            Container(
              width: screenWidth,
              height: 2.82 * vh, // ~24px
              padding: EdgeInsets.symmetric(horizontal: 6.1 * vw), // left/right 24px
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Back Button (Navigate to Home)
                  GestureDetector(
                    onTap: () {
                      context.pop(); // Acts as Push Left animation to Home
                    },
                    child: Container(
                      width: 6.1 * vw, // ~24px
                      height: 6.1 * vw, // ~24px
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.arrow_back,
                        size: 6.1 * vw, // ~24px
                        color: const Color(0xFF1A1D3A),
                      ),
                    ),
                  ),
                  // Help/Info Icon (Right element)
                  SvgPicture.string(
                    '''<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M10.8375 15.6375C11.0792 15.3958 11.2 15.1 11.2 14.75C11.2 14.4 11.0792 14.1042 10.8375 13.8625C10.5958 13.6208 10.3 13.5 9.95 13.5C9.6 13.5 9.30417 13.6208 9.0625 13.8625C8.82083 14.1042 8.7 14.4 8.7 14.75C8.7 15.1 8.82083 15.3958 9.0625 15.6375C9.30417 15.8792 9.6 16 9.95 16C10.3 16 10.5958 15.8792 10.8375 15.6375ZM9.05 12.15H10.9C10.9 11.6 10.9625 11.1667 11.0875 10.85C11.2125 10.5333 11.5667 10.1 12.15 9.55C12.5833 9.11667 12.925 8.70417 13.175 8.3125C13.425 7.92083 13.55 7.45 13.55 6.9C13.55 5.96667 13.2083 5.25 12.525 4.75C11.8417 4.25 11.0333 4 10.1 4C9.15 4 8.37917 4.25 7.7875 4.75C7.19583 5.25 6.78333 5.85 6.55 6.55L8.2 7.2C8.28333 6.9 8.47083 6.575 8.7625 6.225C9.05417 5.875 9.5 5.7 10.1 5.7C10.6333 5.7 11.0333 5.84583 11.3 6.1375C11.5667 6.42917 11.7 6.75 11.7 7.1C11.7 7.43333 11.6 7.74583 11.4 8.0375C11.2 8.32917 10.95 8.6 10.65 8.85C9.91667 9.5 9.46667 9.99167 9.3 10.325C9.13333 10.6583 9.05 11.2667 9.05 12.15ZM10 20C8.61667 20 7.31667 19.7375 6.1 19.2125C4.88333 18.6875 3.825 17.975 2.925 17.075C2.025 16.175 1.3125 15.1167 0.7875 13.9C0.2625 12.6833 0 11.3833 0 10C0 8.61667 0.2625 7.31667 0.7875 6.1C1.3125 4.88333 2.025 3.825 2.925 2.925C3.825 2.025 4.88333 1.3125 6.1 0.7875C7.31667 0.2625 8.61667 0 10 0C11.3833 0 12.6833 0.2625 13.9 0.7875C15.1167 1.3125 16.175 2.025 17.075 2.925C17.975 3.825 18.6875 4.88333 19.2125 6.1C19.7375 7.31667 20 8.61667 20 10C20 11.3833 19.7375 12.6833 19.2125 13.9C18.6875 15.1167 17.975 16.175 17.075 17.075C16.175 17.975 15.1167 18.6875 13.9 19.2125C12.6833 19.7375 11.3833 20 10 20ZM10 18C12.2333 18 14.125 17.225 15.675 15.675C17.225 14.125 18 12.2333 18 10C18 7.76667 17.225 5.875 15.675 4.325C14.125 2.775 12.2333 2 10 2C7.76667 2 5.875 2.775 4.325 4.325C2.775 5.875 2 7.76667 2 10C2 12.2333 2.775 14.125 4.325 15.675C5.875 17.225 7.76667 18 10 18Z" fill="#1A1D3A"/>
</svg>''',
                    width: 5.09 * vw, // ~20px
                    height: 5.09 * vw, // ~20px
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
