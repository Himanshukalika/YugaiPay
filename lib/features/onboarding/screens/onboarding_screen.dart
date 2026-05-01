import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;
import 'onboarding_screen_2.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC), // rgba(248, 250, 252, 1)
      body: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: SizedBox(
            width: 393,
            height: 852,
            child: Stack(
              children: [
                // Background container
                Container(
                  width: 393,
                  height: 852,
                  color: const Color(0xFFF8FAFC),
                ),
                
                // Logo with Cut Effect (Fixed positioning)
                Positioned.fill(
                  child: CustomPaint(
                    painter: OnboardingLogoPainter(),
                  ),
                ),
                
                // Content Container
                Positioned(
                  top: 175,
                  left: 24,
                  width: 393 - 48,
                  child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Builder(
                  builder: (context) {
                    final Shader textShader = const LinearGradient(
                      colors: <Color>[Color(0xFFFFA143), Color(0xFFF43B5E)],
                    ).createShader(const Rect.fromLTWH(0.0, 0.0, 300.0, 70.0));
                    
                    return RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF0F172A),
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          height: 1.0,
                        ),
                        children: [
                          const TextSpan(text: 'YugaiPay-'),
                          TextSpan(
                            text: 'Banking Services',
                            style: GoogleFonts.poppins(
                              fontStyle: FontStyle.italic,
                              foreground: Paint()..shader = textShader,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                const SizedBox(height: 16),
                Opacity(
                  opacity: 0.7,
                  child: Text(
                    'Access AEPS, DMT, Utility Bill Payments, Mobile & DTH Recharge, Travel Booking, Loans, Insurance, Investments, and Accounting Solutions- all in one unified platform.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: const Color(0xFF4A5568), // rgba(74, 85, 104, 1)
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      height: 1.2, // Increased slightly for better readability than 1.0
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Main Illustration Container
          Positioned(
            top: 333,
            left: 24,
            width: 345,
            height: 345,
            child: Stack(
              children: [
                // One Hundred and Seventy-third Design Element (Light Gray Ellipse) - MOVED TO BACK
                Positioned(
                  top: 286.94,
                  left: 35.21 - 24, // Relative to parent
                  width: 274.58,
                  height: 37.56,
                  child: SvgPicture.string(
                    '''<svg width="275" height="38" viewBox="0 0 275 38" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M137.289 37.5636C213.112 37.5636 274.579 29.1547 274.579 18.7818C274.579 8.4089 213.112 0 137.289 0C61.4665 0 0 8.4089 0 18.7818C0 29.1547 61.4665 37.5636 137.289 37.5636Z" fill="#EBEBEB"/>
</svg>''',
                  ),
                ),
                

                // One Hundred and Seventy-fourth Design Element (Light Gray SVG Shape) - MOVED TO BACK
                Positioned(
                  top: 185.19,
                  left: 32.99 - 24, // Relative to parent
                  width: 53.32,
                  height: 52.74,
                  child: SvgPicture.string(
                    '''<svg width="54" height="53" viewBox="0 0 54 53" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M22.0099 0.526866C-12.8834 6.78517 -3.6719 58.4869 31.2835 52.2079C66.2389 45.9289 56.9653 -5.74523 22.0099 0.526866Z" fill="#DBDBDB"/>
</svg>''',
                  ),
                ),

                // One Hundred and Seventy-fifth Design Element (Light Gray SVG Shape) - MOVED TO BACK
                Positioned(
                  top: 184.65,
                  left: 37.47 - 24, // Relative to parent
                  width: 50.90,
                  height: 52.65,
                  child: SvgPicture.string(
                    '''<svg width="51" height="53" viewBox="0 0 51 53" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M20.803 0.479889C-12.455 6.48289 -3.23662 58.1432 30.0766 52.1678C63.3898 46.1924 54.1162 -5.49551 20.803 0.479889Z" fill="#EBEBEB"/>
</svg>''',
                  ),
                ),
                // One Hundred and Seventy-sixth Design Element (Light Gray SVG Shape) - MOVED TO BACK
                Positioned(
                  top: 189.44,
                  left: 41.8 - 24, // Relative to parent
                  width: 42.21,
                  height: 43.38,
                  child: SvgPicture.string(
                    '''<svg width="43" height="44" viewBox="0 0 43 44" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M42.207 22.7493C42.0276 31.9608 36.687 40.8825 24.957 42.9801C-2.68445 47.9412 -10.3366 5.03012 17.2635 0.0828177C17.4429 0.0828177 17.6222 0.0207 17.8016 0C-8.08025 5.1819 -0.662749 45.7815 25.6953 41.055C36.4455 39.123 41.6343 31.1742 42.207 22.7493Z" fill="#DBDBDB"/>
</svg>''',
                  ),
                ),

                // One Hundred and Seventy-eighth Design Element (Light Gray SVG Shape) - MOVED TO BACK
                Positioned(
                  top: 92.74,
                  left: 58.59 - 24, // Relative to parent
                  width: 43.52,
                  height: 41.21,
                  child: SvgPicture.string(
                    '''<svg width="44" height="42" viewBox="0 0 44 42" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M21.7531 0C-7.22688 0 -7.27518 41.2068 21.7531 41.2068C50.7814 41.2068 50.7745 0 21.7531 0Z" fill="#EBEBEB"/>
</svg>''',
                  ),
                ),
                // One Hundred and Seventy-ninth Design Element (Light Gray SVG Shape) - MOVED TO BACK
                Positioned(
                  top: 96.21,
                  left: 62.29 - 24, // Relative to parent
                  width: 35.69,
                  height: 34.20,
                  child: SvgPicture.string(
                    '''<svg width="36" height="35" viewBox="0 0 36 35" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M35.6911 20.9898C34.1317 28.0761 28.2529 34.1964 18.0478 34.1964C-6.03319 34.1964 -5.99868 0 18.0478 0H18.5239C-4.10808 0.414 -3.99768 32.8026 18.9655 32.8026C28.3357 32.8164 33.9178 27.4137 35.6911 20.9898Z" fill="#DBDBDB"/>
</svg>''',
                  ),
                ),
                // One Hundred and Eighty-first Design Element (Light Gray SVG Shape) - MOVED TO BACK
                Positioned(
                  top: 49.73,
                  left: 253.81 - 24, // Relative to parent
                  width: 58.21,
                  height: 55.11,
                  child: SvgPicture.string(
                    '''<svg width="59" height="56" viewBox="0 0 59 56" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M29.0913 0C-9.66603 0 -9.72813 55.1103 29.0913 55.1103C67.9107 55.1103 67.9314 0 29.0913 0Z" fill="#EBEBEB"/>
</svg>''',
                  ),
                ),
                // One Hundred and Eighty-second Design Element (Light Gray SVG Shape) - MOVED TO BACK
                Positioned(
                  top: 54.41,
                  left: 258.77 - 24, // Relative to parent
                  width: 47.71,
                  height: 45.74,
                  child: SvgPicture.string(
                    '''<svg width="48" height="46" viewBox="0 0 48 46" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M47.7092 28.0347C45.6392 37.5153 37.787 45.7401 24.1388 45.7401C-8.07041 45.7401 -8.02211 0 24.1388 0C24.3527 0 24.5597 0 24.7736 0C-5.4967 0.552 -5.34491 43.8702 25.367 43.8702C37.925 43.884 45.3632 36.6666 47.7092 28.0347Z" fill="#DBDBDB"/>
</svg>''',
                  ),
                ),
                // One Hundred and Eighty-fourth Design Element (Light Gray SVG Shape) - MOVED TO BACK
                Positioned(
                  top: 176.86,
                  left: 266.2 - 24, // Relative to parent
                  width: 38.02,
                  height: 39.36,
                  child: SvgPicture.string(
                    '''<svg width="39" height="40" viewBox="0 0 39 40" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M15.5321 0.358448C-9.30789 4.82275 -2.4079 43.4765 22.4666 38.9984C47.3411 34.5203 40.4411 -4.10585 15.5321 0.358448Z" fill="#EBEBEB"/>
</svg>''',
                  ),
                ),
                // One Hundred and Eighty-fifth Design Element (Light Gray SVG Shape) - MOVED TO BACK
                Positioned(
                  top: 180.44,
                  left: 269.42 - 24, // Relative to parent
                  width: 31.55,
                  height: 32.44,
                  child: SvgPicture.string(
                    '''<svg width="32" height="33" viewBox="0 0 32 33" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M31.5548 17.0085C31.4237 23.9085 27.4148 30.567 18.6587 32.1402C-2.00682 35.8455 -7.72692 3.76738 12.9041 0.0689832L13.3112 0C-6.00882 3.8778 -0.488829 34.2309 19.2107 30.6981C27.2837 29.256 31.127 23.3082 31.5548 17.0085Z" fill="#DBDBDB"/>
</svg>''',
                  ),
                ),
                

                // One Hundred and Sixty-second Design Element (Reddish Brown SVG Shape) - MOVED TO BACK
                Positioned(
                  top: 271.18,
                  left: 112.33 - 24, // Relative to parent
                  width: 47.46,
                  height: 42.57,
                  child: SvgPicture.string(
                    '''<svg width="48" height="43" viewBox="0 0 48 43" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M46.8001 42.2901C45.3166 42.7869 2.95746 42.6627 1.34286 41.6346C0.73566 41.2551 0.390661 35.0796 0.190561 27.6138C0.142261 25.9992 0.107755 24.3363 0.0870546 22.6389C0.0870546 20.6379 0.0249542 18.6093 0.0111542 16.6359C-0.0371458 7.79011 0.0870546 0 0.0870546 0H27.6871V16.6359V22.6389L27.5422 27.6138C27.5422 27.6138 43.7365 34.914 45.3856 36.2319C47.0347 37.5498 48.2767 41.8071 46.8001 42.2901Z" fill="#AD6359"/>
</svg>''',
                  ),
                ),
                
                // One Hundred and Fifty-third Design Element (Reddish Brown SVG Shape) - MOVED TO BACK
                Positioned(
                  top: 249.2,
                  left: 43.14 - 24, // Relative to parent
                  width: 43.63,
                  height: 59.86,
                  child: SvgPicture.string(
                    '''<svg width="44" height="60" viewBox="0 0 44 60" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M39.6039 59.8506C38.0652 59.5677 0.963941 39.1506 0.032441 37.4739C-0.326359 36.846 2.33704 31.2639 5.74564 24.6192L18.2691 0L43.6335 13.8621L35.5191 27.7242L32.1933 33.4167L29.6886 37.7085C29.6886 37.7085 40.3974 51.888 41.2185 53.8269C42.0396 55.7658 41.1357 60.1266 39.6039 59.8506Z" fill="#AD6359"/>
</svg>''',
                  ),
                ),
                
                // One Hundred and Forty-third Design Element (Gray SVG Shape) - MOVED TO BACK
                Positioned(
                  top: 153.66,
                  left: 103.21 - 24, // Relative to parent
                  width: 39.62,
                  height: 130.77,
                  child: SvgPicture.string(
                    '''<svg width="40" height="131" viewBox="0 0 40 131" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0 0C0 0 7.4589 73.7196 7.6314 74.6511C7.6314 74.7753 7.7073 76.1898 7.7832 78.5082C8.1834 91.1973 9.1632 130.769 9.1632 130.769H39.6198C39.6198 130.769 37.6326 83.8971 36.4941 72.9675C35.0451 59.0157 25.8888 0 25.8888 0H0Z" fill="#455A64"/>
</svg>''',
                  ),
                ),
                
                // One Hundred and Forty-seventh Design Element (Dark SVG Shape) - MOVED TO BACK
                Positioned(
                  top: 153.66,
                  left: 103.21 - 24, // Relative to parent
                  width: 22.11,
                  height: 78.51,
                  child: SvgPicture.string(
                    '''<svg width="23" height="79" viewBox="0 0 23 79" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0 0C0 0 7.4589 73.7196 7.6314 74.6511C7.6314 74.7753 7.7073 76.1898 7.7832 78.5082L22.1145 0H0Z" fill="#263238"/>
</svg>''',
                  ),
                ),
                
                // One Hundred and Forty-fourth Design Element (Dark Vertical SVG Shape) - MOVED TO BACK
                Positioned(
                  top: 156.24,
                  left: 106.49 - 24, // Relative to parent
                  width: 9.83,
                  height: 123.37,
                  child: SvgPicture.string(
                    '''<svg width="10" height="124" viewBox="0 0 10 124" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M7.98431 74.6735C7.06431 58.6977 5.65442 42.761 3.75462 26.8634C2.68512 17.8934 1.40172 8.98553 0.118316 0.056925C0.118316 -0.018975 -0.0127822 -0.018975 0.00101776 0.056925C2.35392 15.9269 4.02372 31.9625 5.45892 47.9636C6.89412 63.9647 7.89462 79.952 8.54322 95.9807C8.91582 105.061 9.19872 114.148 9.48852 123.236C9.49644 123.275 9.5176 123.31 9.5484 123.335C9.57921 123.36 9.61777 123.374 9.65756 123.374C9.69736 123.374 9.73593 123.36 9.76674 123.335C9.79754 123.31 9.8187 123.275 9.82662 123.236C9.43332 107.035 8.92961 90.8402 7.98431 74.6735Z" fill="#263238"/>
</svg>''',
                  ),
                ),
                
                // One Hundred and Forty-sixth Design Element (Gray SVG Shape) - MOVED TO BACK
                Positioned(
                  top: 153.64,
                  left: 55.45 - 24, // Relative to parent
                  width: 73.62,
                  height: 120.50,
                  child: SvgPicture.string(
                    '''<svg width="74" height="121" viewBox="0 0 74 121" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M73.6161 0.0206992C73.6161 0.0206992 71.7462 11.1711 64.5702 16.9188C64.5702 16.9188 53.9856 61.2099 51.6672 69.4416C48.1758 81.8616 26.772 120.502 26.772 120.502L0 106.736C0 106.736 21.9489 65.0601 24.3087 61.8033C25.875 59.6367 32.3886 23.4117 32.1816 22.2732C29.739 8.7492 35.8455 0 35.8455 0L73.6161 0.0206992Z" fill="#455A64"/>
</svg>''',
                  ),
                ),

                
                
                // One Hundred and Forty-fifth Design Element (Dark Horizontal SVG Line) - MOVED TO BACK
                Positioned(
                  top: 279.18,
                  left: 113.6 - 24, // Relative to parent
                  width: 27.33,
                  height: 0.79,
                  child: SvgPicture.string(
                    '''<svg width="28" height="1" viewBox="0 0 28 1" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M27.2757 0.345167C26.4753 0.241667 25.6128 0.276178 24.8055 0.248578C23.8878 0.214078 22.977 0.207167 22.0455 0.172667C20.2791 0.103667 18.5196 0.0622799 16.7601 0.0346799C13.2089 -0.0297201 9.6577 -0.00443021 6.1065 0.11057C5.1267 0.11057 4.1469 0.172687 3.174 0.214087C2.2011 0.255487 1.104 0.345182 0.0483051 0.338282C0.0354951 0.338282 0.0232084 0.343374 0.0141504 0.352432C0.00509238 0.36149 0 0.373777 0 0.386587C0 0.399397 0.00509238 0.411662 0.0141504 0.42072C0.0232084 0.429778 0.0354951 0.434871 0.0483051 0.434871C1.8423 0.434871 3.6501 0.586676 5.4372 0.655676C7.2243 0.724676 8.9562 0.745385 10.7226 0.772985C14.2692 0.821285 17.8296 0.772982 21.3762 0.662582C22.3491 0.621182 23.3289 0.607386 24.3018 0.579786C24.8262 0.579786 25.3437 0.531467 25.8681 0.517667C26.3925 0.503867 26.7927 0.517683 27.2481 0.469383C27.2563 0.471196 27.2647 0.471377 27.2729 0.469931C27.2811 0.468484 27.289 0.465424 27.2961 0.460939C27.3031 0.456454 27.3092 0.45064 27.314 0.443799C27.3188 0.436958 27.3222 0.429233 27.324 0.421078C27.3258 0.412923 27.326 0.40448 27.3246 0.396252C27.3231 0.388024 27.3201 0.380179 27.3156 0.373131C27.3111 0.366083 27.3053 0.359986 27.2984 0.35519C27.2916 0.350395 27.2839 0.346979 27.2757 0.345167Z" fill="#263238"/>
</svg>''',
                  ),
                ),
                
                
                
                // One Hundred and Thirty-fifth Design Element (Reddish Brown SVG) - MOVED TO BACK
                Positioned(
                  top: 112.48,
                  left: 117.95 - 24, // Relative to parent
                  width: 60.39,
                  height: 28.84,
                  child: SvgPicture.string(
                    '''<svg width="61" height="29" viewBox="0 0 61 29" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0.665765 4.86165C2.68746 9.31905 17.1085 23.7814 29.1559 28.4389C33.5719 30.1501 52.9126 26.0033 57.5149 24.1886C62.8969 22.0634 59.6746 8.68425 56.266 8.61525C52.0156 8.52555 33.6823 12.4586 29.7838 12.2723C25.0435 12.0446 14.2243 4.52355 4.94376 0.666447C0.189663 -1.31385 -0.893635 1.42545 0.665765 4.86165Z" fill="#AD6359"/>
</svg>''',
                  ),
                ),
                
                // One Hundred and Thirty-fourth Design Element (Orange SVG Shape) - MOVED TO BACK
                Positioned(
                  top: 112.22,
                  left: 117.13 - 24, // Relative to parent
                  width: 22.98,
                  height: 21.54,
                  child: SvgPicture.string(
                    '''<svg width="23" height="22" viewBox="0 0 23 22" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M14.6564 21.5394L22.9778 8.80887C22.9778 8.80887 12.9107 3.10947 7.2527 0.894568C1.5947 -1.32033 -3.0007 0.411562 2.4227 7.96016C6.9836 14.3703 14.6564 21.5394 14.6564 21.5394Z" fill="#FFA143"/>
</svg>''',
                  ),
                ),
                
                // Twenty-seventh Design Element (Dark Container) - MOVED TO BACK
                Positioned(
                  top: 71.06,
                  left: 148.03 - 24, // Relative to parent
                  width: 114.76,
                  height: 225.28,
                  child: Container(
                    color: const Color(0xFF37474F),
                  ),
                ),



                
                // One Hundred and Twenty-ninth Design Element (Missing Tiny Dark SVG)
                Positioned(
                  top: 86.94,
                  left: 129.99 - 24, // Relative to parent
                  width: 4.33,
                  height: 4.33,
                  child: SvgPicture.string(
                    '''<svg width="5" height="5" viewBox="0 0 5 5" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M4.3332 2.1666C4.3332 2.59511 4.20613 3.014 3.96806 3.3703C3.72999 3.72659 3.39162 4.00429 2.99573 4.16828C2.59983 4.33226 2.1642 4.37517 1.74392 4.29157C1.32364 4.20797 0.937584 4.00163 0.63458 3.69862C0.331575 3.39562 0.125231 3.00956 0.0416322 2.58928C-0.0419665 2.169 0.000936898 1.73337 0.164922 1.33748C0.328907 0.941586 0.606607 0.603205 0.962903 0.365136C1.3192 0.127067 1.73809 0 2.1666 0C2.74122 0 3.29231 0.228267 3.69862 0.634583C4.10494 1.0409 4.3332 1.59198 4.3332 2.1666Z" fill="#263238"/>
</svg>''',
                  ),
                ),
                
                
                
                
                
                // Ninety-seventh Design Element (Small Dark SVG) - MOVED FOR Z-INDEX
                Positioned(
                  top: 97.54,
                  left: 129.41 - 24, // Relative to parent
                  width: 1.57,
                  height: 2.26,
                  child: SvgPicture.string(
                    '''<svg width="2" height="3" viewBox="0 0 2 3" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0.649494 0.00301478C1.77419 -0.0935852 1.89149 2.16272 0.84959 2.25242C-0.19231 2.34212 -0.295806 0.0858148 0.649494 0.00301478Z" fill="#263238"/>
</svg>''',
                  ),
                ),
                
                
                
                // One Hundred and First Design Element (Dark SVG Shape) - MOVED FOR Z-INDEX
                Positioned(
                  top: 84.88,
                  left: 113.5 - 24, // Relative to parent
                  width: 18.33,
                  height: 15.79,
                  child: SvgPicture.string(
                    '''<svg width="19" height="16" viewBox="0 0 19 16" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M2.2853 15.6722C4.0586 16.4105 3.2789 13.3883 3.2789 13.3883C3.2789 13.3883 4.8176 12.4706 4.0241 10.3178C4.0241 10.3178 6.14929 10.9457 6.37699 7.9304C6.63809 7.90396 6.89094 7.82404 7.11979 7.69561C7.34865 7.56717 7.5486 7.39298 7.70719 7.1839C7.86579 6.97481 7.97962 6.73531 8.04161 6.4803C8.1036 6.2253 8.11241 5.96026 8.06749 5.70171C8.06749 5.70171 10.5722 7.08171 11.5934 4.75641C11.5934 4.75641 13.4081 6.77121 14.8502 4.75641C15.0499 5.13764 15.3759 5.43762 15.7724 5.60502C16.1689 5.77243 16.6112 5.79685 17.0237 5.67411C17.0896 6.06992 17.2411 6.4466 17.4675 6.77788C17.6939 7.10917 17.9899 7.3871 18.3347 7.59231C18.3347 7.59231 15.3125 -2.89569 5.8319 0.782008C-2.9242 4.20441 0.222198 14.8235 2.2853 15.6722Z" fill="#263238"/>
</svg>''',
                  ),
                ),
                
                // One Hundred and Second Design Element (Dark Circular SVG) - MOVED FOR Z-INDEX
                Positioned(
                  top: 108.45,
                  left: 112.61 - 24, // Relative to parent
                  width: 4.77,
                  height: 4.77,
                  child: SvgPicture.string(
                    '''<svg width="5" height="5" viewBox="0 0 5 5" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M4.7748 2.3874C4.7748 2.85959 4.63478 3.32117 4.37245 3.71377C4.11012 4.10638 3.73726 4.41238 3.30102 4.59308C2.86478 4.77376 2.38475 4.82105 1.92164 4.72894C1.45853 4.63682 1.03314 4.40944 0.699255 4.07555C0.365371 3.74167 0.137992 3.31627 0.0458733 2.85317C-0.046245 2.39006 0.00103725 1.91003 0.181734 1.47379C0.362431 1.03755 0.668432 0.664691 1.06104 0.40236C1.45364 0.140029 1.91522 0 2.3874 0C3.02058 0 3.62782 0.25153 4.07554 0.699255C4.52327 1.14698 4.7748 1.75423 4.7748 2.3874Z" fill="#263238"/>
</svg>''',
                  ),
                ),
                
                // One Hundred and Third Design Element (Dark Circular SVG) - MOVED FOR Z-INDEX
                Positioned(
                  top: 108.43,
                  left: 109.22 - 24, // Relative to parent
                  width: 4.77,
                  height: 4.77,
                  child: SvgPicture.string(
                    '''<svg width="5" height="5" viewBox="0 0 5 5" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M4.77479 2.3805C4.77616 2.85297 4.6373 3.31523 4.3758 3.70874C4.1143 4.10225 3.74191 4.40933 3.3058 4.59109C2.86968 4.77284 2.38943 4.82111 1.92587 4.72977C1.4623 4.63843 1.03627 4.41159 0.701691 4.07799C0.367117 3.74438 0.139062 3.319 0.0463831 2.8557C-0.0462959 2.39241 0.000572408 1.91202 0.181065 1.47538C0.361557 1.03874 0.667551 0.665471 1.0603 0.402833C1.45306 0.140196 1.91491 1.97335e-06 2.38739 0C3.01937 -2.6395e-06 3.62557 0.250579 4.0731 0.696812C4.52062 1.14304 4.77297 1.74852 4.77479 2.3805Z" fill="#263238"/>
</svg>''',
                  ),
                ),
                
                // One Hundred and Fourth Design Element (Dark Circular SVG) - MOVED FOR Z-INDEX
                Positioned(
                  top: 107.32,
                  left: 106.32 - 24, // Relative to parent
                  width: 4.33,
                  height: 4.33,
                  child: SvgPicture.string(
                    '''<svg width="5" height="5" viewBox="0 0 5 5" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M4.3332 2.1666C4.3332 2.59511 4.20614 3.014 3.96807 3.3703C3.73 3.72659 3.39162 4.00429 2.99572 4.16828C2.59983 4.33226 2.1642 4.37517 1.74392 4.29157C1.32364 4.20797 0.937592 4.00163 0.634588 3.69862C0.331583 3.39562 0.125228 3.00956 0.0416295 2.58928C-0.0419665 2.169 0.000944702 1.73337 0.16493 1.33748C0.328914 0.941581 0.606604 0.60321 0.9629 0.365141C1.3192 0.127072 1.73809 0 2.1666 0C2.74122 0 3.2923 0.228272 3.69862 0.634588C4.10494 1.0409 4.3332 1.59198 4.3332 2.1666Z" fill="#263238"/>
</svg>''',
                  ),
                ),

                // One Hundred and Fifth Design Element (Dark Circular SVG) - MOVED FOR Z-INDEX
                Positioned(
                  top: 105.25,
                  left: 102.93 - 24, // Relative to parent
                  width: 4.77,
                  height: 4.77,
                  child: SvgPicture.string(
                    '''<svg width="5" height="5" viewBox="0 0 5 5" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M4.7748 2.38741C4.77479 2.85989 4.6346 3.32117 4.37196 3.7145C4.11012 4.10725 3.73606 4.41238 3.29942 4.59308C2.86278 4.77423 2.38239 4.82111 1.91909 4.72893C1.45579 4.63681 1.03042 4.40943 0.696809 4.07311C0.363202 3.73854 0.136376 3.3125 0.0450386 2.84893C-0.0462991 2.38537 0.00195517 1.90513 0.181734 1.47379C0.365466 1.03755 0.672544 0.660504 1.06606 0.399003C1.45957 0.137503 1.92182 -0.00135539 2.3943 1.01459e-05C2.70775 -0.000906356 3.01828 0.0602781 3.30796 0.180017C3.59764 0.299756 3.86074 0.475679 4.08206 0.697643C4.30338 0.919608 4.47854 1.18322 4.59744 1.47324C4.71634 1.76327 4.77662 2.07397 4.7748 2.38741Z" fill="#263238"/>
</svg>''',
                  ),
                ),

                // One Hundred and Sixth Design Element (Dark Circular SVG) - MOVED FOR Z-INDEX
                Positioned(
                  top: 102.55,
                  left: 100.55 - 24, // Relative to parent
                  width: 4.33,
                  height: 4.33,
                  child: SvgPicture.string(
                    '''<svg width="5" height="5" viewBox="0 0 5 5" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M4.3332 2.1666C4.3332 2.59511 4.20613 3.014 3.96806 3.3703C3.72999 3.72659 3.39162 4.00428 2.99573 4.16827C2.59983 4.33225 2.1642 4.37517 1.74392 4.29157C1.32364 4.20797 0.937584 4.00162 0.63458 3.69861C0.331575 3.39561 0.125231 3.00956 0.0416322 2.58928C-0.0419665 2.169 0.000936898 1.73337 0.164922 1.33748C0.328907 0.941581 0.606607 0.6032 0.962903 0.365131C1.3192 0.127062 1.73809 0 2.1666 0C2.74066 0.00181953 3.29069 0.230666 3.69661 0.636589C4.10254 1.04251 4.33138 1.59254 4.3332 2.1666Z" fill="#263238"/>
</svg>''',
                  ),
                ),

                // One Hundred and Seventh Design Element (Dark Circular SVG) - MOVED FOR Z-INDEX
                Positioned(
                  top: 98.84,
                  left: 98.68 - 24, // Relative to parent
                  width: 4.77,
                  height: 4.77,
                  child: SvgPicture.string(
                    '''<svg width="5" height="5" viewBox="0 0 5 5" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M4.7748 2.38739C4.7748 2.85958 4.63478 3.32116 4.37245 3.71376C4.11012 4.10637 3.73726 4.41237 3.30102 4.59307C2.86478 4.77376 2.38475 4.82104 1.92164 4.72893C1.45853 4.63681 1.03314 4.40943 0.699255 4.07554C0.365371 3.74166 0.137992 3.31627 0.0458733 2.85316C-0.046245 2.39005 0.00103725 1.91002 0.181734 1.47378C0.362431 1.03754 0.668432 0.66468 1.06104 0.402349C1.45364 0.140018 1.91522 0 2.3874 0C2.70092 0 3.01137 0.0617449 3.30102 0.181723C3.59067 0.301701 3.85386 0.477564 4.07555 0.699255C4.29725 0.920945 4.4731 1.18413 4.59308 1.47378C4.71305 1.76343 4.7748 2.07388 4.7748 2.38739Z" fill="#263238"/>
</svg>''',
                  ),
                ),

                // One Hundred and Eighth Design Element (Dark Circular SVG) - MOVED FOR Z-INDEX
                Positioned(
                  top: 95.34,
                  left: 97.48 - 24, // Relative to parent
                  width: 4.77,
                  height: 4.77,
                  child: SvgPicture.string(
                    '''<svg width="5" height="5" viewBox="0 0 5 5" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M4.7748 2.3874C4.7748 2.85959 4.63478 3.32117 4.37245 3.71377C4.11012 4.10637 3.73725 4.41238 3.30101 4.59308C2.86477 4.77377 2.38476 4.82104 1.92165 4.72893C1.45853 4.63681 1.03314 4.40943 0.699258 4.07554C0.365374 3.74166 0.137994 3.31627 0.045876 2.85316C-0.0462423 2.39005 0.00102946 1.91002 0.181726 1.47378C0.362423 1.03754 0.668424 0.66468 1.06103 0.402349C1.45364 0.140018 1.91521 0 2.3874 0C3.02058 0 3.62782 0.25153 4.07555 0.699255C4.52327 1.14698 4.7748 1.75423 4.7748 2.3874Z" fill="#263238"/>
</svg>''',
                  ),
                ),

                // One Hundred and Ninth Design Element (Dark Circular SVG) - MOVED FOR Z-INDEX
                Positioned(
                  top: 92.08,
                  left: 97.7 - 24, // Relative to parent
                  width: 4.33,
                  height: 4.33,
                  child: SvgPicture.string(
                    '''<svg width="5" height="5" viewBox="0 0 5 5" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M4.3332 2.1666C4.3332 2.59511 4.20614 3.014 3.96807 3.3703C3.73 3.72659 3.39162 4.00429 2.99572 4.16828C2.59983 4.33226 2.1642 4.37517 1.74392 4.29157C1.32364 4.20797 0.937592 4.00163 0.634588 3.69862C0.331583 3.39562 0.125231 3.00957 0.0416295 2.58929C-0.0419665 2.16901 0.000944702 1.73337 0.16493 1.33748C0.328914 0.941581 0.606604 0.60321 0.9629 0.365141C1.3192 0.127072 1.73809 0 2.1666 0C2.74066 0.00181953 3.29069 0.230677 3.69661 0.636599C4.10253 1.04252 4.33138 1.59254 4.3332 2.1666Z" fill="#263238"/>
</svg>''',
                  ),
                ),

                // One Hundred and Tenth Design Element (Dark Circular SVG) - MOVED FOR Z-INDEX
                Positioned(
                  top: 88.35,
                  left: 97.48 - 24, // Relative to parent
                  width: 4.77,
                  height: 4.77,
                  child: SvgPicture.string(
                    '''<svg width="5" height="5" viewBox="0 0 5 5" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M4.77479 2.3805C4.77616 2.85297 4.6373 3.31523 4.3758 3.70874C4.1143 4.10225 3.74192 4.40933 3.30581 4.59109C2.86969 4.77284 2.38944 4.82111 1.92588 4.72977C1.46232 4.63843 1.03628 4.41159 0.701702 4.07799C0.367128 3.74438 0.139062 3.319 0.0463831 2.8557C-0.0462959 2.39241 0.000572408 1.91202 0.181065 1.47538C0.361557 1.03874 0.667551 0.665471 1.0603 0.402833C1.45306 0.140196 1.91491 1.97335e-06 2.38739 0C3.01937 -2.6395e-06 3.62558 0.250579 4.07311 0.696812C4.52063 1.14304 4.77297 1.74852 4.77479 2.3805Z" fill="#263238"/>
</svg>''',
                  ),
                ),

                // One Hundred and Eleventh Design Element (Dark Circular SVG) - MOVED FOR Z-INDEX
                Positioned(
                  top: 85.29,
                  left: 98.9 - 24, // Relative to parent
                  width: 4.33,
                  height: 4.33,
                  child: SvgPicture.string(
                    '''<svg width="5" height="5" viewBox="0 0 5 5" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M4.3332 2.1666C4.3332 2.59511 4.20614 3.014 3.96807 3.3703C3.73 3.72659 3.39162 4.00429 2.99572 4.16828C2.59983 4.33226 2.1642 4.37517 1.74392 4.29157C1.32364 4.20797 0.937592 4.00163 0.634588 3.69862C0.331583 3.39562 0.125231 3.00957 0.0416322 2.58928C-0.0419665 2.16901 0.000936898 1.73337 0.164922 1.33748C0.328907 0.941581 0.606607 0.603205 0.962903 0.365136C1.3192 0.127067 1.73809 0 2.1666 0C2.74066 0.00181953 3.29069 0.230671 3.69661 0.636594C4.10254 1.04252 4.33138 1.59254 4.3332 2.1666Z" fill="#263238"/>
</svg>''',
                  ),
                ),

                // One Hundred and Twelfth Design Element (Dark Circular SVG) - MOVED FOR Z-INDEX
                Positioned(
                  top: 81.92,
                  left: 100.55 - 24, // Relative to parent
                  width: 4.77,
                  height: 4.77,
                  child: SvgPicture.string(
                    '''<svg width="5" height="5" viewBox="0 0 5 5" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M4.7748 2.3874C4.7748 2.85958 4.63478 3.32116 4.37245 3.71377C4.11012 4.10637 3.73726 4.41237 3.30102 4.59307C2.86478 4.77376 2.38475 4.82104 1.92164 4.72893C1.45853 4.63681 1.03314 4.40943 0.699255 4.07554C0.365371 3.74166 0.137992 3.31627 0.0458733 2.85316C-0.046245 2.39005 0.00103725 1.91002 0.181734 1.47378C0.362431 1.03754 0.668421 0.66468 1.06103 0.402349C1.45363 0.140018 1.91521 0 2.38739 0C3.02057 0 3.62782 0.251525 4.07554 0.699249C4.52327 1.14697 4.7748 1.75422 4.7748 2.3874Z" fill="#263238"/>
</svg>''',
                  ),
                ),

                // One Hundred and Thirteenth Design Element (Dark Circular SVG) - MOVED FOR Z-INDEX
                Positioned(
                  top: 79.23,
                  left: 103.44 - 24, // Relative to parent
                  width: 4.77,
                  height: 4.77,
                  child: SvgPicture.string(
                    '''<svg width="5" height="5" viewBox="0 0 5 5" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M4.77479 2.3805C4.77616 2.85297 4.6373 3.31523 4.3758 3.70874C4.1143 4.10225 3.74192 4.40933 3.3058 4.59108C2.86968 4.77284 2.38944 4.82111 1.92588 4.72976C1.46231 4.63843 1.03627 4.41159 0.701699 4.07799C0.367125 3.74438 0.139059 3.319 0.0463804 2.8557C-0.0462986 2.3924 0.000580181 1.91203 0.181072 1.47538C0.361564 1.03874 0.667559 0.665471 1.06031 0.402833C1.45307 0.140196 1.91492 1.97335e-06 2.3874 0C3.01938 -2.6395e-06 3.62558 0.250579 4.0731 0.696812C4.52063 1.14305 4.77296 1.74852 4.77479 2.3805Z" fill="#263238"/>
</svg>''',
                  ),
                ),

                // One Hundred and Fourteenth Design Element (Dark Circular SVG) - MOVED FOR Z-INDEX
                Positioned(
                  top: 76.27,
                  left: 106.32 - 24, // Relative to parent
                  width: 4.77,
                  height: 4.77,
                  child: SvgPicture.string(
                    '''<svg width="5" height="5" viewBox="0 0 5 5" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M4.7748 2.3874C4.7748 2.85958 4.63478 3.32116 4.37245 3.71377C4.11012 4.10637 3.73726 4.41237 3.30102 4.59307C2.86478 4.77376 2.38475 4.82104 1.92164 4.72893C1.45853 4.63681 1.03314 4.40943 0.699255 4.07554C0.365371 3.74166 0.137992 3.31627 0.0458733 2.85316C-0.046245 2.39005 0.00103725 1.91002 0.181734 1.47378C0.362431 1.03754 0.668421 0.66468 1.06103 0.402349C1.45363 0.140018 1.91521 0 2.38739 0C3.02057 0 3.62782 0.251525 4.07554 0.699249C4.52327 1.14697 4.7748 1.75422 4.7748 2.3874Z" fill="#263238"/>
</svg>''',
                  ),
                ),

                // One Hundred and Fifteenth Design Element (Dark Circular SVG) - MOVED FOR Z-INDEX
                Positioned(
                  top: 75.84,
                  left: 110.09 - 24, // Relative to parent
                  width: 4.77,
                  height: 4.77,
                  child: SvgPicture.string(
                    '''<svg width="5" height="5" viewBox="0 0 5 5" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M4.77479 2.38051C4.77615 2.85328 4.63712 3.3158 4.37532 3.70947C4.11351 4.10313 3.74072 4.4102 3.3042 4.59175C2.86768 4.7733 2.38708 4.82116 1.92333 4.72926C1.45958 4.63736 1.03356 4.40984 0.699257 4.07554C0.364958 3.74124 0.137437 3.31522 0.0455387 2.85147C-0.0463596 2.38771 0.00150096 1.90712 0.181072 1.4706C0.364604 1.03408 0.671674 0.661285 1.06534 0.399479C1.459 0.137674 1.92152 -0.00135447 2.39429 9.94716e-06C3.02564 9.94716e-06 3.63113 0.250807 4.07756 0.697238C4.52399 1.14367 4.77479 1.74916 4.77479 2.38051Z" fill="#263238"/>
</svg>''',
                  ),
                ),

                // One Hundred and Sixteenth Design Element (Dark Circular SVG) - MOVED FOR Z-INDEX
                Positioned(
                  top: 74.89,
                  left: 114.05 - 24, // Relative to parent
                  width: 4.33,
                  height: 4.33,
                  child: SvgPicture.string(
                    '''<svg width="5" height="5" viewBox="0 0 5 5" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M4.3332 2.1666C4.3332 2.59511 4.20613 3.014 3.96806 3.3703C3.72999 3.72659 3.39161 4.00429 2.99572 4.16827C2.59982 4.33226 2.16419 4.37517 1.74391 4.29157C1.32363 4.20797 0.937584 4.00162 0.63458 3.69862C0.331575 3.39561 0.125231 3.00956 0.0416322 2.58928C-0.0419665 2.16901 0.000936898 1.73337 0.164922 1.33748C0.328907 0.941581 0.606607 0.603205 0.962903 0.365136C1.3192 0.127067 1.73808 0 2.16659 0C2.74065 0.00181953 3.29068 0.230671 3.6966 0.636594C4.10252 1.04252 4.33138 1.59254 4.3332 2.1666Z" fill="#263238"/>
</svg>''',
                  ),
                ),

                // One Hundred and Seventeenth Design Element (Dark Circular SVG) - MOVED FOR Z-INDEX
                Positioned(
                  top: 75.15,
                  left: 117.55 - 24, // Relative to parent
                  width: 4.35,
                  height: 4.35,
                  child: SvgPicture.string(
                    '''<svg width="5" height="5" viewBox="0 0 5 5" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M4.34699 2.1666C4.34836 2.59677 4.22205 3.01767 3.98405 3.37601C3.74606 3.73434 3.40708 4.014 3.01004 4.17957C2.61301 4.34513 2.17577 4.38916 1.7537 4.30608C1.33163 4.22299 0.943713 4.01653 0.639053 3.71284C0.334393 3.40915 0.126699 3.02188 0.0422728 2.60008C-0.0421529 2.17827 0.000480859 1.7409 0.164783 1.34334C0.328906 0.945782 0.607671 0.605923 0.965249 0.366789C1.32283 0.127655 1.74331 2.16769e-06 2.17349 0C2.74874 -2.89872e-06 3.30054 0.228043 3.70795 0.634162C4.11536 1.04028 4.34517 1.59135 4.34699 2.1666Z" fill="#263238"/>
</svg>''',
                  ),
                ),

                // One Hundred and Eighteenth Design Element (Dark Circular SVG) - MOVED FOR Z-INDEX
                Positioned(
                  top: 75.84,
                  left: 121.15 - 24, // Relative to parent
                  width: 4.77,
                  height: 4.77,
                  child: SvgPicture.string(
                    '''<svg width="5" height="5" viewBox="0 0 5 5" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M4.77479 2.3805C4.77616 2.85297 4.6373 3.31523 4.3758 3.70874C4.1143 4.10225 3.74192 4.40933 3.3058 4.59108C2.86968 4.77284 2.38944 4.8211 1.92588 4.72976C1.46231 4.63843 1.03627 4.41159 0.701699 4.07799C0.367125 3.74438 0.139059 3.319 0.0463804 2.8557C-0.0462986 2.3924 0.000580181 1.91202 0.181072 1.47538C0.361564 1.03874 0.667559 0.665471 1.06031 0.402833C1.45307 0.140196 1.91491 1.97335e-06 2.38739 0C3.01937 -2.6395e-06 3.62558 0.250579 4.0731 0.696812C4.52063 1.14305 4.77296 1.74852 4.77479 2.3805Z" fill="#263238"/>
</svg>''',
                  ),
                ),

                // One Hundred and Nineteenth Design Element (Dark Circular SVG) - MOVED FOR Z-INDEX
                Positioned(
                  top: 77.59,
                  left: 124.49 - 24, // Relative to parent
                  width: 4.33,
                  height: 4.33,
                  child: SvgPicture.string(
                    '''<svg width="5" height="5" viewBox="0 0 5 5" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M2.1666 4.3332C3.36318 4.3332 4.3332 3.36318 4.3332 2.1666C4.3332 0.97002 3.36318 0 2.1666 0C0.970019 0 0 0.97002 0 2.1666C0 3.36318 0.970019 4.3332 2.1666 4.3332Z" fill="#263238"/>
</svg>''',
                  ),
                ),

                // One Hundred and Twentieth Design Element (Dark Circular SVG) - MOVED FOR Z-INDEX
                Positioned(
                  top: 80.52,
                  left: 126.44 - 24, // Relative to parent
                  width: 4.77,
                  height: 4.77,
                  child: SvgPicture.string(
                    '''<svg width="5" height="5" viewBox="0 0 5 5" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M2.38739 4.7748C3.70592 4.7748 4.7748 3.70592 4.7748 2.3874C4.7748 1.06887 3.70592 0 2.38739 0C1.06887 0 0 1.06887 0 2.3874C0 3.70592 1.06887 4.7748 2.38739 4.7748Z" fill="#263238"/>
</svg>''',
                  ),
                ),

                // One Hundred and Twenty-first Design Element (Dark Circular SVG) - MOVED FOR Z-INDEX
                Positioned(
                  top: 83.51,
                  left: 129.51 - 24, // Relative to parent
                  width: 4.33,
                  height: 4.33,
                  child: SvgPicture.string(
                    '''<svg width="5" height="5" viewBox="0 0 5 5" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M2.1666 4.3332C3.36318 4.3332 4.3332 3.36318 4.3332 2.1666C4.3332 0.970019 3.36318 0 2.1666 0C0.970019 0 0 0.970019 0 2.1666C0 3.36318 0.970019 4.3332 2.1666 4.3332Z" fill="#263238"/>
</svg>''',
                  ),
                ),

                // One Hundred and Twenty-second Design Element (Dark Circular SVG) - MOVED FOR Z-INDEX
                Positioned(
                  top: 90.52,
                  left: 130.62 - 24, // Relative to parent
                  width: 4.77,
                  height: 4.77,
                  child: SvgPicture.string(
                    '''<svg width="5" height="5" viewBox="0 0 5 5" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M4.7748 2.3874C4.7748 2.85959 4.63478 3.32117 4.37245 3.71377C4.11012 4.10638 3.73726 4.41238 3.30102 4.59308C2.86478 4.77376 2.38475 4.82104 1.92164 4.72893C1.45853 4.63681 1.03314 4.40943 0.699255 4.07554C0.365371 3.74166 0.137992 3.31627 0.0458733 2.85317C-0.046245 2.39006 0.00103725 1.91003 0.181734 1.47379C0.362431 1.03755 0.668432 0.66469 1.06104 0.402359C1.45364 0.140028 1.91522 1.00308e-05 2.3874 1.00308e-05C2.70118 -0.000900783 3.01203 0.0602246 3.30209 0.17988C3.59216 0.299536 3.8557 0.47536 4.07758 0.697233C4.29945 0.919105 4.47527 1.18265 4.59493 1.47271C4.71458 1.76278 4.77571 2.07363 4.7748 2.3874Z" fill="#263238"/>
</svg>''',
                  ),
                ),

                // One Hundred and Twenty-third Design Element (Dark Circular SVG) - MOVED FOR Z-INDEX
                Positioned(
                  top: 94.82,
                  left: 130.5 - 24, // Relative to parent
                  width: 4.33,
                  height: 4.33,
                  child: SvgPicture.string(
                    '''<svg width="5" height="5" viewBox="0 0 5 5" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M4.3332 2.1666C4.3332 2.59511 4.20613 3.014 3.96806 3.3703C3.72999 3.72659 3.39161 4.00429 2.99572 4.16828C2.59982 4.33226 2.16419 4.37517 1.74391 4.29157C1.32363 4.20797 0.937584 4.00162 0.63458 3.69862C0.331575 3.39561 0.125231 3.00956 0.0416322 2.58928C-0.0419665 2.169 0.000936898 1.73337 0.164922 1.33748C0.328907 0.941581 0.606607 0.60321 0.962903 0.365141C1.3192 0.127072 1.73809 0 2.1666 0C2.74066 0.00181953 3.29069 0.230671 3.69661 0.636594C4.10254 1.04252 4.33138 1.59254 4.3332 2.1666Z" fill="#263238"/>
</svg>''',
                  ),
                ),

                // One Hundred and Twenty-fourth Design Element (Dark Circular SVG) - MOVED FOR Z-INDEX
                Positioned(
                  top: 98.81,
                  left: 130.5 - 24, // Relative to parent
                  width: 4.33,
                  height: 4.33,
                  child: SvgPicture.string(
                    '''<svg width="5" height="5" viewBox="0 0 5 5" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M4.3332 2.16661C4.3332 2.59512 4.20613 3.01401 3.96806 3.37031C3.72999 3.72661 3.39161 4.0043 2.99572 4.16828C2.59982 4.33227 2.16419 4.37518 1.74391 4.29158C1.32363 4.20798 0.937584 4.00163 0.63458 3.69862C0.331576 3.39562 0.125231 3.00957 0.0416322 2.58929C-0.0419665 2.16901 0.000936898 1.73338 0.164922 1.33749C0.328907 0.941592 0.606607 0.603211 0.962903 0.365142C1.3192 0.127073 1.73809 1.10588e-05 2.1666 1.10588e-05C2.45138 -0.000900236 2.73353 0.0545184 2.9968 0.163077C3.26008 0.271637 3.49928 0.431188 3.70065 0.632557C3.90201 0.833926 4.06158 1.07314 4.17014 1.33641C4.27869 1.59969 4.33411 1.88183 4.3332 2.16661Z" fill="#263238"/>
</svg>''',
                  ),
                ),

                // One Hundred and Twenty-fifth Design Element (Dark Circular SVG) - MOVED FOR Z-INDEX
                Positioned(
                  top: 101.66,
                  left: 128.24 - 24, // Relative to parent
                  width: 4.77,
                  height: 4.77,
                  child: SvgPicture.string(
                    '''<svg width="5" height="5" viewBox="0 0 5 5" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M4.77479 2.3805C4.77616 2.85297 4.6373 3.31523 4.3758 3.70874C4.1143 4.10225 3.74191 4.40933 3.3058 4.59109C2.86968 4.77284 2.38944 4.82111 1.92588 4.72977C1.46232 4.63843 1.03628 4.41159 0.701702 4.07799C0.367128 3.74438 0.139062 3.319 0.0463831 2.8557C-0.0462959 2.39241 0.000572408 1.91202 0.181065 1.47538C0.361557 1.03874 0.667551 0.665471 1.0603 0.402833C1.45306 0.140196 1.91491 1.97335e-06 2.38739 0C3.01937 -2.6395e-06 3.62558 0.250579 4.07311 0.696812C4.52063 1.14304 4.77297 1.74852 4.77479 2.3805Z" fill="#263238"/>
</svg>''',
                  ),
                ),

                // One Hundred and Twenty-sixth Design Element (Dark Circular SVG) - MOVED FOR Z-INDEX
                Positioned(
                  top: 105.0,
                  left: 126.66 - 24, // Relative to parent
                  width: 4.33,
                  height: 4.33,
                  child: SvgPicture.string(
                    '''<svg width="5" height="5" viewBox="0 0 5 5" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M4.3332 2.16661C4.3332 2.59512 4.20614 3.014 3.96807 3.3703C3.73 3.72659 3.39162 4.00429 2.99573 4.16828C2.59983 4.33226 2.1642 4.37517 1.74392 4.29157C1.32364 4.20797 0.937595 4.00163 0.63459 3.69862C0.331586 3.39562 0.125231 3.00957 0.0416322 2.58929C-0.0419665 2.16901 0.000936898 1.73338 0.164922 1.33749C0.328907 0.941591 0.606607 0.60321 0.962903 0.365141C1.3192 0.127072 1.73809 0 2.1666 0C2.74066 0.00181953 3.29069 0.230677 3.69661 0.636599C4.10254 1.04252 4.33138 1.59255 4.3332 2.16661Z" fill="#263238"/>
</svg>''',
                  ),
                ),

                // One Hundred and Twenty-seventh Design Element (Dark Circular SVG) - MOVED FOR Z-INDEX
                Positioned(
                  top: 106.51,
                  left: 123.14 - 24, // Relative to parent
                  width: 4.33,
                  height: 4.33,
                  child: SvgPicture.string(
                    '''<svg width="5" height="5" viewBox="0 0 5 5" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M4.3332 2.1666C4.3332 2.59511 4.20613 3.014 3.96806 3.3703C3.72999 3.72659 3.39162 4.00429 2.99573 4.16828C2.59983 4.33226 2.1642 4.37517 1.74392 4.29157C1.32364 4.20797 0.937584 4.00163 0.63458 3.69862C0.331575 3.39562 0.125231 3.00956 0.0416322 2.58928C-0.0419665 2.169 0.000936898 1.73337 0.164922 1.33748C0.328907 0.941581 0.606607 0.60321 0.962903 0.365141C1.3192 0.127072 1.73809 0 2.1666 0C2.74066 0.00181953 3.29069 0.230666 3.69661 0.636589C4.10254 1.04251 4.33138 1.59254 4.3332 2.1666Z" fill="#263238"/>
</svg>''',
                  ),
                ),

                // One Hundred and Twenty-eighth Design Element (Dark SVG Shape) - MOVED FOR Z-INDEX
                Positioned(
                  top: 101.57,
                  left: 116.88 - 24, // Relative to parent
                  width: 8.24,
                  height: 10.43,
                  child: SvgPicture.string(
                    '''<svg width="9" height="11" viewBox="0 0 9 11" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0 3.53281C0.603767 5.12606 1.54738 6.56865 2.76519 7.76025C3.98301 8.95185 5.44579 9.86385 7.0518 10.4328L8.2386 4.6989L1.4559 0.552002L0.476102 0C0.476102 0 0.2553 1.55251 0 3.53281Z" fill="#263238"/>
</svg>''',
                  ),
                ),
                
                // One Hundredth Design Element (Dark Circular SVG) - MOVED FOR Z-INDEX
                Positioned(
                  top: 76.68,
                  left: 98.68 - 24, // Relative to parent
                  width: 34.64,
                  height: 35.98,
                  child: SvgPicture.string(
                    '''<svg width="35" height="36" viewBox="0 0 35 36" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M17.319 35.9766C26.884 35.9766 34.638 27.923 34.638 17.9883C34.638 8.05364 26.884 0 17.319 0C7.75398 0 0 8.05364 0 17.9883C0 27.923 7.75398 35.9766 17.319 35.9766Z" fill="#263238"/>
</svg>''',
                  ),
                ),

                // Twenty-eighth Design Element (Even Darker Container)
                Positioned(
                  top: 58.35,
                  left: 154.21 - 24, // Relative to parent
                  width: 102.40,
                  height: 143.87,
                  child: Container(
                    color: const Color(0xFF263238),
                  ),
                ),

                // Twenty-ninth Design Element (White Container)
                Positioned(
                  top: 102.09,
                  left: 160.65 - 24, // Relative to parent
                  width: 89.51,
                  height: 69.61,
                  child: Container(
                    color: Colors.white,
                  ),
                ),

                // Thirtieth Design Element (Narrow Container)
                Positioned(
                  top: 86.95,
                  left: 262.79 - 24, // Relative to parent
                  width: 15.18,
                  height: 177.96,
                  child: Container(
                    color: const Color(0xFF455A64),
                  ),
                ),

                // Thirty-first Design Element (Very Narrow Dark Container)
                Positioned(
                  top: 86.95,
                  left: 262.79 - 24, // Relative to parent
                  width: 4.06,
                  height: 177.96,
                  child: Container(
                    color: const Color(0xFF263238),
                  ),
                ),

                // Thirty-second Design Element (SVG)
                Positioned(
                  top: 87.87,
                  left: 242.55 - 24, // Shifted left (from 257 to 252)
                  width: 43.98,
                  height: 78.77,
                  child: Center(
                    child: SvgPicture.string(
                      '''<svg width="13" height="35" viewBox="0 0 13 35" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M5.52 34.3344L0 28.8144C1.53546 27.2882 2.75399 25.4735 3.5855 23.4746C4.41701 21.4757 4.84508 19.3321 4.84508 17.1672C4.84508 15.0023 4.41701 12.8587 3.5855 10.8598C2.75399 8.86093 1.53546 7.0462 0 5.52L5.52 0C14.697 8.7837 15.4284 24.6054 5.52 34.3344Z" fill="#FFA143"/>
</svg>''',
                    ),
                  ),
                ),

                // Thirty-third Design Element (Second SVG)
                Positioned(
                  top: 98.93,
                  left: 268.61 - 24, // Relative to parent
                  width: 17.28,
                  height: 56.61,
                  child: SvgPicture.string(
                    '''<svg width="18" height="57" viewBox="0 0 18 57" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0 5.55449C1.8492 3.69839 3.657 1.8768 5.52 0C11.73 6.3273 15.6837 13.8 16.8705 22.6044C18.6507 35.7489 14.6556 47.0373 5.6028 56.6076L0.0827966 51.0255C6.1824 44.7396 9.48059 37.1703 9.47369 28.2969C9.46679 19.4235 6.1341 11.8887 0 5.55449Z" fill="#FFA143"/>
</svg>''',
                  ),
                ),

                // Thirty-fourth Design Element (Third SVG)
                Positioned(
                  top: 87.87,
                  left: 279.62 - 24, // Relative to parent
                  width: 21.91,
                  height: 78.77,
                  child: SvgPicture.string(
                    '''<svg width="22" height="79" viewBox="0 0 22 79" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M5.53379 78.7566L2.04239 75.2376L0.0413983 73.2435C9.2046 63.7974 14.0898 52.5435 14.0967 39.3921C14.1036 26.2407 9.2253 14.973 0 5.4579C0.6555 4.8369 1.3317 4.209 1.9872 3.5604L5.4717 0.110403C5.49641 0.0760119 5.51724 0.038983 5.53379 0H5.61661C5.69251 0.0897 5.75461 0.179403 5.83051 0.262203C7.14151 1.7388 8.5077 3.1809 9.7635 4.7058C15.3685 11.6488 19.1916 19.8564 20.9001 28.6143C21.3141 30.8637 21.5211 33.1545 21.804 35.4246C21.9006 36.1974 21.9144 41.2275 21.9006 41.3862C21.7902 42.9318 21.7212 44.4843 21.5556 46.023C21.0704 50.2963 20.0671 54.4948 18.5679 58.5258C17.493 61.4529 16.1703 64.283 14.6142 66.9852C12.9798 69.8441 11.0859 72.5465 8.95621 75.0582C7.87981 76.3209 6.73441 77.5353 5.61661 78.7704L5.53379 78.7566Z" fill="#FFA143"/>
</svg>''',
                  ),
                ),

                // Thirty-fifth Design Element (Small Gray Container)
                Positioned(
                  top: 177.12,
                  left: 163.08 - 24, // Relative to parent
                  width: 22.87,
                  height: 7.58,
                  child: Container(
                    color: const Color(0xFFA6A6A6),
                  ),
                ),

                // Thirty-sixth Design Element (Small Gray Container)
                Positioned(
                  top: 189.16,
                  left: 163.08 - 24, // Relative to parent
                  width: 22.87,
                  height: 7.58,
                  child: Container(
                    color: const Color(0xFFA6A6A6),
                  ),
                ),

                // Thirty-seventh Design Element (Gray Circle)
                Positioned(
                  top: 177.11,
                  left: 195.06 - 24, // Relative to parent
                  width: 19.62,
                  height: 19.62,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFFA6A6A6),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),

                // Thirty-eighth Design Element (Small Gray Container)
                Positioned(
                  top: 177.12,
                  left: 225.31 - 24, // Relative to parent
                  width: 22.87,
                  height: 7.58,
                  child: Container(
                    color: const Color(0xFFA6A6A6),
                  ),
                ),

                // Thirty-ninth Design Element (Small Gray Container)
                Positioned(
                  top: 189.16,
                  left: 225.31 - 24, // Relative to parent
                  width: 22.87,
                  height: 7.58,
                  child: Container(
                    color: const Color(0xFFA6A6A6),
                  ),
                ),

                // Fortieth Design Element (Light Gray Container)
                Positioned(
                  top: 208.68,
                  left: 162.64 - 24, // Relative to parent
                  width: 24.58,
                  height: 10.95,
                  child: Container(
                    color: const Color(0xFFEBEBEB),
                  ),
                ),

                // Forty-first Design Element (Light Gray Container)
                Positioned(
                  top: 208.68,
                  left: 193.12 - 24, // Relative to parent
                  width: 24.58,
                  height: 10.95,
                  child: Container(
                    color: const Color(0xFFEBEBEB),
                  ),
                ),

                // Forty-second Design Element (Light Gray Container)
                Positioned(
                  top: 208.68,
                  left: 223.6 - 24, // Relative to parent
                  width: 24.58,
                  height: 10.95,
                  child: Container(
                    color: const Color(0xFFEBEBEB),
                  ),
                ),

                // Forty-third Design Element (Light Gray Container)
                Positioned(
                  top: 224.24,
                  left: 162.64 - 24, // Relative to parent
                  width: 24.58,
                  height: 10.95,
                  child: Container(
                    color: const Color(0xFFEBEBEB),
                  ),
                ),

                // Forty-fourth Design Element (Light Gray Container)
                Positioned(
                  top: 224.24,
                  left: 193.12 - 24, // Relative to parent
                  width: 24.58,
                  height: 10.95,
                  child: Container(
                    color: const Color(0xFFEBEBEB),
                  ),
                ),

                // Forty-fifth Design Element (Light Gray Container)
                Positioned(
                  top: 224.24,
                  left: 223.6 - 24, // Relative to parent
                  width: 24.58,
                  height: 10.95,
                  child: Container(
                    color: const Color(0xFFEBEBEB),
                  ),
                ),

                // Forty-sixth Design Element (Light Gray Container)
                Positioned(
                  top: 239.79,
                  left: 162.64 - 24, // Relative to parent
                  width: 24.58,
                  height: 10.95,
                  child: Container(
                    color: const Color(0xFFEBEBEB),
                  ),
                ),

                // Forty-seventh Design Element (Light Gray Container)
                Positioned(
                  top: 239.79,
                  left: 193.12 - 24, // Relative to parent
                  width: 24.58,
                  height: 10.95,
                  child: Container(
                    color: const Color(0xFFEBEBEB),
                  ),
                ),

                // Forty-eighth Design Element (Light Gray Container)
                Positioned(
                  top: 239.79,
                  left: 223.6 - 24, // Relative to parent
                  width: 24.58,
                  height: 10.95,
                  child: Container(
                    color: const Color(0xFFEBEBEB),
                  ),
                ),

                // Forty-ninth Design Element (Light Gray Container)
                Positioned(
                  top: 255.34,
                  left: 162.64 - 24, // Relative to parent
                  width: 24.58,
                  height: 10.95,
                  child: Container(
                    color: const Color(0xFFEBEBEB),
                  ),
                ),

                // Fiftieth Design Element (Light Gray Container)
                Positioned(
                  top: 255.34,
                  left: 193.12 - 24, // Relative to parent
                  width: 24.58,
                  height: 10.95,
                  child: Container(
                    color: const Color(0xFFEBEBEB),
                  ),
                ),

                // Fifty-first Design Element (Light Gray Container)
                Positioned(
                  top: 255.34,
                  left: 223.6 - 24, // Relative to parent
                  width: 24.58,
                  height: 10.95,
                  child: Container(
                    color: const Color(0xFFEBEBEB),
                  ),
                ),

                // Fifty-second Design Element (Dark Container)
                Positioned(
                  top: 270.89,
                  left: 162.64 - 24, // Relative to parent
                  width: 24.58,
                  height: 10.95,
                  child: Container(
                    color: const Color(0xFF263238),
                  ),
                ),

                // Fifty-third Design Element (Orange Container)
                Positioned(
                  top: 270.89,
                  left: 193.12 - 24, // Relative to parent
                  width: 24.58,
                  height: 10.95,
                  child: Container(
                    color: const Color(0xFFFFA143),
                  ),
                ),

                // Fifty-fourth Design Element (Gray Container)
                Positioned(
                  top: 270.89,
                  left: 223.6 - 24, // Relative to parent
                  width: 24.58,
                  height: 10.95,
                  child: Container(
                    color: const Color(0xFFA6A6A6),
                  ),
                ),

                // Fifty-fifth Design Element (SVG Trapezoid)
                Positioned(
                  top: 246.63,
                  left: 242.71 - 24, // Relative to parent
                  width: 60.13,
                  height: 61.24,
                  child: SvgPicture.string(
                    '''<svg width="61" height="62" viewBox="0 0 61 62" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0 61.2444H60.1266L51.3567 0H8.76301L0 61.2444Z" fill="#FFA143"/>
</svg>''',
                  ),
                ),

                // Fifty-sixth Design Element (Low Opacity SVG)
                Positioned(
                  top: 246.63,
                  left: 242.71 - 24, // Relative to parent
                  width: 15.44,
                  height: 61.24,
                  child: Opacity(
                    opacity: 0.1,
                    child: SvgPicture.string(
                      '''<svg width="16" height="62" viewBox="0 0 16 62" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M8.76301 0L15.4422 61.2444H0L8.76301 0Z" fill="#263238"/>
</svg>''',
                    ),
                  ),
                ),

                // Fifty-seventh Design Element (Thin White SVG Line)
                Positioned(
                  top: 256.0,
                  left: 249.49 - 24, // Relative to parent
                  width: 1.59,
                  height: 46.91,
                  child: SvgPicture.string(
                    '''<svg width="2" height="47" viewBox="0 0 2 47" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0 46.9131C0 42.9939 0.0690008 39.0816 0.151801 35.1831C0.234601 31.2846 0.372602 27.3654 0.476102 23.4531C0.579602 19.5408 0.765903 15.6354 0.952203 11.7231L1.24201 5.85809C1.35931 3.90539 1.45592 1.9527 1.59392 0C1.59392 1.9596 1.5939 3.91229 1.5525 5.87189L1.44212 11.7369C1.35932 15.6492 1.22132 19.5615 1.11782 23.4669C1.01432 27.3723 0.828016 31.2915 0.641716 35.1969C0.455416 39.1023 0.2898 42.9801 0 46.9131Z" fill="white"/>
</svg>''',
                  ),
                ),

                // Fifty-eighth Design Element (Small White SVG Shape)
                Positioned(
                  top: 302.52,
                  left: 243.38 - 24, // Relative to parent
                  width: 13.99,
                  height: 4.90,
                  child: SvgPicture.string(
                    '''<svg width="14" height="5" viewBox="0 0 14 5" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M13.9932 4.8921C12.6132 4.2642 11.2746 3.56041 9.936 2.85661C8.5974 2.15281 7.28641 1.40071 5.98231 0.634809H6.32731C5.29921 1.38691 4.2573 2.1252 3.2085 2.829C2.1597 3.5328 1.0971 4.2504 0 4.899C0.9522 4.0503 1.9389 3.24301 2.9325 2.44951C3.9261 1.65601 4.9335 0.883195 5.9547 0.124195L6.1203 0L6.2997 0.103496C7.6107 0.848696 8.9102 1.6192 10.1982 2.415C11.4471 3.2085 12.7236 4.0158 13.9932 4.8921Z" fill="white"/>
</svg>''',
                  ),
                ),

                // Fifty-ninth Design Element (Small Dark Circle)
                Positioned(
                  top: 248.1,
                  left: 263.28 - 24, // Relative to parent
                  width: 5.11,
                  height: 5.11,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF263238),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),

                // Sixtieth Design Element (Small Dark Circle)
                Positioned(
                  top: 248.1,
                  left: 280.46 - 24, // Relative to parent
                  width: 5.11,
                  height: 5.11,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF263238),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),

                // Sixty-first Design Element (Dark SVG Shape)
                Positioned(
                  top: 232.2,
                  left: 263.21 - 24, // Relative to parent
                  width: 21.03,
                  height: 18.73,
                  child: SvgPicture.string(
                    '''<svg width="22" height="19" viewBox="0 0 22 19" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M18.5483 18.7293C18.5483 18.6741 17.4512 13.5405 16.292 8.37928C15.3191 4.05298 11.0273 2.06576 7.43928 2.65226C6.16968 2.85926 2.07798 3.93568 2.60928 9.22798C3.21648 15.3069 3.68569 18.2463 3.69259 18.2739L1.16719 18.6879C1.16719 18.5637 0.677296 15.6519 0.0562963 9.48328C-0.433604 4.56358 2.30569 0.885881 7.03219 0.126881C11.7587 -0.632119 17.4857 2.02438 18.7622 7.82038C19.9283 13.0161 21.0116 18.1704 21.0254 18.2187L18.5483 18.7293Z" fill="#263238"/>
</svg>''',
                  ),
                ),

                // Sixty-second Design Element (Gradient Container)
                Positioned(
                  top: 98.23,
                  left: 135.5 - 24, // Relative to parent
                  width: 103.20,
                  height: 69.12,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0xFFFFA143), Color(0xFFF43B5E)],
                        stops: [0.0244, 0.9667],
                      ),
                    ),
                  ),
                ),

                // Sixty-third Design Element (Small Dark Container)
                Positioned(
                  top: 108.3,
                  left: 144.18 - 24, // Relative to parent
                  width: 19.35,
                  height: 13.37,
                  child: Transform.rotate(
                    angle: 0.15 * math.pi / 180,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF37474F),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ),

                // Sixty-fourth Design Element (Small Dark Rotated Line)
                Positioned(
                  top: 108.18,
                  left: 186.47 - 24, // Relative to parent
                  width: 24.41,
                  height: 2.41,
                  child: Transform.rotate(
                    angle: 0.15 * math.pi / 180,
                    child: Container(
                      color: const Color(0xFF37474F),
                    ),
                  ),
                ),

                // Sixty-seventh Design Element (Small White SVG Curve)
                Positioned(
                  top: 111.11,
                  left: 225.11 - 24, // Relative to parent
                  width: 1.62,
                  height: 4.45,
                  child: SvgPicture.string(
                    '''<svg width="2" height="5" viewBox="0 0 2 5" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0.724492 4.4505L0 3.7605C0.202026 3.56284 0.362321 3.32664 0.471364 3.06589C0.580406 2.80513 0.635986 2.52513 0.634809 2.2425C0.632552 1.67241 0.404249 1.12649 0 0.724502L0.69 0C1.28157 0.587314 1.61713 1.38457 1.62359 2.21815C1.63005 3.05172 1.30688 3.85408 0.724492 4.4505Z" fill="white"/>
</svg>''',
                  ),
                ),

                // Sixty-eighth Design Element (Small White SVG Curve)
                Positioned(
                  top: 109.63,
                  left: 226.56 - 24, // Relative to parent
                  width: 2.22,
                  height: 7.38,
                  child: SvgPicture.string(
                    '''<svg width="3" height="8" viewBox="0 0 3 8" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0 0.724492L0.69 0C1.1761 0.484033 1.56181 1.0593 1.825 1.69279C2.08819 2.32628 2.22368 3.00551 2.22368 3.69149C2.22368 4.37748 2.08819 5.05672 1.825 5.6902C1.56181 6.32369 1.1761 6.89897 0.69 7.383L0 6.6585C0.389724 6.26892 0.698869 5.80638 0.909794 5.29729C1.12072 4.7882 1.22929 4.24255 1.22929 3.69149C1.22929 3.14044 1.12072 2.59479 0.909794 2.08571C0.698869 1.57662 0.389724 1.11407 0 0.724492Z" fill="white"/>
</svg>''',
                  ),
                ),

                // Sixty-ninth Design Element (Small White SVG Curve)
                Positioned(
                  top: 108.19,
                  left: 228.0 - 24, // Relative to parent
                  width: 2.79,
                  height: 10.32,
                  child: SvgPicture.string(
                    '''<svg width="3" height="11" viewBox="0 0 3 11" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0.717606 10.2672L0.262203 9.8118C0.172503 9.7221 0.0828 9.6393 0 9.5496C0.586228 8.97182 1.05175 8.28327 1.36949 7.52398C1.68724 6.76468 1.85086 5.94979 1.85086 5.1267C1.85086 4.3036 1.68724 3.48872 1.36949 2.72943C1.05175 1.97013 0.586228 1.28158 0 0.703803L0.255297 0.455403L0.710699 0V0.0345021C0.883199 0.227702 1.0626 0.414 1.2282 0.6141C1.56474 1.04021 1.85177 1.50318 2.08379 1.9941C2.36235 2.55504 2.56205 3.15178 2.6772 3.76739C2.7324 4.06409 2.75999 4.3608 2.79449 4.6575C2.79449 4.761 2.79449 5.41649 2.79449 5.43719C2.79449 5.63729 2.79449 5.8443 2.75309 6.0444C2.68862 6.60116 2.55654 7.14799 2.35979 7.6728C2.2226 8.05634 2.04933 8.426 1.84229 8.7768C1.6313 9.15199 1.38403 9.50559 1.104 9.8325C0.966004 9.9981 0.814201 10.1568 0.669301 10.3155L0.717606 10.2672Z" fill="white"/>
</svg>''',
                  ),
                ),

                // Seventieth Design Element (Small Light SVG)
                Positioned(
                  top: 133.34,
                  left: 142.44 - 24, // Relative to parent
                  width: 1.46,
                  height: 5.58,
                  child: SvgPicture.string(
                    '''<svg width="2" height="6" viewBox="0 0 2 6" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M1.08224 0.566939L0.295639 1.03613C0.267302 1.05645 0.233833 1.0684 0.19904 1.07064C0.164383 1.07085 0.130268 1.06206 0.100029 1.04513C0.0697902 1.02819 0.044465 1.0037 0.0265395 0.974036C0.013361 0.952069 0.00485809 0.927614 0.00155524 0.902211C-0.00174762 0.876807 0.000222869 0.851001 0.00734595 0.826394C0.014469 0.801787 0.0265913 0.778912 0.0429536 0.759201C0.0593158 0.73949 0.0795646 0.723364 0.10244 0.711833L1.17884 0.0218331C1.22456 -0.000581102 1.27678 -0.00594465 1.32611 0.00670357C1.37544 0.0193518 1.41864 0.0491861 1.44794 0.0908373C1.46119 0.138229 1.46119 0.18834 1.44794 0.235731V5.39003C1.44891 5.41566 1.44458 5.44122 1.43521 5.4651C1.42584 5.48898 1.41164 5.51066 1.39351 5.5288C1.37537 5.54694 1.35369 5.56114 1.32981 5.5705C1.30593 5.57987 1.28037 5.5842 1.25474 5.58323C1.2035 5.58323 1.15436 5.56288 1.11813 5.52665C1.0819 5.49042 1.06154 5.44127 1.06154 5.39003L1.08224 0.566939Z" fill="#F8F8F8"/>
</svg>''',
                  ),
                ),

                // Seventy-first Design Element (Small Light SVG)
                Positioned(
                  top: 133.34,
                  left: 145.21 - 24, // Relative to parent
                  width: 3.54,
                  height: 5.63,
                  child: SvgPicture.string(
                    '''<svg width="4" height="6" viewBox="0 0 4 6" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0.0932634 5.26483L2.70837 2.89123C2.85761 2.75431 2.97695 2.588 3.05888 2.40277C3.14081 2.21754 3.18357 2.01738 3.18447 1.81483C3.18252 1.45889 3.04709 1.11664 2.80497 0.855735C2.67605 0.712704 2.52015 0.596528 2.34623 0.513883C2.17231 0.431239 1.98378 0.383754 1.79146 0.374138C1.59914 0.364522 1.40681 0.392967 1.22552 0.45785C1.04422 0.522733 0.877516 0.622771 0.734969 0.752229L0.458963 1.00754C0.441572 1.02569 0.420694 1.04014 0.39757 1.05001C0.374447 1.05988 0.349561 1.06498 0.324418 1.06498C0.299275 1.06498 0.274389 1.05988 0.251265 1.05001C0.228142 1.04014 0.207253 1.02569 0.189863 1.00754C0.170607 0.990073 0.155226 0.968763 0.144695 0.944996C0.134165 0.92123 0.128724 0.895523 0.128724 0.869528C0.128724 0.843532 0.134165 0.817826 0.144695 0.794059C0.155226 0.770292 0.170607 0.748993 0.189863 0.73153L0.458963 0.476233C0.799929 0.169548 1.24236 -5.3259e-05 1.70096 0.000131446C1.95463 -0.00295712 2.20601 0.048416 2.43812 0.150785C2.67024 0.253153 2.87769 0.404135 3.04646 0.593532C3.35842 0.92675 3.53334 1.36529 3.53637 1.82173C3.53778 2.08085 3.48512 2.33742 3.38176 2.57504C3.27839 2.81266 3.1266 3.0261 2.93607 3.20173L0.700467 5.23723H3.35006C3.40193 5.23902 3.45107 5.26089 3.48711 5.29822C3.52316 5.33556 3.54329 5.38544 3.54326 5.43734C3.54326 5.48857 3.52291 5.53771 3.48668 5.57394C3.45045 5.61018 3.4013 5.63053 3.35006 5.63053H0.224365H0.189863C0.163581 5.63189 0.137361 5.62696 0.113362 5.61616C0.0893633 5.60536 0.0682781 5.58901 0.051865 5.56844C0.0322524 5.54681 0.017614 5.52114 0.00897166 5.49325C0.0003293 5.46536 -0.00211177 5.43592 0.00183329 5.40699C0.00577836 5.37806 0.0160138 5.35034 0.0318081 5.32578C0.0476024 5.30123 0.0685753 5.28042 0.0932634 5.26483Z" fill="#F8F8F8"/>
</svg>''',
                  ),
                ),

                // Seventy-second Design Element (Small Light SVG)
                Positioned(
                  top: 133.32,
                  left: 150.19 - 24, // Relative to parent
                  width: 3.30,
                  height: 5.61,
                  child: SvgPicture.string(
                    '''<svg width="4" height="6" viewBox="0 0 4 6" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M3.22426 0.345128L1.78216 1.84243C2.11793 1.91134 2.42875 2.06992 2.68163 2.30132C2.9345 2.53272 3.11997 2.8283 3.21833 3.15665C3.31669 3.485 3.32428 3.83387 3.24028 4.16619C3.15628 4.4985 2.98383 4.80185 2.74126 5.04403C2.56591 5.2231 2.35658 5.36539 2.12554 5.46255C1.8945 5.5597 1.6464 5.60978 1.39576 5.60983C1.14649 5.61171 0.8994 5.56316 0.669364 5.46712C0.439328 5.37107 0.231091 5.2295 0.0571596 5.05092C0.0205597 5.01432 0 4.96468 0 4.91292C0 4.86116 0.0205597 4.81153 0.0571596 4.77493C0.0937595 4.73833 0.143397 4.71777 0.195157 4.71777C0.246918 4.71777 0.296556 4.73833 0.333155 4.77493C0.619489 5.04836 0.999842 5.20148 1.39576 5.20272C1.59355 5.20364 1.78956 5.16536 1.97247 5.09009C2.15538 5.01482 2.32157 4.90406 2.46143 4.7642C2.60129 4.62434 2.71205 4.45815 2.78732 4.27524C2.86259 4.09233 2.90087 3.89632 2.90096 3.69853C2.90108 3.50191 2.86255 3.30709 2.78668 3.1257C2.7108 2.94431 2.59914 2.78009 2.45836 2.64283C2.32044 2.50147 2.15496 2.38996 1.97218 2.31518C1.78939 2.2404 1.59321 2.20396 1.39576 2.20813C1.3649 2.20661 1.33473 2.19842 1.30733 2.18413C1.27994 2.16984 1.25597 2.14977 1.23706 2.12533C1.21744 2.10664 1.20181 2.08416 1.19114 2.05925C1.18046 2.03434 1.17496 2.00752 1.17496 1.98042C1.17496 1.95333 1.18046 1.92652 1.19114 1.90161C1.20181 1.8767 1.21744 1.85422 1.23706 1.83553L2.61706 0.400329H0.471164C0.444627 0.401295 0.418167 0.396777 0.393452 0.387063C0.368738 0.377349 0.3463 0.362641 0.327523 0.343864C0.308745 0.325087 0.294038 0.302649 0.284324 0.277934C0.27461 0.25322 0.270092 0.22676 0.271058 0.200223C0.270092 0.173686 0.27461 0.147237 0.284324 0.122522C0.294038 0.0978081 0.308745 0.0753591 0.327523 0.056582C0.3463 0.0378049 0.368738 0.0231079 0.393452 0.0133938C0.418167 0.00367967 0.444627 -0.000838151 0.471164 0.000127812H3.08626C3.11311 -0.000798687 3.13988 0.00369031 3.16496 0.0133306C3.19004 0.022971 3.21292 0.0375604 3.23224 0.0562345C3.25156 0.0749086 3.26691 0.0972893 3.2774 0.122028C3.28788 0.146766 3.29328 0.173355 3.29326 0.200223C3.30444 0.229079 3.30444 0.261071 3.29326 0.289926C3.28655 0.30365 3.27688 0.315717 3.26495 0.32526C3.25302 0.334804 3.23912 0.34159 3.22426 0.345128Z" fill="#F8F8F8"/>
</svg>''',
                  ),
                ),

                // Seventy-third Design Element (Small Light SVG)
                Positioned(
                  top: 133.34,
                  left: 154.89 - 24, // Relative to parent
                  width: 4.21,
                  height: 5.55,
                  child: SvgPicture.string(
                    '''<svg width="5" height="6" viewBox="0 0 5 6" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M3.24895 4.42154H0.185345C0.140113 4.4246 0.0955013 4.40973 0.0611499 4.38015C0.0418941 4.36268 0.0265025 4.34137 0.0159718 4.31761C0.00544117 4.29384 0 4.26813 0 4.24214C0 4.21614 0.00544117 4.19044 0.0159718 4.16667C0.0265025 4.1429 0.0418941 4.1216 0.0611499 4.10414L3.29724 0.0607393C3.31408 0.0416499 3.33478 0.0263597 3.35798 0.0158876C3.38118 0.00541549 3.40634 0 3.4318 0C3.45725 0 3.48241 0.00541549 3.50561 0.0158876C3.52881 0.0263597 3.54951 0.0416499 3.56634 0.0607393C3.60084 0.0607393 3.61465 0.122839 3.63535 0.157339V4.03515H4.01485C4.06609 4.03515 4.11522 4.05549 4.15146 4.09173C4.18769 4.12796 4.20805 4.17711 4.20805 4.22835C4.20805 4.27958 4.18769 4.32872 4.15146 4.36495C4.11522 4.40119 4.06609 4.42154 4.01485 4.42154H3.63535V5.38754C3.62672 5.43339 3.60234 5.47478 3.56644 5.50457C3.53053 5.53435 3.48534 5.55065 3.43869 5.55065C3.39204 5.55065 3.34686 5.53435 3.31095 5.50457C3.27504 5.47478 3.25067 5.43339 3.24204 5.38754L3.24895 4.42154ZM3.24895 4.03515V0.743843L0.606245 4.04204L3.24895 4.03515Z" fill="#F8F8F8"/>
</svg>''',
                  ),
                ),

                // Seventy-fourth Design Element (Small Light SVG)
                Positioned(
                  top: 133.33,
                  left: 165.11 - 24, // Relative to parent
                  width: 3.31,
                  height: 5.64,
                  child: SvgPicture.string(
                    '''<svg width="4" height="6" viewBox="0 0 4 6" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0.0616026 5.0165C0.0421683 4.99842 0.0266653 4.97653 0.0160666 4.95219C0.00546792 4.92786 0 4.90159 0 4.87505C0 4.84851 0.00546792 4.82224 0.0160666 4.79791C0.0266653 4.77357 0.0421683 4.75168 0.0616026 4.7336C0.101094 4.69723 0.152811 4.67705 0.206497 4.67705C0.260183 4.67705 0.31191 4.69723 0.351401 4.7336C0.489396 4.87337 0.653775 4.98436 0.834999 5.06011C1.01622 5.13586 1.21068 5.17486 1.4071 5.17486C1.60352 5.17486 1.79798 5.13586 1.9792 5.06011C2.16043 4.98436 2.32481 4.87337 2.4628 4.7336C2.60326 4.5961 2.71471 4.43183 2.79056 4.25049C2.86642 4.06916 2.90513 3.87446 2.9044 3.6779C2.90594 3.47979 2.86833 3.28332 2.79373 3.09979C2.71913 2.91625 2.60901 2.74925 2.4697 2.6084C2.18495 2.3325 1.80358 2.17896 1.4071 2.1806C1.20944 2.17934 1.01354 2.21778 0.831009 2.29364C0.648481 2.36949 0.483039 2.48122 0.344495 2.6222C0.326414 2.64163 0.304523 2.65714 0.280186 2.66774C0.255849 2.67833 0.229598 2.6838 0.203054 2.6838C0.176509 2.6838 0.150248 2.67833 0.125911 2.66774C0.101574 2.65714 0.0796834 2.64163 0.0616026 2.6222C0.0384231 2.60813 0.0212256 2.58603 0.0132976 2.5601C0.00956345 2.53725 0.00956345 2.51395 0.0132976 2.4911C0.0144826 2.47732 0.0144826 2.46347 0.0132976 2.4497L0.282397 0.193397C0.279893 0.164518 0.285709 0.13553 0.299159 0.109853C0.312609 0.0841754 0.333132 0.0628881 0.358298 0.0485029C0.375808 0.0320927 0.396434 0.0193597 0.418953 0.0110634C0.441471 0.00276699 0.465427 -0.000929202 0.489399 0.000197889H3.0976C3.15067 0.000197889 3.20157 0.0212844 3.23909 0.0588104C3.27662 0.0963364 3.2977 0.147234 3.2977 0.200304C3.2977 0.253374 3.27662 0.304271 3.23909 0.341797C3.20157 0.379323 3.15067 0.400399 3.0976 0.400399H0.648096L0.454897 2.0702C0.742656 1.89809 1.0718 1.80746 1.4071 1.80801C1.91035 1.80801 2.39298 2.00792 2.74883 2.36377C3.10468 2.71962 3.3046 3.20226 3.3046 3.7055C3.3114 3.96099 3.26594 4.21518 3.17102 4.45248C3.07611 4.68977 2.93372 4.90519 2.7526 5.08551C2.39142 5.43602 1.91033 5.63585 1.4071 5.6444C1.15221 5.63518 0.901768 5.57485 0.670638 5.46699C0.439508 5.35913 0.232399 5.20593 0.0616026 5.0165Z" fill="#F8F8F8"/>
</svg>''',
                  ),
                ),

                // Seventy-fifth Design Element (Small Light SVG)
                Positioned(
                  top: 133.27,
                  left: 169.98 - 24, // Relative to parent
                  width: 3.70,
                  height: 5.61,
                  child: SvgPicture.string(
                    '''<svg width="4" height="6" viewBox="0 0 4 6" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0.529656 1.2282C0.716257 0.866662 0.996587 0.561921 1.34132 0.345853C1.68606 0.129786 2.08253 0.0103339 2.48925 5.67587e-07C2.54002 -0.000120288 2.58893 0.0190631 2.62608 0.0536541C2.66324 0.0882452 2.68586 0.135661 2.68936 0.186304C2.68948 0.238894 2.66957 0.289561 2.63368 0.328007C2.5978 0.366454 2.54863 0.3898 2.49616 0.393306C2.15856 0.403823 1.82983 0.503937 1.54367 0.683389C1.25752 0.86284 1.02424 1.11517 0.86776 1.4145C0.675325 1.7657 0.540222 2.14539 0.467559 2.53921C0.752355 2.21678 1.14065 2.00374 1.56559 1.93676C1.99054 1.86978 2.42554 1.95306 2.79571 2.17225C3.16587 2.39145 3.44804 2.73284 3.59362 3.13765C3.73919 3.54246 3.73907 3.98536 3.59328 4.3901C3.44749 4.79483 3.16515 5.13608 2.79487 5.35507C2.42459 5.57407 1.98954 5.65711 1.56462 5.5899C1.13971 5.52269 0.75153 5.30945 0.466906 4.98688C0.182282 4.6643 0.0190309 4.25258 0.0052598 3.82261C-0.00175327 3.70081 -0.00175327 3.57871 0.0052598 3.45691C-0.0113733 2.6816 0.169057 1.91475 0.529656 1.2282ZM0.398554 3.7881C0.391304 3.82455 0.391304 3.86206 0.398554 3.89851C0.404868 3.91637 0.404868 3.93585 0.398554 3.95371C0.423637 4.34347 0.59934 4.7082 0.888501 4.97075C1.17766 5.23329 1.55761 5.37307 1.94798 5.36052C2.33835 5.34798 2.70853 5.18409 2.98023 4.90351C3.25194 4.62293 3.40385 4.24768 3.40385 3.85711C3.40385 3.46654 3.25194 3.09127 2.98023 2.8107C2.70853 2.53012 2.33835 2.36623 1.94798 2.35368C1.55761 2.34113 1.17766 2.48091 0.888501 2.74346C0.59934 3.00601 0.423637 3.37074 0.398554 3.76051V3.7881Z" fill="#F8F8F8"/>
</svg>'''
                  ),
                ),

                // Seventy-sixth Design Element (Small Light SVG)
                Positioned(
                  top: 133.28,
                  left: 174.91 - 24, // Relative to parent
                  width: 3.38,
                  height: 5.59,
                  child: SvgPicture.string(
                    '''<svg width="4" height="6" viewBox="0 0 4 6" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0.834894 5.32068L2.9049 0.394081H0.193199C0.141959 0.394081 0.0928125 0.373733 0.0565805 0.337501C0.0203485 0.301269 0 0.252122 0 0.200882C0 0.149642 0.0203485 0.100506 0.0565805 0.0642741C0.0928125 0.028042 0.141959 0.00768303 0.193199 0.00768303H3.1602C3.19863 -0.00256101 3.23906 -0.00256101 3.27749 0.00768303C3.30197 0.0189383 3.32383 0.035187 3.34165 0.055388C3.35948 0.0755889 3.37289 0.0992942 3.38101 0.124982C3.38101 0.124982 3.38101 0.166379 3.38101 0.187079C3.38023 0.22641 3.36825 0.264708 3.34649 0.297482L1.1868 5.46559C1.17101 5.49866 1.14671 5.52694 1.11641 5.54755C1.0861 5.56816 1.05086 5.58035 1.0143 5.58288C0.98711 5.58961 0.958684 5.58961 0.931494 5.58288C0.88555 5.55915 0.850161 5.51907 0.832283 5.47054C0.814405 5.42202 0.815333 5.36855 0.834894 5.32068Z" fill="#F8F8F8"/>
</svg>''',
                  ),
                ),

                // Seventy-seventh Design Element (Small Light SVG)
                Positioned(
                  top: 133.25,
                  left: 179.46 - 24, // Relative to parent
                  width: 3.64,
                  height: 5.46,
                  child: SvgPicture.string(
                    '''<svg width="4" height="6" viewBox="0 0 4 6" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M1.8147 2.37335e-05C2.05148 0.00929423 2.27983 0.0904726 2.46931 0.232758C2.65879 0.375043 2.80042 0.571682 2.87535 0.796478C2.95028 1.02127 2.95496 1.26356 2.88874 1.49108C2.82253 1.7186 2.68856 1.92054 2.5047 2.07002C2.83845 2.20761 3.12401 2.44091 3.32538 2.74051C3.52676 3.04012 3.63495 3.39263 3.63631 3.75363C3.60779 4.21647 3.40382 4.651 3.06598 4.96865C2.72815 5.28631 2.28188 5.46317 1.81816 5.46317C1.35444 5.46317 0.908167 5.28631 0.570332 4.96865C0.232498 4.651 0.0285265 4.21647 0 3.75363C0.000222303 3.3942 0.106374 3.04281 0.305181 2.74337C0.503988 2.44393 0.786651 2.20973 1.11782 2.07002C0.971995 1.95932 0.853752 1.81639 0.772354 1.6524C0.690957 1.48841 0.648598 1.30781 0.648602 1.12473C0.657606 0.822109 0.784661 0.535015 1.00257 0.32484C1.22048 0.114666 1.51196 -0.00191229 1.8147 2.37335e-05ZM1.8147 5.22332C2.00311 5.22424 2.18982 5.18771 2.36398 5.11582C2.53814 5.04394 2.69627 4.93814 2.82917 4.8046C2.96208 4.67105 3.0671 4.51241 3.13814 4.33791C3.20919 4.16341 3.24484 3.97653 3.24301 3.78813C3.24301 3.50398 3.15865 3.22622 3.00064 2.99005C2.84263 2.75389 2.61808 2.56995 2.35543 2.46153C2.09278 2.35311 1.80386 2.32509 1.52527 2.38103C1.24668 2.43697 0.990966 2.57435 0.790527 2.77575C0.590088 2.97716 0.453944 3.23353 0.399348 3.51238C0.344753 3.79124 0.374165 4.08003 0.483851 4.34215C0.593536 4.60428 0.778557 4.82795 1.01548 4.98481C1.2524 5.14168 1.53056 5.22468 1.8147 5.22332ZM1.8147 1.95272C1.918 1.95182 2.02012 1.93058 2.11521 1.89022C2.2103 1.84985 2.2965 1.79115 2.36891 1.71746C2.44131 1.64378 2.49848 1.55655 2.53717 1.46077C2.57587 1.36498 2.59532 1.26252 2.59441 1.15922C2.59441 0.952429 2.51226 0.754112 2.36604 0.60789C2.21982 0.461668 2.02149 0.379526 1.8147 0.379526C1.60791 0.379526 1.40961 0.461668 1.26339 0.60789C1.11716 0.754112 1.035 0.952429 1.035 1.15922C1.03409 1.2631 1.05376 1.36612 1.09289 1.46236C1.13201 1.55859 1.18981 1.64612 1.26294 1.7199C1.33608 1.79367 1.42311 1.85224 1.519 1.8922C1.61489 1.93216 1.71773 1.95273 1.82161 1.95272H1.8147Z" fill="#F8F8F8"/>
</svg>''',
                  ),
                ),

                // Seventy-eighth Design Element (Small Light SVG)
                Positioned(
                  top: 133.22,
                  left: 189.37 - 24, // Relative to parent
                  width: 3.72,
                  height: 5.62,
                  child: SvgPicture.string(
                    '''<svg width="4" height="6" viewBox="0 0 4 6" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M1.88062 8.36138e-05C2.33433 -0.00298372 2.7732 0.161485 3.11316 0.461972C3.45311 0.762459 3.67024 1.17782 3.72291 1.62847C3.72416 1.64224 3.72416 1.65611 3.72291 1.66988C3.72291 1.82168 3.72291 1.98038 3.72291 2.15288C3.74106 2.93138 3.55807 3.70138 3.19161 4.38847C3.00217 4.7477 2.72114 5.0505 2.37702 5.26618C2.0329 5.48186 1.63791 5.60278 1.23202 5.61668C1.20664 5.61761 1.18133 5.61351 1.15754 5.60465C1.13374 5.59578 1.11192 5.58231 1.09334 5.56501C1.07475 5.54771 1.05976 5.52691 1.04922 5.50381C1.03868 5.48071 1.0328 5.45576 1.03191 5.43038C1.03099 5.4041 1.03525 5.37789 1.04446 5.35326C1.05367 5.32863 1.06766 5.30606 1.08561 5.28683C1.10355 5.26761 1.12509 5.25211 1.14903 5.24122C1.17297 5.23034 1.19883 5.22427 1.22511 5.22338C1.56238 5.21145 1.89054 5.11075 2.17645 4.93145C2.46236 4.75215 2.6959 4.5006 2.8535 4.20218C3.05124 3.85338 3.18668 3.47278 3.25371 3.07748C3.04889 3.31185 2.78841 3.49095 2.49625 3.5983C2.20408 3.70566 1.88962 3.73781 1.58178 3.69181C1.27393 3.64581 0.982623 3.52314 0.734606 3.33507C0.48659 3.147 0.289843 2.89957 0.162484 2.61556C0.0351247 2.33155 -0.0187595 2.02008 0.00577677 1.70979C0.030313 1.39949 0.132479 1.10035 0.302893 0.839884C0.473306 0.579419 0.706482 0.365999 0.980974 0.219246C1.25547 0.0724936 1.56247 -0.00287044 1.87371 8.36138e-05H1.88062ZM3.3503 1.84238C3.3503 1.55307 3.26452 1.27025 3.10379 1.02969C2.94305 0.789137 2.7146 0.601641 2.44731 0.490925C2.18002 0.380209 1.88589 0.351244 1.60214 0.407686C1.31838 0.464129 1.05773 0.603448 0.853158 0.808025C0.648581 1.0126 0.509262 1.27325 0.45282 1.55701C0.396377 1.84076 0.425343 2.13487 0.536058 2.40216C0.646774 2.66946 0.83427 2.89792 1.07483 3.05865C1.31538 3.21939 1.59819 3.30518 1.8875 3.30518C2.07986 3.30609 2.27049 3.26888 2.44838 3.19569C2.62627 3.1225 2.78788 3.01479 2.92389 2.87877C3.05991 2.74276 3.16764 2.58114 3.24083 2.40325C3.31401 2.22536 3.35122 2.03474 3.3503 1.84238Z" fill="#F8F8F8"/>
</svg>''',
                  ),
                ),

                // Seventy-ninth Design Element (Small Light SVG)
                Positioned(
                  top: 133.2,
                  left: 194.53 - 24, // Relative to parent
                  width: 3.85,
                  height: 5.61,
                  child: SvgPicture.string(
                    '''<svg width="4" height="6" viewBox="0 0 4 6" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0.000961773 2.8152C-0.0151685 2.12125 0.171902 1.43772 0.539161 0.848697C0.681646 0.604651 0.882127 0.399516 1.12284 0.251475C1.36356 0.103434 1.63708 0.0170615 1.91916 0C2.19986 0.0192382 2.4718 0.105774 2.712 0.252296C2.9522 0.398818 3.1536 0.601018 3.29916 0.841801C3.66706 1.42864 3.85867 2.10881 3.85117 2.8014C3.85976 3.49223 3.67321 4.17146 3.31297 4.761C3.16911 5.00384 2.96829 5.20802 2.72786 5.35589C2.48743 5.50376 2.21461 5.59086 1.93297 5.60969C1.65154 5.59336 1.37844 5.50803 1.13777 5.36123C0.89711 5.21442 0.696284 5.01066 0.552974 4.7679C0.184187 4.184 -0.00755417 3.50576 0.000961773 2.8152ZM0.394267 2.8152C0.385981 3.42902 0.553592 4.03238 0.877275 4.55399C0.983394 4.7509 1.13788 4.91756 1.32619 5.03828C1.5145 5.15899 1.73044 5.22978 1.95367 5.24399C2.17424 5.22327 2.38656 5.14975 2.57271 5.02965C2.75886 4.90955 2.91337 4.7464 3.02316 4.55399C3.33147 4.03141 3.49409 3.43575 3.49409 2.82899C3.49409 2.22224 3.33147 1.62658 3.02316 1.10399C2.92397 0.90322 2.77061 0.734191 2.5804 0.616005C2.39018 0.497819 2.17071 0.435188 1.94677 0.435188C1.72283 0.435188 1.50335 0.497819 1.31314 0.616005C1.12292 0.734191 0.96956 0.90322 0.870369 1.10399C0.556073 1.61668 0.39118 2.20695 0.394267 2.80829V2.8152Z" fill="#F8F8F8"/>
</svg>''',
                  ),
                ),

                // Eightieth Design Element (Small Light SVG)
                Positioned(
                  top: 133.16,
                  left: 199.92 - 24, // Relative to parent
                  width: 1.46,
                  height: 5.59,
                  child: SvgPicture.string(
                    '''<svg width="2" height="6" viewBox="0 0 2 6" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M1.08698 0.601187L0.29348 1.07038C0.261764 1.07827 0.228587 1.07827 0.19687 1.07038C0.162957 1.07159 0.129404 1.06316 0.100092 1.04606C0.0707797 1.02896 0.0469178 1.0039 0.0312771 0.973782C0.0167735 0.952551 0.00699373 0.928452 0.0026184 0.903115C-0.00175693 0.877778 -0.000640226 0.851795 0.00590331 0.82693C0.0124469 0.802065 0.0242621 0.778901 0.0405423 0.759C0.0568225 0.739098 0.0772059 0.722931 0.100281 0.71159L1.18357 0.0215895C1.22876 -0.00130053 1.28095 -0.00619473 1.32962 0.00789179C1.37828 0.0219783 1.41979 0.0539973 1.44577 0.0974899C1.46207 0.144415 1.46207 0.195459 1.44577 0.242384V5.39669C1.44577 5.44793 1.42542 5.49707 1.38919 5.5333C1.35296 5.56954 1.30381 5.58988 1.25257 5.58988C1.20188 5.58816 1.15373 5.56726 1.11787 5.5314C1.082 5.49553 1.06109 5.44738 1.05937 5.39669L1.08698 0.601187Z" fill="#F8F8F8"/>
</svg>''',
                  ),
                ),

                // Eighty-first Design Element (Small Light SVG)
                Positioned(
                  top: 133.19,
                  left: 202.69 - 24, // Relative to parent
                  width: 3.57,
                  height: 5.67,
                  child: SvgPicture.string(
                    '''<svg width="4" height="6" viewBox="0 0 4 6" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0.0901746 5.2647L2.70526 2.8911C2.91876 2.69522 3.0683 2.43957 3.1344 2.15746C3.2005 1.87536 3.18011 1.57988 3.07584 1.30954C2.97158 1.03921 2.78831 0.806548 2.5499 0.641884C2.31149 0.477221 2.029 0.388191 1.73926 0.386398C1.37809 0.386588 1.02949 0.519154 0.759454 0.759004L0.490365 1.0074C0.472902 1.02666 0.451593 1.04204 0.427826 1.05257C0.404059 1.0631 0.378352 1.06854 0.352357 1.06854C0.326362 1.06854 0.300655 1.0631 0.276888 1.05257C0.253121 1.04204 0.231833 1.02666 0.21437 1.0074C0.19601 0.989416 0.181412 0.96794 0.171455 0.944244C0.161498 0.920548 0.156378 0.895099 0.156378 0.869396C0.156378 0.843693 0.161498 0.818255 0.171455 0.794559C0.181412 0.770863 0.19601 0.749387 0.21437 0.731398L0.490365 0.476102C0.833029 0.172199 1.27435 0.00301896 1.73236 0C2.21501 0.00358513 2.67699 0.196435 3.01893 0.537083C3.36087 0.877731 3.55546 1.33897 3.56087 1.8216C3.56402 2.08034 3.51283 2.33686 3.41061 2.57457C3.30839 2.81228 3.15742 3.0259 2.96746 3.2016L0.724963 5.2716H3.38147C3.43277 5.275 3.48096 5.29738 3.51667 5.33437C3.55239 5.37136 3.57307 5.42031 3.57467 5.4717C3.57295 5.5224 3.55204 5.57054 3.51617 5.60641C3.4803 5.64227 3.43216 5.66318 3.38147 5.6649H0.221255C0.194512 5.66713 0.167621 5.66332 0.142544 5.65376C0.117466 5.64421 0.0948473 5.62916 0.0763611 5.6097C0.0512709 5.588 0.0313897 5.56093 0.0182013 5.53049C0.00501287 5.50005 -0.00114949 5.46702 0.000176394 5.43388C0.00150227 5.40073 0.0102886 5.36831 0.0258661 5.33902C0.0414436 5.30974 0.0634312 5.28433 0.0901746 5.2647Z" fill="#F8F8F8"/>
</svg>''',
                  ),
                ),

                // Eighty-second Design Element (Small Light SVG)
                Positioned(
                  top: 133.16,
                  left: 212.47 - 24, // Relative to parent
                  width: 3.36,
                  height: 5.67,
                  child: SvgPicture.string(
                    '''<svg width="4" height="6" viewBox="0 0 4 6" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M3.2356 0.352035L1.78659 1.84933C2.15094 1.91758 2.48566 2.09577 2.7457 2.35993C2.9348 2.53337 3.0869 2.74324 3.19287 2.97693C3.29884 3.21063 3.35649 3.46333 3.36236 3.71986C3.36823 3.97639 3.32218 4.23146 3.22701 4.46976C3.13183 4.70805 2.98949 4.92465 2.80852 5.10655C2.62754 5.28846 2.41166 5.43191 2.17385 5.52831C1.93605 5.6247 1.68124 5.67205 1.42468 5.6675C1.16813 5.66295 0.915117 5.6066 0.680882 5.50183C0.446648 5.39706 0.236003 5.24604 0.0615921 5.05783C0.0421578 5.03975 0.0266653 5.01786 0.0160666 4.99352C0.00546792 4.96918 0 4.94292 0 4.91638C0 4.88983 0.00546792 4.86357 0.0160666 4.83923C0.0266653 4.8149 0.0421578 4.79301 0.0615921 4.77493C0.0999452 4.73903 0.150523 4.71906 0.203054 4.71906C0.255585 4.71906 0.306142 4.73903 0.344495 4.77493C0.625173 5.05357 1.00469 5.20984 1.40019 5.20963C1.79818 5.2054 2.17904 5.04712 2.4628 4.76803C2.60316 4.62902 2.71447 4.46348 2.79028 4.28106C2.86609 4.09864 2.9049 3.90298 2.90441 3.70543C2.90633 3.5087 2.86816 3.31364 2.79224 3.13214C2.71632 2.95064 2.60422 2.78651 2.4628 2.64974C2.32426 2.50875 2.15882 2.39702 1.9763 2.32116C1.79377 2.2453 1.59785 2.20686 1.40019 2.20813C1.33945 2.20437 1.28256 2.17716 1.24151 2.13224C1.22188 2.11355 1.20626 2.09107 1.19558 2.06616C1.18491 2.04125 1.17941 2.01443 1.17941 1.98733C1.17941 1.96023 1.18491 1.93341 1.19558 1.9085C1.20626 1.8836 1.22188 1.86112 1.24151 1.84243L2.62151 0.400329H0.475596C0.422527 0.400329 0.37164 0.379253 0.334113 0.341727C0.296587 0.304201 0.27549 0.253304 0.27549 0.200234C0.274524 0.173696 0.279042 0.147237 0.288756 0.122533C0.298471 0.0978186 0.313189 0.0753696 0.331966 0.0565925C0.350743 0.0378154 0.373181 0.0231079 0.397896 0.0133938C0.42261 0.00367967 0.449059 -0.000838151 0.475596 0.000127812H3.09761C3.15068 0.000127812 3.20157 0.0212143 3.23909 0.0587403C3.27662 0.0962664 3.29769 0.147164 3.29769 0.200234C3.30768 0.229299 3.30768 0.260861 3.29769 0.289927C3.28246 0.315452 3.26112 0.336799 3.2356 0.352035Z" fill="#F8F8F8"/>
</svg>''',
                  ),
                ),

                // Eighty-third Design Element (Small Light SVG)
                Positioned(
                  top: 133.18,
                  left: 217.17 - 24, // Relative to parent
                  width: 4.21,
                  height: 5.60,
                  child: SvgPicture.string(
                    '''<svg width="5" height="6" viewBox="0 0 5 6" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M3.26234 4.41879H0.184945C0.139713 4.42184 0.0951012 4.40697 0.0607498 4.37739C0.0416605 4.36055 0.0263702 4.33985 0.0158981 4.31665C0.00542602 4.29345 0 4.26828 0 4.24283C0 4.21738 0.00542602 4.19223 0.0158981 4.16903C0.0263702 4.14583 0.0416605 4.12512 0.0607498 4.10829L3.29685 0.0579913C3.31484 0.0396319 3.33631 0.0250447 3.36 0.0150874C3.3837 0.0051302 3.40914 0 3.43484 0C3.46054 0 3.486 0.0051302 3.5097 0.0150874C3.53339 0.0250447 3.55486 0.0396319 3.57285 0.0579913C3.59833 0.0868548 3.61926 0.119427 3.63494 0.154591C3.6335 0.166046 3.6335 0.177628 3.63494 0.189082V4.05998H4.01444C4.06633 4.05995 4.11623 4.08009 4.15356 4.11613C4.19089 4.15218 4.21275 4.20132 4.21454 4.25318C4.21456 4.27914 4.20935 4.30484 4.19921 4.32875C4.18907 4.35265 4.17422 4.37426 4.15554 4.3923C4.13686 4.41033 4.11474 4.42441 4.09049 4.4337C4.06625 4.443 4.04038 4.44732 4.01444 4.44639H3.63494V5.40549C3.63496 5.43145 3.62975 5.45715 3.61961 5.48105C3.60948 5.50496 3.59462 5.52656 3.57594 5.54459C3.55726 5.56263 3.53514 5.57672 3.5109 5.58601C3.48665 5.59531 3.46078 5.59962 3.43484 5.59869C3.38477 5.59872 3.33666 5.57932 3.30062 5.54456C3.26458 5.50981 3.24343 5.46242 3.24164 5.41239L3.26234 4.41879ZM3.26234 4.03239V0.747991L0.619648 4.03928L3.26234 4.03239Z" fill="#F8F8F8"/>
</svg>''',
                  ),
                ),

                // Eighty-fourth Design Element (Small Light SVG)
                Positioned(
                  top: 133.17,
                  left: 222.59 - 24, // Relative to parent
                  width: 3.31,
                  height: 5.61,
                  child: SvgPicture.string(
                    '''<svg width="4" height="6" viewBox="0 0 4 6" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0.0579913 5.0232C0.0396319 5.00521 0.0250552 4.98375 0.015098 4.96005C0.00514073 4.93635 0 4.9109 0 4.8852C0 4.8595 0.00514073 4.83405 0.015098 4.81035C0.0250552 4.78666 0.0396319 4.76519 0.0579913 4.7472C0.0766802 4.72758 0.0991608 4.71195 0.124069 4.70128C0.148976 4.6906 0.175808 4.6851 0.202907 4.6851C0.230005 4.6851 0.256816 4.6906 0.281723 4.70128C0.306631 4.71195 0.329112 4.72758 0.347801 4.7472C0.633347 5.02186 1.01421 5.17519 1.41041 5.175C1.79085 5.14919 2.14727 4.97985 2.40761 4.70125C2.66795 4.42264 2.81277 4.05556 2.81277 3.67425C2.81277 3.29293 2.66795 2.92585 2.40761 2.64725C2.14727 2.36864 1.79085 2.19931 1.41041 2.1735C1.0089 2.17705 0.624835 2.33811 0.340894 2.622C0.322905 2.64036 0.30144 2.65495 0.277744 2.66491C0.254047 2.67486 0.22861 2.67998 0.202907 2.67998C0.177203 2.67998 0.151745 2.67486 0.128048 2.66491C0.104352 2.65495 0.0828866 2.64036 0.0648981 2.622C0.0412518 2.60847 0.0238915 2.58616 0.016593 2.5599C0.00919908 2.53986 0.00919908 2.51784 0.016593 2.4978C0.016593 2.4978 0.016593 2.4978 0.016593 2.4564L0.285703 0.193199C0.286731 0.164145 0.2948 0.135781 0.309224 0.110539C0.323648 0.0852978 0.343991 0.0639411 0.3685 0.0483051C0.402529 0.0174425 0.446756 0.00023608 0.492695 0H3.1078C3.16087 0 3.21176 0.0210865 3.24928 0.0586125C3.28681 0.0961385 3.30791 0.147026 3.30791 0.200095C3.30887 0.226633 3.30435 0.253092 3.29464 0.277807C3.28493 0.302521 3.27021 0.324959 3.25143 0.343737C3.23265 0.362514 3.21022 0.377221 3.1855 0.386935C3.16079 0.396649 3.13434 0.401167 3.1078 0.400201H0.665195L0.465089 2.07C0.756687 1.90101 1.08719 1.81066 1.4242 1.8078C1.67276 1.80658 1.91909 1.85475 2.14888 1.94951C2.37867 2.04427 2.58735 2.18373 2.7628 2.3598C3.11429 2.71947 3.31107 3.2024 3.31107 3.7053C3.31107 4.20819 3.11429 4.69113 2.7628 5.05081C2.40443 5.40556 1.92154 5.60613 1.41729 5.6097C1.16298 5.60803 0.911593 5.55523 0.678082 5.45448C0.444571 5.35373 0.233698 5.20706 0.0579913 5.0232Z" fill="#F8F8F8"/>
</svg>''',
                  ),
                ),

                // Eighty-fifth Design Element (Small Light SVG)
                Positioned(
                  top: 133.13,
                  left: 227.46 - 24, // Relative to parent
                  width: 3.69,
                  height: 5.61,
                  child: SvgPicture.string(
                    '''<svg width="4" height="6" viewBox="0 0 4 6" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0.525374 1.22144C0.714608 0.861123 0.996693 0.557905 1.34243 0.343183C1.68817 0.128461 2.08501 0.0100326 2.49188 0.000141258C2.54199 -0.00177537 2.59088 0.0158732 2.62822 0.0493518C2.66556 0.0828303 2.68842 0.129511 2.69196 0.179537C2.69221 0.232857 2.67255 0.284347 2.63681 0.323916C2.60107 0.363484 2.55183 0.388276 2.49876 0.393436C2.15927 0.403412 1.82864 0.504001 1.54111 0.684772C1.25357 0.865542 1.0196 1.11992 0.863467 1.42154C0.671188 1.77216 0.538286 2.1522 0.470162 2.54624C0.754216 2.22562 1.14113 2.014 1.56433 1.94778C1.98754 1.88156 2.4206 1.96488 2.78902 2.18341C3.15743 2.40194 3.43817 2.74201 3.58297 3.14515C3.72778 3.54829 3.72757 3.98927 3.58241 4.39228C3.43724 4.79483 3.15618 5.13511 2.78756 5.35331C2.41895 5.5715 1.98583 5.65442 1.56269 5.58782C1.13955 5.52122 0.752831 5.30925 0.469067 4.98836C0.185303 4.66748 0.0222222 4.25776 0.00787357 3.82964C-0.00262452 3.70567 -0.00262452 3.58102 0.00787357 3.45704C-0.00761056 2.68046 0.170223 1.91223 0.525374 1.22144ZM0.401179 3.78823C0.397362 3.82263 0.397362 3.85735 0.401179 3.89174C0.405096 3.90993 0.405096 3.92875 0.401179 3.94694C0.426261 4.33671 0.601954 4.70143 0.891115 4.96398C1.18028 5.22653 1.56021 5.36631 1.95058 5.35376C2.34095 5.34121 2.71114 5.17732 2.98285 4.89674C3.25455 4.61617 3.40647 4.24091 3.40647 3.85034C3.40647 3.45977 3.25455 3.08451 2.98285 2.80393C2.71114 2.52335 2.34095 2.35946 1.95058 2.34692C1.56021 2.33437 1.18028 2.47416 0.891115 2.7367C0.601954 2.99925 0.426261 3.36398 0.401179 3.75374V3.78823Z" fill="#F8F8F8"/>
</svg>''',
                  ),
                ),

                // Eighty-sixth Design Element (Dark Line)
                Positioned(
                  top: 148.45,
                  left: 144.28 - 24, // Relative to parent
                  child: Transform.rotate(
                    angle: 0.15 * math.pi / 180,
                    child: Container(
                      width: 48.93,
                      height: 2.41,
                      decoration: BoxDecoration(
                        color: const Color(0xFF37474F),
                        borderRadius: BorderRadius.circular(1.2), // Optional but good for thin lines
                      ),
                    ),
                  ),
                ),

                // Eighty-seventh Design Element (Dark Line)
                Positioned(
                  top: 154.3,
                  left: 143.89 - 24, // Relative to parent
                  child: Container(
                    width: 34.64,
                    height: 2.41,
                    decoration: BoxDecoration(
                      color: const Color(0xFF37474F),
                      borderRadius: BorderRadius.circular(1.2),
                    ),
                  ),
                ),

                // Eighty-eighth Design Element (Large Container)
                Positioned(
                  top: 74.89,
                  left: 42.98 - 24, // Relative to parent
                  width: 195.73,
                  height: 238.93,
                  child: Container(
                    decoration: BoxDecoration(
                      // User didn't specify color/decoration, using a placeholder or making it empty for now
                      // but usually these large containers in this project have some style.
                      // Given previous patterns, I'll keep it as a transparent container or check if user meant an image/svg.
                      // Since no SVG was provided, I'll just add the container structure.
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),

                // Eighty-ninth Design Element (Reddish SVG)
                Positioned(
                  top: 85.31,
                  left: 114.1 - 24, // Relative to parent
                  width: 18.78,
                  height: 24.06,
                  child: SvgPicture.string(
                    '''<svg width="19" height="25" viewBox="0 0 19 25" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M18.6508 11.7193C19.7479 21.9382 13.7518 23.7529 11.5438 23.9806C9.54283 24.1945 2.70493 24.6706 0.559029 14.6104C-1.58687 4.55021 2.82223 0.810409 7.37623 0.120409C11.9302 -0.569591 17.5606 1.50041 18.6508 11.7193Z" fill="#AD6359"/>
</svg>''',
                  ),
                ),


                // Ninetieth Design Element (Tiny Dark SVG) - MOVED TO FOREGROUND
                Positioned(
                  top: 95.0,
                  left: 123.2 - 24, // Relative to parent
                  width: 1.86,
                  height: 1.16,
                  child: SvgPicture.string(
                    '''<svg width="2" height="2" viewBox="0 0 2 2" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0.401413 1.15967C0.642913 1.11827 0.856813 1.04927 1.09141 0.987168C1.34967 0.963758 1.59262 0.854433 1.78141 0.67667C1.83011 0.612051 1.85645 0.533337 1.85645 0.452422C1.85645 0.371507 1.83011 0.292783 1.78141 0.228164C1.661 0.121807 1.51461 0.0491942 1.35707 0.0176871C1.19953 -0.0138201 1.03646 -0.00309699 0.884411 0.0487674C0.557689 0.108958 0.265021 0.288489 0.0633093 0.552464C0.024435 0.612414 0.00262309 0.681823 0.000222094 0.753234C-0.00217891 0.824644 0.0149256 0.895357 0.0496853 0.957783C0.084445 1.02021 0.135548 1.07199 0.197517 1.10756C0.259485 1.14313 0.329978 1.16114 0.401413 1.15967Z" fill="#263238"/>
</svg>''',
                  ),
                ),
                

                // Ninety-first Design Element (Tiny Dark SVG) - MOVED TO FOREGROUND
                Positioned(
                  top: 94.57,
                  left: 129.24 - 24, // Relative to parent
                  width: 1.90,
                  height: 1.11,
                  child: SvgPicture.string(
                    '''<svg width="2" height="2" viewBox="0 0 2 2" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M1.45504 1.10152C1.21354 1.10152 0.992737 1.02562 0.765037 0.984225C0.512713 0.973846 0.270578 0.881831 0.0750371 0.722021C0.0263383 0.657402 0 0.578688 0 0.497773C0 0.416859 0.0263383 0.338145 0.0750371 0.273526C0.188479 0.157691 0.330787 0.0742335 0.487262 0.0317792C0.643736 -0.0106752 0.808711 -0.0105913 0.965143 0.0320213C1.29357 0.0670559 1.59667 0.224767 1.81384 0.473621C1.86393 0.53414 1.89438 0.608484 1.90113 0.686751C1.90789 0.765017 1.89063 0.843486 1.85166 0.911693C1.81268 0.979901 1.75384 1.03461 1.68298 1.06853C1.61212 1.10244 1.53261 1.11395 1.45504 1.10152Z" fill="#263238"/>
</svg>''',
                  ),
                ),
                

                // Ninety-fourth Design Element (Small Dark SVG) - MOVED TO FOREGROUND
                Positioned(
                  top: 97.98,
                  left: 123.56 - 24, // Relative to parent
                  width: 1.56,
                  height: 2.26,
                  child: SvgPicture.string(
                    '''<svg width="2" height="3" viewBox="0 0 2 3" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0.829734 0C-0.294966 0 -0.246668 2.2356 0.795232 2.2563C1.83713 2.277 1.77503 0.0414 0.829734 0Z" fill="#263238"/>
</svg>''',
                  ),
                ),
                

                // Ninety-fifth Design Element (Tiny Dark SVG) - MOVED TO FOREGROUND
                Positioned(
                  top: 98.1,
                  left: 122.61 - 24, // Relative to parent
                  width: 1.47,
                  height: 0.93,
                  child: SvgPicture.string(
                    '''<svg width="2" height="1" viewBox="0 0 2 1" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M1.3386 0.0276059C1.1454 0.158706 0.959102 0.3933 0.724502 0.4209C0.489902 0.4485 0.234602 0.2208 0.0345021 0H0C0 0.4278 0.179405 0.869408 0.641705 0.924608C1.10401 0.979808 1.33171 0.586505 1.46281 0.144905C1.49041 0.0966046 1.4214 -0.0206941 1.3386 0.0276059Z" fill="#263238"/>
</svg>''',
                  ),
                ),
                

                // Ninety-sixth Design Element (Tiny Dark SVG) - MOVED TO FOREGROUND
                Positioned(
                  top: 98.67,
                  left: 124.41 - 24, // Relative to parent
                  width: 0.73,
                  height: 1.86,
                  child: SvgPicture.string(
                    '''<svg width="1" height="2" viewBox="0 0 1 2" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0.648602 0C0.648602 0 0.600297 0.0344975 0.600297 0.0620975C0.662397 0.752097 0.6003 1.5732 0 1.8423C0.7728 1.7526 0.821102 0.69 0.648602 0Z" fill="#263238"/>
</svg>''',
                  ),
                ),
                

                // Ninety-eighth Design Element (Tiny Dark SVG) - MOVED TO FOREGROUND
                Positioned(
                  top: 97.5,
                  left: 130.43 - 24, // Relative to parent
                  width: 1.30,
                  height: 1.00,
                  child: SvgPicture.string(
                    '''<svg width="2" height="1" viewBox="0 0 2 1" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0.108304 0.1725C0.294604 0.2829 0.480908 0.489901 0.694808 0.496801C0.908708 0.503701 1.10881 0.2415 1.25371 0C1.25371 0 1.2537 0 1.2951 0C1.2951 0.4278 1.2054 0.883195 0.798304 0.986695C0.391204 1.09019 0.108308 0.731395 0.00480789 0.296695C-0.0158921 0.255295 0.0324037 0.1311 0.108304 0.1725Z" fill="#263238"/>
</svg>''',
                  ),
                ),
                

                // Ninety-ninth Design Element (Tiny Dark SVG) - MOVED TO FOREGROUND
                Positioned(
                  top: 98.28,
                  left: 129.4 - 24, // Relative to parent
                  width: 0.83,
                  height: 1.83,
                  child: SvgPicture.string(
                    '''<svg width="1" height="2" viewBox="0 0 1 2" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0.0408278 0C0.0408278 0 0.0960291 0.0344975 0.0960291 0.0620975C0.0960291 0.752097 0.185727 1.56629 0.827427 1.79399C0.827427 1.79399 0.827427 1.8354 0.827427 1.8285C0.0477274 1.7664 -0.0833722 0.6624 0.0408278 0Z" fill="#263238"/>
</svg>''',
                  ),
                ),
                

                // Ninety-second Design Element (Dark SVG Shape) - MOVED TO FOREGROUND
                Positioned(
                  top: 94.62,
                  left: 125.93 - 24, // Relative to parent
                  width: 3.61,
                  height: 8.48,
                  child: SvgPicture.string(
                    '''<svg width="4" height="9" viewBox="0 0 4 9" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M2.41082 6.80842C2.41082 6.80842 2.59021 7.84343 2.61091 8.34023C2.61091 8.38163 2.49361 8.40922 2.32111 8.42302C1.90053 8.51537 1.46258 8.48947 1.05581 8.3482C0.64904 8.20692 0.289323 7.95578 0.016517 7.62262C-0.024883 7.58122 0.0165212 7.52603 0.0855212 7.55363C0.727408 7.96438 1.48528 8.15566 2.24521 8.09872C2.24521 7.96072 1.87952 6.32542 1.95542 6.31852C2.34061 6.33781 2.72135 6.40979 3.08701 6.53243C2.77652 4.35893 2.12101 2.24753 1.84501 0.0740275C1.84501 -0.00187247 1.94852 -0.0294746 1.96922 0.0395254C2.74359 2.27908 3.29143 4.59065 3.60451 6.93953C3.65971 7.22933 2.63162 6.89122 2.41082 6.80842Z" fill="#263238"/>
</svg>''',
                  ),
                ),
                

                // Ninety-third Design Element (Tiny Dark SVG) - MOVED TO FOREGROUND
                Positioned(
                  top: 104.04,
                  left: 125.43 - 24, // Relative to parent
                  width: 1.45,
                  height: 0.69,
                  child: SvgPicture.string(
                    '''<svg width="2" height="1" viewBox="0 0 2 1" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0.0897034 0.0143575C0.255303 0.179957 0.420901 0.407658 0.669301 0.435258C0.930006 0.436953 1.18831 0.385293 1.42831 0.283457C1.42831 0.283457 1.46971 0.283459 1.42831 0.317959C1.32439 0.452342 1.18641 0.556481 1.02868 0.619571C0.870958 0.682661 0.699231 0.702407 0.531303 0.676762C0.38945 0.636156 0.263011 0.553977 0.16831 0.440827C0.0736085 0.327678 0.0149872 0.188751 0 0.0419634C0.0138 0.000563355 0.0690034 -0.0132425 0.0897034 0.0143575Z" fill="#263238"/>
</svg>''',
                  ),
                ),
                

                // One Hundred and Forty-eighth Design Element (Dark SVG Shape)
                Positioned(
                  top: 151.46,
                  left: 63.64 - 24, // Relative to parent
                  width: 33.12,
                  height: 102.78,
                  child: SvgPicture.string(
                    '''<svg width="34" height="103" viewBox="0 0 34 103" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M32.9624 0.0246903C29.0261 4.88626 26.8389 10.9302 26.7524 17.185C26.7291 18.8317 26.8445 20.4774 27.0974 22.1047C27.4236 23.894 27.5852 25.7093 27.5804 27.5281C27.4655 29.4141 27.2119 31.2891 26.8214 33.1378C26.4764 35.0008 26.1176 36.8592 25.745 38.713C25.009 42.393 24.2247 46.0592 23.3921 49.7116C22.571 53.3341 21.7706 56.9773 20.7701 60.5515C19.8879 63.9938 18.4624 67.2734 16.5473 70.2667C14.6912 73.3648 12.8903 76.4767 11.2619 79.699C9.55989 83.08 7.87168 86.4725 6.19728 89.8765C5.36928 91.5532 4.55508 93.2368 3.73398 94.9204C2.91288 96.604 2.01588 98.3152 1.22238 100.075C0.835983 100.951 0.428881 101.807 0.00798145 102.669C-0.0334185 102.752 0.0976831 102.828 0.139083 102.738C1.00848 101.041 1.93998 99.3847 2.82318 97.6942C3.70638 96.0037 4.54128 94.3753 5.40378 92.7124C7.13568 89.359 8.85378 85.9849 10.5374 82.6108C12.221 79.2367 13.8494 76.0282 15.7469 72.868C17.5478 69.8803 19.3556 66.9409 20.4872 63.622C21.6188 60.3031 22.4192 56.6392 23.2472 53.1271C24.112 49.4839 24.9239 45.8246 25.6829 42.1492C26.4557 38.4646 27.2354 34.7662 27.8357 31.0471C28.1549 29.293 28.2614 27.5068 28.1531 25.7272C28.0082 23.9056 27.6149 22.1185 27.4631 20.3038C26.8536 13.9219 28.3775 7.51801 31.7963 2.09469C32.2172 1.40469 32.645 0.76299 33.1073 0.12129C33.1487 0.0453899 33.0245 -0.0443097 32.9624 0.0246903Z" fill="#263238"/>
</svg>''',
                ),
                ),

                // One Hundred and Fiftieth Design Element (Dark SVG Shape)
                Positioned(
                  top: 155.97,
                  left: 93.79 - 24, // Relative to parent
                  width: 10.61,
                  height: 8.89,
                  child: SvgPicture.string(
                    '''<svg width="11" height="9" viewBox="0 0 11 9" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M10.4 0.0604732C9.88772 2.22954 8.67526 4.16948 6.95003 5.58047C5.03585 7.07962 2.72744 7.99051 0.305325 8.20247C-0.101775 8.25766 -0.101775 8.89246 0.305325 8.89246C5.25952 8.69236 10.1171 5.30447 10.607 0.129467C10.5794 -0.0292331 10.4 -0.0292268 10.4 0.0604732Z" fill="#263238"/>
</svg>''',
                  ),
                ),
                
                // One Hundred and Thirtieth Design Element (Orange SVG Shape)
                Positioned(
                  top: 111.63,
                  left: 87.1 - 24, // Relative to parent
                  width: 46.8,
                  height: 49.9,
                  child: SvgPicture.string(
                    '''<svg width="47" height="50" viewBox="0 0 47 50" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M43.4562 31.9776L43.6632 49.9176C43.6632 49.9176 7.6245 45.9846 0 44.1216C0 44.1216 13.5378 14.4861 24.9573 2.28689C30.0909 -1.99111 34.9416 0.430792 37.9776 3.86009C38.7297 4.71569 46.6164 18.6123 46.7958 23.5182C46.9476 27.8376 43.4562 31.9776 43.4562 31.9776Z" fill="#FFA143"/>
</svg>''',
                  ),
                ),
                


                // One Hundred and Fifty-second Design Element (Dark SVG Shape)
                Positioned(
                  top: 156.58,
                  left: 118.97 - 24, // Relative to parent
                  width: 5.98,
                  height: 14.18,
                  child: SvgPicture.string(
                    '''<svg width="6" height="15" viewBox="0 0 6 15" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M5.87104 0.0496102C5.66404 1.20191 5.38114 2.33351 5.13274 3.49961C4.88434 4.66571 4.73254 5.65931 4.44274 6.71501C4.21024 7.73836 3.69085 8.67423 2.94544 9.41292C2.52454 9.80622 2.06224 10.1512 1.61374 10.51C1.37224 10.7032 1.11004 10.8826 0.86164 11.0827C0.86164 10.9309 0.923744 10.7722 0.951344 10.6204C1.02724 10.1857 1.09624 9.75101 1.17214 9.31631C1.33084 8.3503 1.48954 7.37741 1.63444 6.41141C1.92424 4.50701 2.19334 2.58881 2.59354 0.705108C2.59354 0.629208 2.49004 0.594708 2.47624 0.705108C2.00014 2.57501 1.47575 4.42421 1.06175 6.30101C0.861646 7.22561 0.137143 11.821 0.109543 12.1108C0.0819427 12.4006 0.0474422 12.8008 0.0336422 13.1113C-0.0112141 13.4502 -0.0112141 13.7936 0.0336422 14.1325C0.0400832 14.1473 0.0506929 14.1599 0.0641751 14.1687C0.0776573 14.1775 0.0934263 14.1822 0.109543 14.1822C0.125659 14.1822 0.141428 14.1775 0.15491 14.1687C0.168392 14.1599 0.179002 14.1473 0.185443 14.1325C0.323504 13.8172 0.420885 13.4857 0.475242 13.1458C0.558042 12.8215 0.63394 12.4903 0.68914 12.1591C0.68914 12.0418 0.730541 11.9176 0.744341 11.7934C1.19284 11.5243 1.61374 11.1655 2.03464 10.855C2.45554 10.5445 2.94544 10.2133 3.37324 9.85451C4.16475 9.18629 4.73495 8.29369 5.00854 7.29461C5.28441 6.22015 5.46452 5.12336 5.54675 4.01711C5.69165 2.71991 5.79514 1.42271 5.98144 0.132407C6.00214 -0.00559322 5.91934 -0.0400898 5.87104 0.0496102Z" fill="#263238"/>
</svg>''',
                  ),
                ),
                
                // One Hundred and Thirty-first Design Element (Reddish Brown SVG)
                Positioned(
                  top: 101.57,
                  left: 116.35 - 24, // Relative to parent
                  width: 8.77,
                  height: 16.43,
                  child: SvgPicture.string(
                    '''<svg width="9" height="17" viewBox="0 0 9 17" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0.018155 11.592C0.190655 12.282 3.46815 16.6152 6.59385 16.422C7.60125 16.3599 7.49086 10.833 7.49086 10.833L7.58056 10.4259L8.76736 4.692L1.98466 0.552002L1.00486 0C1.00486 0 0.784059 1.587 0.528759 3.5673C0.528759 3.6639 0.528759 3.7536 0.528759 3.8502C0.528759 3.9468 0.494264 4.071 0.480464 4.1745C0.439064 4.4712 0.397655 4.7748 0.363155 5.0715C0.328655 5.3682 0.307955 5.5269 0.287255 5.7615C0.266555 5.9961 0.238954 6.23761 0.211354 6.48601C0.0292737 8.18151 -0.0352796 9.88758 0.018155 11.592Z" fill="#AD6359"/>
</svg>''',
                  ),
                ),
                

                // One Hundred and Thirty-second Design Element (Reddish Brown SVG)
                Positioned(
                  top: 98.37,
                  left: 112.17 - 24, // Relative to parent
                  width: 4.91,
                  height: 6.32,
                  child: SvgPicture.string(
                    '''<svg width="5" height="7" viewBox="0 0 5 7" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M4.27558 2.47051C4.27558 2.47051 1.97099 -0.689694 0.528888 0.138306C-0.913212 0.966306 0.866988 5.58241 2.59889 6.18271C2.81452 6.27428 3.04637 6.3215 3.28063 6.32157C3.5149 6.32165 3.74679 6.27456 3.96247 6.18313C4.17816 6.09171 4.37325 5.95781 4.5361 5.78941C4.69895 5.621 4.82624 5.42155 4.91038 5.20291L4.27558 2.47051Z" fill="#AD6359"/>
</svg>''',
                  ),
                ),
                

                // One Hundred and Thirty-third Design Element (Dark SVG Shape)
                Positioned(
                  top: 99.82,
                  left: 113.23 - 24, // Relative to parent
                  width: 2.91,
                  height: 3.92,
                  child: SvgPicture.string(
                    '''<svg width="3" height="4" viewBox="0 0 3 4" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0.0153333 0C0.0153333 0 -0.0191667 0.0344983 0.0153333 0.0413983C1.22283 0.503698 1.87144 1.6008 2.34064 2.7462C2.26796 2.62818 2.17074 2.5272 2.05558 2.45008C1.94042 2.37297 1.81001 2.32153 1.67321 2.29928C1.53642 2.27703 1.39642 2.28447 1.26276 2.32111C1.12909 2.35774 1.00487 2.42271 0.898533 2.5116C0.898533 2.5116 0.898535 2.5806 0.933035 2.5737C1.142 2.50363 1.36751 2.49983 1.57871 2.56282C1.78991 2.62581 1.97649 2.75251 2.11294 2.92559C2.34199 3.21613 2.53865 3.53079 2.69943 3.86399C2.75463 3.96749 2.94784 3.91229 2.90644 3.78809C2.88574 2.22869 1.65753 0.1173 0.0153333 0Z" fill="#263238"/>
</svg>''',
                  ),
                ),
                
                

                // One Hundred and Thirty-sixth Design Element (Reddish Brown SVG)
                Positioned(
                  top: 114.29,
                  left: 110.17 - 24, // Relative to parent
                  width: 38.51,
                  height: 58.60,
                  child: SvgPicture.string(
                    '''<svg width="39" height="59" viewBox="0 0 39 59" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0.32661 7.58852C-0.36339 17.9385 -0.36339 39.1629 4.46661 45.1521C10.7456 53.0181 27.7886 57.303 32.8325 58.5864C35.0267 59.1453 39.6083 44.7864 38.2628 42.7164C36.9173 40.6464 19.3292 36.9549 17.9147 35.8164C16.5002 34.6779 11.2286 15.4476 8.82741 7.00202C5.75001 -3.61018 0.92001 -1.13308 0.32661 7.58852Z" fill="#AD6359"/>
</svg>''',
                  ),
                ),
                

                // One Hundred and Thirty-seventh Design Element (Orange SVG Shape) - MOVED TO FRONT
                Positioned(
                  top: 113.5,
                  left: 109.15 - 24, // Relative to parent
                  width: 14.93,
                  height: 24.61,
                  child: SvgPicture.string(
                    '''<svg width="15" height="25" viewBox="0 0 15 25" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0.068688 24.6115L14.9313 21.3961C14.9313 21.3961 11.7849 10.2664 9.31469 4.71186C6.84449 -0.84264 2.35259 -2.83675 0.88979 6.33335C-0.35221 14.1097 0.068688 24.6115 0.068688 24.6115Z" fill="#FFA143"/>
</svg>''',
                  ),
                ),
                

                // One Hundred and Thirty-eighth Design Element (Reddish Brown SVG)
                Positioned(
                  top: 154.07,
                  left: 143.87 - 24, // Relative to parent
                  width: 23.05,
                  height: 7.68,
                  child: SvgPicture.string(
                    '''<svg width="24" height="8" viewBox="0 0 24 8" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M10.7709 7.47653C9.936 6.67613 10.35 6.23454 12.3993 6.43464C14.4486 6.63474 22.3629 9.19464 23.0184 6.33804C23.6739 3.48144 12.4407 0.0797332 9.0045 0.0038332C5.5683 -0.0720668 0 1.00434 0 1.00434C2.0493 2.10834 6.7758 5.26163 10.7709 7.47653Z" fill="#AD6359"/>
</svg>''',
                  ),
                ),
                

                // One Hundred and Thirty-ninth Design Element (Reddish Brown SVG)
                Positioned(
                  top: 155.07,
                  left: 137.46 - 24, // Relative to parent
                  width: 34.77,
                  height: 22.27,
                  child: SvgPicture.string(
                    '''<svg width="35" height="23" viewBox="0 0 35 23" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0 15.9114C5.8926 18.8094 13.0479 22.77 20.4378 22.218C21.2612 22.1761 22.0465 21.8576 22.6665 21.3141C25.9854 21.1278 26.8893 19.5063 26.8893 19.5063C29.9253 18.3816 30.6222 16.5945 30.6222 16.5945C30.6222 16.5945 34.5138 16.3254 34.7622 13.9449C35.0244 11.2815 29.5113 12.1785 26.1786 10.8123C18.5403 7.6935 8.54909 1.1523 6.43769 0L0 15.9114Z" fill="#AD6359"/>
</svg>''',
                  ),
                ),
                

                // One Hundred and Fortieth Design Element (Dark SVG Shape)
                Positioned(
                  top: 168.23,
                  left: 153.21 - 24, // Relative to parent
                  width: 14.86,
                  height: 3.53,
                  child: SvgPicture.string(
                    '''<svg width="15" height="4" viewBox="0 0 15 4" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0.0991055 0.0137458C2.32606 0.948824 4.61271 1.73486 6.94391 2.36665C9.53772 2.89328 12.1669 3.22769 14.8099 3.36715C14.8237 3.37168 14.8357 3.38047 14.8443 3.39224C14.8528 3.40401 14.8574 3.41817 14.8574 3.4327C14.8574 3.44723 14.8528 3.46139 14.8443 3.47316C14.8357 3.48493 14.8237 3.49371 14.8099 3.49825C9.67598 3.74003 4.57392 2.5707 0.0577072 0.117242C-0.0250928 0.0551416 -0.0250945 -0.0345542 0.0991055 0.0137458Z" fill="#263238"/>
</svg>''',
                  ),
                ),
                

                // One Hundred and Forty-first Design Element (Dark SVG Shape)
                Positioned(
                  top: 172.55,
                  left: 150.62 - 24, // Relative to parent
                  width: 13.72,
                  height: 2.24,
                  child: SvgPicture.string(
                    '''<svg width="14" height="3" viewBox="0 0 14 3" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0.128061 0.023061C2.38436 0.754461 6.33806 2.01026 13.7211 1.94126V1.98266C9.09273 2.64595 4.37113 2.00558 0.0866628 0.133464C-0.0444372 0.0782636 -0.0237389 -0.052839 0.128061 0.023061Z" fill="#263238"/>
</svg>''',
                  ),
                ),
                

                // One Hundred and Forty-second Design Element (Dark SVG Shape)
                Positioned(
                  top: 174.93,
                  left: 149.28 - 24, // Relative to parent
                  width: 10.83,
                  height: 1.60,
                  child: SvgPicture.string(
                    '''<svg width="11" height="2" viewBox="0 0 11 2" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0.137172 0.00840924C4.01497 1.09861 6.60247 1.29871 10.8253 1.44361V1.48501C5.99527 1.82311 4.22197 1.40221 0.0819711 0.105009C-0.0560289 0.0912088 -0.00772759 -0.0329908 0.137172 0.00840924Z" fill="#263238"/>
</svg>''',
                  ),
                ),
                
                
                

                // One Hundred and Forty-ninth Design Element (Dark SVG Shape)
                Positioned(
                  top: 255.53,
                  left: 59.26 - 24, // Relative to parent
                  width: 24.27,
                  height: 12.70,
                  child: SvgPicture.string(
                    '''<svg width="25" height="13" viewBox="0 0 25 13" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M24.2269 12.5342C23.5369 12.0719 22.7848 11.6993 22.081 11.306C21.3772 10.9127 20.4733 10.4297 19.6798 9.98119C18.148 9.10489 16.6024 8.25619 15.0568 7.42129C11.9311 5.73769 8.76396 4.11619 5.56236 2.59129L2.91276 1.33549C1.96746 0.886988 1.00146 0.4937 0.076859 0.0107003C0.00785896 -0.0306997 -0.0335394 0.0589969 0.0354606 0.0934969C1.62936 0.907697 3.16116 1.88749 4.72056 2.76379C6.27996 3.64009 7.79796 4.47499 9.35046 5.30299C12.4831 6.97969 15.6571 8.59429 18.8656 10.133C19.7488 10.547 20.6182 10.9886 21.5014 11.4095C21.9706 11.6372 22.4467 11.8442 22.8814 12.0995C23.3161 12.3548 23.7025 12.5342 24.1372 12.6929C24.1582 12.7048 24.1831 12.7078 24.2064 12.7014C24.2297 12.6949 24.2495 12.6794 24.2614 12.6584C24.2733 12.6373 24.2763 12.6124 24.2698 12.5892C24.2634 12.5659 24.2479 12.5461 24.2269 12.5342Z" fill="#263238"/>
</svg>''',
                  ),
                ),
                

                // One Hundred and Fifty-first Design Element (Dark SVG Shape)
                Positioned(
                  top: 166.98,
                  left: 114.85 - 24, // Relative to parent
                  width: 9.87,
                  height: 6.71,
                  child: SvgPicture.string(
                    '''<svg width="10" height="7" viewBox="0 0 10 7" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M9.77542 0C8.0118 0.807514 6.33749 1.7973 4.77982 2.9532C3.13072 4.0779 1.61272 5.3889 0.025721 6.5964C-0.0334185 6.6447 0.025729 6.7413 0.087829 6.6999C1.76453 5.6304 3.53783 4.692 5.17313 3.588C6.83282 2.5806 8.39853 1.42595 9.85133 0.137998C9.90652 0.0758979 9.84442 0 9.77542 0Z" fill="#263238"/>
</svg>''',
                  ),
                ),
                

                // One Hundred and Fifty-fourth Design Element (White SVG Shape)
                Positioned(
                  top: 264.03,
                  left: 43.14 - 24, // Relative to parent
                  width: 41.57,
                  height: 45.04,
                  child: SvgPicture.string(
                    '''<svg width="42" height="46" viewBox="0 0 42 46" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M39.6039 45.0225C38.0652 44.7396 0.963941 24.3225 0.032441 22.6458C-0.326359 22.0179 2.33704 16.4358 5.74564 9.7911C6.47704 8.349 9.65104 1.7457 10.7274 0C17.9931 3.9261 29.0124 9.453 35.5674 12.8961L32.2416 18.5886L29.7369 22.8804C29.7369 22.8804 40.4457 37.0599 41.2668 38.9988C42.0879 40.9377 41.1357 45.2985 39.6039 45.0225Z" fill="white"/>
</svg>''',
                  ),
                ),
                

                // One Hundred and Fifty-fifth Design Element (Pinkish Red SVG Shape)
                Positioned(
                  top: 269.29,
                  left: 42.98 - 24, // Relative to parent
                  width: 41.78,
                  height: 39.88,
                  child: SvgPicture.string(
                    '''<svg width="42" height="40" viewBox="0 0 42 40" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M39.8235 39.8682C38.2848 39.5853 0.962708 19.0578 0.0312084 17.3742C-0.396592 16.5945 3.63991 8.4732 8.07661 0L32.3922 13.2894L29.8737 17.6088C29.8737 17.6088 40.6446 31.8573 41.4657 33.8169C42.2868 35.7765 41.3967 40.1511 39.8235 39.8682Z" fill="#F43B5E"/>
</svg>''',
                  ),
                ),
                

                // One Hundred and Fifty-sixth Design Element (Dark SVG Shape)
                Positioned(
                  top: 289.56,
                  left: 69.74 - 24, // Relative to parent
                  width: 8.43,
                  height: 2.92,
                  child: SvgPicture.string(
                    '''<svg width="9" height="3" viewBox="0 0 9 3" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M8.34815 2.57673C6.14015 0.762026 2.91785 -0.514476 0.0681482 0.203124C-0.0422518 0.203124 -0.000851852 0.389416 0.0681482 0.410116C2.84087 0.941179 5.54774 1.77174 8.14115 2.88721C8.18233 2.91466 8.23272 2.92463 8.28124 2.91492C8.32977 2.90522 8.37245 2.87665 8.3999 2.83548C8.42735 2.7943 8.43732 2.74391 8.42761 2.69538C8.41791 2.64686 8.38932 2.60418 8.34815 2.57673Z" fill="#263238"/>
</svg>''',
                  ),
                ),
                

                // One Hundred and Fifty-seventh Design Element (Dark SVG Shape)
                Positioned(
                  top: 287.51,
                  left: 68.55 - 24, // Relative to parent
                  width: 8.43,
                  height: 2.92,
                  child: SvgPicture.string(
                    '''<svg width="9" height="3" viewBox="0 0 9 3" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M8.34815 2.5761C6.14015 0.768302 2.91785 -0.5151 0.0681482 0.2025C-0.0422518 0.2025 -0.000851852 0.388791 0.0681482 0.409491C2.83984 0.944725 5.54626 1.77515 8.14115 2.88659C8.18233 2.91404 8.23272 2.92401 8.28124 2.9143C8.32977 2.9046 8.37245 2.87603 8.3999 2.83485C8.42735 2.79368 8.43732 2.74328 8.42761 2.69476C8.41791 2.64623 8.38932 2.60355 8.34815 2.5761Z" fill="#263238"/>
</svg>''',
                  ),
                ),
                

                // One Hundred and Fifty-eighth Design Element (Dark SVG Shape)
                Positioned(
                  top: 285.47,
                  left: 67.37 - 24, // Relative to parent
                  width: 8.43,
                  height: 2.91,
                  child: SvgPicture.string(
                    '''<svg width="9" height="3" viewBox="0 0 9 3" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M8.34815 2.57933C6.14015 0.764634 2.91785 -0.518767 0.0681482 0.205733C-0.0422518 0.205733 -0.000851852 0.385138 0.0681482 0.405838C2.83984 0.941072 5.54626 1.7715 8.14115 2.88294C8.16108 2.89653 8.1835 2.90606 8.20712 2.91098C8.23074 2.91591 8.25509 2.91614 8.2788 2.91166C8.3025 2.90717 8.3251 2.89807 8.34528 2.88485C8.36547 2.87164 8.38286 2.85457 8.39645 2.83463C8.41004 2.8147 8.41957 2.7923 8.4245 2.76868C8.42942 2.74506 8.42966 2.72069 8.42517 2.69698C8.42068 2.67327 8.41157 2.65069 8.39836 2.6305C8.38514 2.61032 8.36808 2.59293 8.34815 2.57933Z" fill="#263238"/>
</svg>''',
                  ),
                ),
                

                // One Hundred and Fifty-ninth Design Element (Dark SVG Shape)
                Positioned(
                  top: 283.42,
                  left: 66.17 - 24, // Relative to parent
                  width: 8.43,
                  height: 2.92,
                  child: SvgPicture.string(
                    '''<svg width="9" height="3" viewBox="0 0 9 3" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M8.34815 2.57933C6.13325 0.764634 2.91785 -0.518767 0.0681482 0.205733C-0.0422518 0.205733 -0.000851852 0.385138 0.0681482 0.405838C2.8379 0.939897 5.54216 1.77037 8.13425 2.88294C8.17451 2.9113 8.22439 2.92251 8.27291 2.9141C8.32144 2.90569 8.36463 2.87834 8.393 2.83808C8.42136 2.79782 8.43258 2.74795 8.42416 2.69942C8.41575 2.6509 8.38841 2.6077 8.34815 2.57933Z" fill="#263238"/>
</svg>''',
                  ),
                ),
                

                // One Hundred and Sixtieth Design Element (Dark SVG Shape)
                Positioned(
                  top: 275.62,
                  left: 64.55 - 24, // Relative to parent
                  width: 7.56,
                  height: 9.36,
                  child: SvgPicture.string(
                    '''<svg width="8" height="10" viewBox="0 0 8 10" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M1.00381 4.69644C2.55631 6.67674 4.91611 7.91875 6.95851 9.31255C7.0062 9.33991 7.05973 9.35548 7.11465 9.35797C7.16958 9.36045 7.2243 9.34976 7.27426 9.3268C7.32421 9.30385 7.36796 9.26929 7.40186 9.226C7.43575 9.18271 7.45881 9.13195 7.46911 9.07795C7.51741 9.07795 7.56571 9.07794 7.55881 9.00204C7.33459 6.37982 6.42567 3.86247 4.92301 1.70185C4.01911 0.466746 2.16301 -0.699361 0.783012 0.508139C-0.596988 1.71564 0.0861115 3.54414 1.00381 4.69644ZM0.858912 2.32975C1.12801 -0.782151 3.94321 1.59144 4.57111 2.53674C4.96604 3.15149 5.31876 3.79237 5.62681 4.45494C6.24267 5.83411 6.78847 7.2435 7.26211 8.67774C6.29611 7.93254 5.28181 7.29774 4.29511 6.56634C3.07381 5.71764 0.700209 4.04785 0.845109 2.32975H0.858912Z" fill="#263238"/>
</svg>''',
                  ),
                ),
                

                // One Hundred and Sixty-first Design Element (Dark SVG Shape)
                Positioned(
                  top: 280.75,
                  left: 71.38 - 24, // Relative to parent
                  width: 10.84,
                  height: 5.08,
                  child: SvgPicture.string(
                    '''<svg width="11" height="6" viewBox="0 0 11 6" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M10.8218 2.04868C10.5872 0.185678 8.45511 -0.20762 6.95003 0.0890804C4.37922 0.648375 1.99972 1.87383 0.050909 3.6426C0.00260904 3.684 0.050909 3.73229 0.050909 3.76679C0.0221097 3.81375 0.00497172 3.86692 0.000929947 3.92186C-0.00311182 3.97679 0.00606064 4.03188 0.0276778 4.08254C0.0492949 4.13321 0.0827272 4.17798 0.125183 4.21308C0.167638 4.24817 0.217882 4.27259 0.271709 4.28429C2.71431 4.64999 5.28801 5.34689 7.77201 4.97429C9.23481 4.71899 11.0426 3.81508 10.8218 2.04868ZM4.10811 4.07728C2.90061 3.93238 1.70691 3.71849 0.492509 3.61499C1.81478 2.8837 3.17356 2.22043 4.56351 1.62779C5.23692 1.35073 5.92855 1.12019 6.63351 0.937788C7.73751 0.675588 11.4152 0.84809 9.49701 3.31139C8.44131 4.67069 5.54331 4.25668 4.10811 4.07728Z" fill="#263238"/>
</svg>''',
                  ),
                ),
                

                // One Hundred and Sixty-third Design Element (White SVG Shape)
                Positioned(
                  top: 287.82,
                  left: 112.34 - 24, // Relative to parent
                  width: 47.44,
                  height: 25.94,
                  child: SvgPicture.string(
                    '''<svg width="48" height="26" viewBox="0 0 48 26" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M46.7889 25.6542C45.3054 26.151 2.94631 26.0268 1.33171 24.9987C0.724505 24.6192 0.379507 18.4437 0.179407 10.9779C0.131107 9.3633 0.0966004 7.70039 0.0759004 6.00299C0.0759004 4.00199 0.0138 1.9734 0 0H27.6345V6.00299L27.4896 10.9779C27.4896 10.9779 43.6839 18.2781 45.333 19.596C46.9821 20.9139 48.2655 25.1712 46.7889 25.6542Z" fill="white"/>
</svg>''',
                  ),
                ),
                

                // One Hundred and Sixty-fourth Design Element (Pinkish Red SVG Shape)
                Positioned(
                  top: 293.78,
                  left: 112.26 - 24, // Relative to parent
                  width: 47.66,
                  height: 20.04,
                  child: SvgPicture.string(
                    '''<svg width="48" height="21" viewBox="0 0 48 21" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M47.0028 19.7616C46.0368 20.079 27.9933 20.1411 14.8557 19.8651C11.8128 19.803 9.0321 19.7202 6.7896 19.6236C3.6984 19.4787 1.6284 19.3131 1.2696 19.0992C0.524397 18.6162 0.1656 9.5565 0 0H27.7104L27.5655 4.99561C27.5655 4.99561 43.8564 12.3372 45.5055 13.662C47.1546 14.9868 48.5139 19.2579 47.0028 19.7616Z" fill="#F43B5E"/>
</svg>''',
                  ),
                ),
                

                // One Hundred and Sixty-fifth Design Element (Dark SVG Line Shape)
                Positioned(
                  top: 311.65,
                  left: 115.57 - 24, // Relative to parent
                  width: 43.19,
                  height: 0.49,
                  child: SvgPicture.string(
                    '''<svg width="44" height="1" viewBox="0 0 44 1" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M43.0767 0.184688C35.9352 -0.00851179 7.1208 -0.125813 0.0414 0.226087C-0.0138 0.226087 -0.0138 0.267485 0.0414 0.267485C7.1139 0.619385 35.9214 0.502097 43.0767 0.301997C43.2285 0.301997 43.2285 0.191588 43.0767 0.184688Z" fill="#263238"/>
</svg>''',
                  ),
                ),
                

                // One Hundred and Sixty-sixth Design Element (Dark SVG Shape)
                Positioned(
                  top: 300.66,
                  left: 138.53 - 24, // Relative to parent
                  width: 8.62,
                  height: 2.27,
                  child: SvgPicture.string(
                    '''<svg width="9" height="3" viewBox="0 0 9 3" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M8.43753 0.210296C5.62923 -0.321004 2.18613 0.0999103 0.0333305 2.10091C-0.0424695 2.17681 0.0333254 2.2941 0.157525 2.2665C2.84824 1.40377 5.62439 0.834666 8.43753 0.56911C8.48511 0.56911 8.53074 0.550195 8.56439 0.516551C8.59803 0.482907 8.61692 0.437283 8.61692 0.389703C8.61692 0.342123 8.59803 0.296499 8.56439 0.262855C8.53074 0.229211 8.48511 0.210296 8.43753 0.210296Z" fill="#263238"/>
</svg>''',
                  ),
                ),
                

                // One Hundred and Sixty-seventh Design Element (Dark SVG Shape)
                Positioned(
                  top: 299.44,
                  left: 136.47 - 24, // Relative to parent
                  width: 8.61,
                  height: 2.27,
                  child: SvgPicture.string(
                    '''<svg width="9" height="3" viewBox="0 0 9 3" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M8.43078 0.210296C5.62248 -0.321004 2.22078 0.0999103 0.0334817 2.10091C-0.0493183 2.17681 0.0334804 2.2941 0.15078 2.2665C2.84167 1.40445 5.61775 0.835359 8.43078 0.56911C8.47836 0.56911 8.524 0.550195 8.55764 0.516551C8.59128 0.482907 8.61018 0.437283 8.61018 0.389703C8.61018 0.342123 8.59128 0.296499 8.55764 0.262855C8.524 0.229211 8.47836 0.210296 8.43078 0.210296Z" fill="#263238"/>
</svg>''',
                  ),
                ),
                

                // One Hundred and Sixty-eighth Design Element (Dark SVG Shape)
                Positioned(
                  top: 298.21,
                  left: 134.45 - 24, // Relative to parent
                  width: 8.62,
                  height: 2.27,
                  child: SvgPicture.string(
                    '''<svg width="9" height="3" viewBox="0 0 9 3" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M8.43753 0.210296C5.62923 -0.321004 2.18613 0.0999103 0.0333285 2.10091C-0.0494715 2.17681 0.033334 2.2941 0.157534 2.2665C2.84825 1.40377 5.6244 0.834666 8.43753 0.56911C8.48511 0.56911 8.53075 0.550195 8.56439 0.516551C8.59804 0.482907 8.61693 0.437283 8.61693 0.389703C8.61693 0.342123 8.59804 0.296499 8.56439 0.262855C8.53075 0.229211 8.48511 0.210296 8.43753 0.210296Z" fill="#263238"/>
</svg>''',
                  ),
                ),
                

                // One Hundred and Sixty-ninth Design Element (Dark SVG Shape)
                Positioned(
                  top: 296.98,
                  left: 132.43 - 24, // Relative to parent
                  width: 8.61,
                  height: 2.27,
                  child: SvgPicture.string(
                    '''<svg width="9" height="3" viewBox="0 0 9 3" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M8.43078 0.210296C5.62248 -0.321004 2.22078 0.0999103 0.0334817 2.10091C-0.0493183 2.17681 0.0334804 2.2941 0.15078 2.2665C2.84167 1.40445 5.61775 0.835359 8.43078 0.56911C8.47836 0.56911 8.524 0.550195 8.55764 0.516551C8.59128 0.482907 8.61018 0.437283 8.61018 0.389703C8.61018 0.342123 8.59128 0.296499 8.55764 0.262855C8.524 0.229211 8.47836 0.210296 8.43078 0.210296Z" fill="#263238"/>
</svg>''',
                  ),
                ),
                

                // One Hundred and Seventieth Design Element (Dark SVG Shape)
                Positioned(
                  top: 291.55,
                  left: 127.85 - 24, // Relative to parent
                  width: 10.23,
                  height: 6.17,
                  child: SvgPicture.string(
                    '''<svg width="11" height="7" viewBox="0 0 11 7" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M2.39664 4.96724C4.71504 5.96084 7.37844 5.91944 9.83484 6.16784C9.89006 6.16812 9.94457 6.15538 9.99396 6.13069C10.0433 6.106 10.0862 6.07004 10.1192 6.0257C10.1521 5.98137 10.1741 5.92992 10.1834 5.8755C10.1928 5.82108 10.1892 5.76521 10.1729 5.71244C10.1846 5.71023 10.1955 5.70505 10.2045 5.69742C10.2136 5.68979 10.2205 5.67996 10.2247 5.66887C10.2288 5.65778 10.2301 5.64581 10.2283 5.6341C10.2264 5.6224 10.2217 5.61135 10.2217 5.60203C8.76105 3.4113 6.75753 1.64096 4.40454 0.468431C3.02454 -0.221569 0.857942 -0.331972 0.167941 1.41373C-0.522058 3.15943 1.05114 4.38764 2.39664 4.96724ZM1.13394 2.95934C-0.121863 0.102742 3.49374 0.834137 4.49424 1.35854C5.13446 1.70949 5.74998 2.1037 6.33654 2.53843C7.57854 3.42163 8.66184 4.47045 9.78654 5.46405C8.58594 5.27085 7.37844 5.18114 6.16404 5.02934C4.74264 4.84994 1.83084 4.53944 1.13394 2.95934Z" fill="#263238"/>
</svg>''',
                  ),
                ),
                

                // One Hundred and Seventy-first Design Element (Dark SVG Shape)
                Positioned(
                  top: 289.81,
                  left: 137.39 - 24, // Relative to parent
                  width: 9.09,
                  height: 7.93,
                  child: SvgPicture.string(
                    '''<svg width="10" height="8" viewBox="0 0 10 8" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M8.6802 0.896675C7.5831 -0.628225 5.52 0.0479629 4.347 1.03466C2.3589 2.75696 0.859588 4.9726 0 7.45856C0 7.51376 4.2104e-06 7.54827 0.0690042 7.55517C0.0690042 7.76907 0.269097 7.99678 0.503697 7.90708C2.829 7.05838 5.4165 6.43046 7.4037 4.89176C8.5767 3.99476 9.7221 2.33878 8.6802 0.896675ZM3.7674 5.89918C2.6289 6.34078 1.4835 6.73406 0.372595 7.22396C1.18119 5.94773 2.05402 4.71336 2.9877 3.52557C3.45234 2.95859 3.95244 2.4216 4.485 1.91786C5.3199 1.16576 8.625 -0.448838 8.1351 2.60786C7.8522 4.33286 5.1129 5.36098 3.7674 5.89918Z" fill="#263238"/>
</svg>''',
                  ),
                ),
                

                // One Hundred and Seventy-second Design Element (Dark SVG Line) - MOVED TO FRONT
                Positioned(
                  top: 270.85,
                  left: 32.43 - 24, // Relative to parent
                  width: 277.34,
                  height: 0.63,
                  child: SvgPicture.string(
                    '''<svg width="278" height="1" viewBox="0 0 278 1" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0 0.315675C88.8375 -0.105225 188.501 -0.105225 277.339 0.315675C188.501 0.743475 88.8375 0.736575 0 0.315675Z" fill="#263238"/>
</svg>''',
                  ),
                ),
                

                // One Hundred and Seventy-seventh Design Element (Light Gray SVG Shape)
                Positioned(
                  top: 195.13,
                  left: 53.33 - 24, // Relative to parent
                  width: 19.33,
                  height: 31.14,
                  child: SvgPicture.string(
                    '''<svg width="20" height="32" viewBox="0 0 20 32" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M6.94852 0.0127881C7.17404 -0.0260042 7.40581 0.0242355 7.59501 0.152944C7.78421 0.281653 7.91608 0.478783 7.96282 0.702788L8.22502 2.14489C10.5975 1.91339 12.9853 2.39382 15.0836 3.52489C15.4493 3.72499 15.6701 3.90439 15.7322 4.26319C15.7706 4.50426 15.7135 4.7508 15.5731 4.95047C15.4327 5.15015 15.22 5.28725 14.9801 5.33268C14.8618 5.35778 14.7395 5.35849 14.6209 5.33477C14.5023 5.31104 14.3897 5.26336 14.2901 5.19467C12.527 4.17787 10.5054 3.69823 8.47342 3.81467L10.2536 13.937C15.9323 14.1026 18.6026 15.7448 19.2236 19.2707C19.9136 23.0864 17.1536 26.357 12.7169 27.3092L13.2206 30.1106C13.241 30.2238 13.2389 30.34 13.2144 30.4525C13.1899 30.5649 13.1435 30.6714 13.0778 30.7659C13.0121 30.8604 12.9285 30.9411 12.8316 31.0033C12.7348 31.0654 12.6266 31.108 12.5134 31.1283C12.4001 31.1487 12.2839 31.1466 12.1715 31.1221C12.059 31.0976 11.9525 31.0512 11.858 30.9855C11.7635 30.9198 11.6829 30.8362 11.6207 30.7393C11.5585 30.6425 11.516 30.5344 11.4956 30.4211L10.985 27.5783C7.92804 27.8844 4.85678 27.1555 2.26342 25.5083C2.0824 25.4297 1.93154 25.2949 1.83322 25.1238C1.73489 24.9526 1.69434 24.7544 1.71758 24.5584C1.74082 24.3625 1.8266 24.1792 1.96222 24.0359C2.09783 23.8925 2.27605 23.7967 2.47042 23.7626C2.58886 23.7391 2.71077 23.7391 2.82917 23.7628C2.94758 23.7865 3.06015 23.8333 3.16042 23.9006C5.38686 25.4176 8.06474 26.1284 10.7504 25.9154L8.93572 15.662C3.32602 15.4412 0.745422 13.8611 0.0968219 10.2662C-0.551778 6.67128 2.11162 3.29028 6.48622 2.40018L6.23782 1.02018C6.20335 0.792998 6.25806 0.561281 6.39052 0.373518C6.52299 0.185755 6.72293 0.0565002 6.94852 0.0127881ZM8.61142 13.8128L6.84502 4.00099C3.39502 4.69099 1.44232 7.20258 1.90462 9.79008C2.34622 12.2396 3.76762 13.5437 8.61142 13.8266V13.8128ZM10.5848 15.7241L12.365 25.667C15.953 24.977 17.9195 22.4447 17.4296 19.7054C16.9811 17.2283 15.4493 15.938 10.5848 15.7379V15.7241Z" fill="#DBDBDB"/>
</svg>''',
                  ),
                ),
                

                // One Hundred and Eightieth Design Element (Light Gray SVG Shape)
                Positioned(
                  top: 100.74,
                  left: 72.37 - 24, // Relative to parent
                  width: 15.61,
                  height: 24.85,
                  child: SvgPicture.string(
                    '''<svg width="16" height="25" viewBox="0 0 16 25" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M8.14891 0.00032692C8.33947 -0.00536964 8.52472 0.063568 8.66521 0.192452C8.80569 0.321336 8.8903 0.499979 8.90101 0.690327V1.83573C10.9124 1.97188 12.8458 2.66732 14.4831 3.84363C14.7591 4.04373 14.9178 4.21623 14.9178 4.53363C14.8969 4.73128 14.8006 4.91324 14.6489 5.04174C14.4973 5.17024 14.302 5.23539 14.1036 5.22363C13.8964 5.23141 13.694 5.15984 13.5378 5.02353C12.1739 3.98004 10.5473 3.33515 8.83891 3.16053V11.1852C13.5999 12.1029 15.6078 13.7382 15.6078 16.5534C15.6078 19.5894 12.8478 21.7422 8.90101 21.8595V24.0951C8.90101 24.2946 8.82177 24.4859 8.68072 24.6269C8.53968 24.768 8.34838 24.8472 8.14891 24.8472C7.94944 24.8472 7.75814 24.768 7.61709 24.6269C7.47604 24.4859 7.39681 24.2946 7.39681 24.0951V21.8319C4.81438 21.6767 2.34671 20.7109 0.345005 19.0719C0.239708 19.0111 0.152346 18.9236 0.0917619 18.8182C0.0311776 18.7128 -0.000477263 18.5932 5.43894e-06 18.4716C0.0235507 18.2814 0.115782 18.1062 0.259361 17.9792C0.402939 17.8521 0.587982 17.7819 0.779709 17.7816C0.986283 17.7778 1.18725 17.8489 1.34551 17.9817C3.04843 19.4892 5.19262 20.4064 7.45891 20.5968V12.372C2.75311 11.4267 0.814206 9.84663 0.814206 6.97623C0.814206 4.10583 3.57421 1.87022 7.39681 1.78742V0.690327C7.40751 0.499979 7.49212 0.321336 7.6326 0.192452C7.77309 0.063568 7.95835 -0.00536964 8.14891 0.00032692ZM7.45891 10.9023V3.07773C4.41601 3.13293 2.40811 4.79583 2.40811 6.86582C2.40811 8.81162 3.41551 10.0191 7.45891 10.9092V10.9023ZM8.83891 12.648V20.5692C11.9715 20.514 14.0139 18.8442 14.0139 16.6638C14.0139 14.6973 12.9099 13.4898 8.83891 12.6549V12.648Z" fill="#DBDBDB"/>
</svg>''',
                  ),
                ),
                

                // One Hundred and Eighty-third Design Element (Light Gray SVG Shape)
                Positioned(
                  top: 60.44,
                  left: 272.25 - 24, // Relative to parent
                  width: 20.88,
                  height: 33.15,
                  child: SvgPicture.string(
                    '''<svg width="21" height="34" viewBox="0 0 21 34" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M10.8951 0.00127637C11.1493 -0.00639078 11.3965 0.0850666 11.5845 0.256315C11.7724 0.427563 11.8865 0.665188 11.9025 0.918978V2.45768C14.5933 2.63604 17.1799 3.56601 19.3683 5.14178C19.7409 5.41088 19.9548 5.63858 19.9548 6.02498C19.9353 6.29593 19.8101 6.54835 19.6061 6.72778C19.4021 6.90721 19.1358 6.99927 18.8646 6.98408C18.5867 6.99314 18.3157 6.89704 18.1056 6.71498C16.2797 5.32155 14.1044 4.45955 11.8197 4.22408V14.9605C18.1953 16.1887 20.8794 18.4105 20.8794 22.1365C20.8794 26.2075 17.1465 29.0779 11.9094 29.2366V32.2243C11.8885 32.4762 11.7737 32.711 11.5877 32.8822C11.4017 33.0534 11.1582 33.1484 10.9054 33.1484C10.6527 33.1484 10.4092 33.0534 10.2232 32.8822C10.0372 32.711 9.9224 32.4762 9.9015 32.2243V29.1952C6.44349 28.9736 3.1421 27.6728 0.462288 25.4761C0.324788 25.3899 0.210667 25.2712 0.130028 25.1303C0.0493886 24.9895 0.00473233 24.831 0 24.6688C0.02405 24.407 0.144865 24.1637 0.33883 23.9863C0.532796 23.8089 0.785953 23.7103 1.04879 23.7097C1.32665 23.7006 1.5977 23.7967 1.8078 23.9788C4.07793 25.9887 6.9356 27.213 9.95669 27.4702V16.5337C3.6639 15.271 1.06258 13.1596 1.06258 9.32318C1.06258 5.48678 4.7541 2.49218 9.8739 2.38178V0.918978C9.88816 0.66206 10.0036 0.421256 10.195 0.249266C10.3864 0.077276 10.6381 -0.0118936 10.8951 0.00127637ZM9.95669 14.581V4.10678C5.88569 4.18268 3.20159 6.41138 3.20159 9.17138C3.22229 11.7796 4.56779 13.3873 9.95669 14.581ZM11.799 16.9201V27.5116C15.9942 27.4288 18.699 25.207 18.699 22.2883C18.7404 19.6456 17.2707 18.031 11.8197 16.9201H11.799Z" fill="#DBDBDB"/>
</svg>''',
                  ),
                ),
                

                // One Hundred and Eighty-sixth Design Element (Light Gray SVG Shape)
                Positioned(
                  top: 184.69,
                  left: 277.58 - 24, // Relative to parent
                  width: 14.48,
                  height: 23.47,
                  child: SvgPicture.string(
                    '''<svg width="15" height="24" viewBox="0 0 15 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M9.12009 0.00173954C9.28947 0.0304735 9.44203 0.121348 9.54795 0.256615C9.65386 0.391882 9.7055 0.561809 9.69278 0.733138L9.56168 1.81642C11.3112 2.15853 12.9172 3.01927 14.1709 4.28663C14.2779 4.36492 14.3629 4.46966 14.4173 4.59061C14.4717 4.71157 14.4938 4.84458 14.4814 4.97663C14.4695 5.06762 14.4397 5.15532 14.3935 5.23463C14.3474 5.31393 14.2859 5.38325 14.2127 5.4385C14.1394 5.49376 14.0559 5.53386 13.967 5.55644C13.878 5.57903 13.7855 5.58364 13.6948 5.57002C13.6041 5.56165 13.5159 5.5354 13.4353 5.49277C13.3548 5.45013 13.2835 5.39197 13.2256 5.32163C12.1854 4.21131 10.8416 3.43145 9.36157 3.07913L8.47148 10.6691C12.4942 12.0491 14.0467 13.781 13.7362 16.4375C13.3981 19.3148 10.7416 21.0674 7.33299 20.7776L7.08458 22.8959C7.05594 23.0641 6.96606 23.2156 6.83227 23.3214C6.69848 23.4271 6.53027 23.4796 6.36009 23.4686C6.18944 23.4414 6.03521 23.3512 5.92789 23.2158C5.82057 23.0803 5.76797 22.9096 5.78049 22.7372L6.03579 20.5982C3.78389 20.158 1.74378 18.9777 0.239789 17.2448C0.153742 17.1707 0.0873033 17.0765 0.0463796 16.9706C0.00545577 16.8647 -0.00870685 16.7503 0.00517075 16.6376C0.0292962 16.4593 0.122167 16.2974 0.263963 16.1865C0.405759 16.0757 0.58526 16.0246 0.764175 16.0442C0.946396 16.0594 1.11515 16.1462 1.23337 16.2857C2.49773 17.8599 4.26327 18.9533 6.23587 19.3838L7.14668 11.642C3.17918 10.262 1.66807 8.57844 1.99237 5.86674C2.31667 3.15504 4.94557 1.31272 8.26447 1.62322L8.38869 0.588223C8.41432 0.416315 8.50388 0.26042 8.63948 0.151687C8.77507 0.0429543 8.94672 -0.0105896 9.12009 0.00173954ZM7.30538 10.2482L8.18167 2.83763C5.53898 2.58233 3.61389 3.94854 3.38619 5.90814C3.17229 7.75044 3.93818 8.99242 7.30538 10.2482ZM8.30587 12.0422L7.42267 19.5494C10.1482 19.8116 12.094 18.4454 12.3355 16.3823C12.5563 14.4986 11.7421 13.2428 8.30587 12.0422Z" fill="#DBDBDB"/>
</svg>''',
                  ),
                ),
                

                // One Hundred and Eighty-seventh Design Element (Light Gray SVG Shape)
                Positioned(
                  top: 31.71,
                  left: 170.85 - 24, // Relative to parent
                  width: 69.12,
                  height: 52.07,
                  child: SvgPicture.string(
                    '''<svg width="70" height="53" viewBox="0 0 70 53" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M69.1173 0H0V52.0674H69.1173V0Z" fill="#EBEBEB"/>
</svg>''',
                  ),
                ),
                

                // One Hundred and Eighty-eighth Design Element (Gray Horizontal Line)
                Positioned(
                  top: 38.45,
                  left: 191.23 - 24, // Relative to parent
                  width: 28.37,
                  height: 1.07,
                  child: Container(
                    color: const Color(0xFFC7C7C7),
                  ),
                ),
                

                // One Hundred and Eighty-ninth Design Element (Gray Horizontal Line)
                Positioned(
                  top: 41.51,
                  left: 198.13 - 24, // Relative to parent
                  width: 14.57,
                  height: 1.07,
                  child: Container(
                    color: const Color(0xFFC7C7C7),
                  ),
                ),
                

                // One Hundred and Ninetieth Design Element (Gray Horizontal Line)
                Positioned(
                  top: 50.69,
                  left: 177.43 - 24, // Relative to parent
                  width: 28.37,
                  height: 1.07,
                  child: Container(
                    color: const Color(0xFFC7C7C7),
                  ),
                ),
                

                // One Hundred and Ninety-first Design Element (Gray Horizontal Line)
                Positioned(
                  top: 53.74,
                  left: 177.43 - 24, // Relative to parent
                  width: 35.27,
                  height: 1.07,
                  child: Container(
                    color: const Color(0xFFC7C7C7),
                  ),
                ),
                

                // One Hundred and Ninety-second Design Element (Gray Horizontal Line)
                Positioned(
                  top: 56.81,
                  left: 177.43 - 24, // Relative to parent
                  width: 18.35,
                  height: 1.07,
                  child: Container(
                    color: const Color(0xFFC7C7C7),
                  ),
                ),
                

                // One Hundred and Ninety-third Design Element (Gray Horizontal Line)
                Positioned(
                  top: 59.86,
                  left: 177.43 - 24, // Relative to parent
                  width: 31.44,
                  height: 1.07,
                  child: Container(
                    color: const Color(0xFFC7C7C7),
                  ),
                ),
                

                // One Hundred and Ninety-fourth Design Element (Gray Horizontal Line)
                Positioned(
                  top: 62.93,
                  left: 177.43 - 24, // Relative to parent
                  width: 34.64,
                  height: 1.07,
                  child: Container(
                    color: const Color(0xFFC7C7C7),
                  ),
                ),
                

                // One Hundred and Ninety-fifth Design Element (Gray Horizontal Line)
                Positioned(
                  top: 65.98,
                  left: 177.43 - 24, // Relative to parent
                  width: 31.74,
                  height: 1.07,
                  child: Container(
                    color: const Color(0xFFC7C7C7),
                  ),
                ),
                

                // One Hundred and Ninety-sixth Design Element (Gray Horizontal Line)
                Positioned(
                  top: 69.04,
                  left: 177.43 - 24, // Relative to parent
                  width: 35.27,
                  height: 1.07,
                  child: Container(
                    color: const Color(0xFFC7C7C7),
                  ),
                ),
                

                // One Hundred and Ninety-seventh Design Element (Gray Horizontal Line)
                Positioned(
                  top: 72.11,
                  left: 177.43 - 24, // Relative to parent
                  width: 32.58,
                  height: 1.07,
                  child: Container(
                    color: const Color(0xFFC7C7C7),
                  ),
                ),
                

                // One Hundred and Ninety-eighth Design Element (Gray Horizontal Line)
                Positioned(
                  top: 75.16,
                  left: 177.43 - 24, // Relative to parent
                  width: 26.61,
                  height: 1.07,
                  child: Container(
                    color: const Color(0xFFC7C7C7),
                  ),
                ),
                

                // One Hundred and Ninety-ninth Design Element (Gray Horizontal Line)
                Positioned(
                  top: 78.23,
                  left: 177.43 - 24, // Relative to parent
                  width: 34.95,
                  height: 1.07,
                  child: Container(
                    color: const Color(0xFFC7C7C7),
                  ),
                ),
                

                // Two Hundredth Design Element (Gray Horizontal Line)
                Positioned(
                  top: 81.28,
                  left: 177.43 - 24, // Relative to parent
                  width: 32.96,
                  height: 1.07,
                  child: Container(
                    color: const Color(0xFFC7C7C7),
                  ),
                ),
                

                // Two Hundred and First Design Element (Gray Horizontal Line)
                Positioned(
                  top: 53.74,
                  left: 222.7 - 24, // Relative to parent
                  width: 10.69,
                  height: 1.07,
                  child: Container(
                    color: const Color(0xFFC7C7C7),
                  ),
                ),
                

                // Two Hundred and Second Design Element (Gray Horizontal Line)
                Positioned(
                  top: 56.81,
                  left: 222.7 - 24, // Relative to parent
                  width: 10.69,
                  height: 1.07,
                  child: Container(
                    color: const Color(0xFFC7C7C7),
                  ),
                ),
                

                // Two Hundred and Third Design Element (Gray Horizontal Line)
                Positioned(
                  top: 59.86,
                  left: 222.7 - 24, // Relative to parent
                  width: 10.69,
                  height: 1.07,
                  child: Container(
                    color: const Color(0xFFC7C7C7),
                  ),
                ),
                

                // Two Hundred and Fourth Design Element (Gray Horizontal Line)
                Positioned(
                  top: 62.93,
                  left: 222.7 - 24, // Relative to parent
                  width: 10.69,
                  height: 1.07,
                  child: Container(
                    color: const Color(0xFFC7C7C7),
                  ),
                ),
                

                // Two Hundred and Fifth Design Element (Gray Horizontal Line)
                Positioned(
                  top: 65.98,
                  left: 222.7 - 24, // Relative to parent
                  width: 10.69,
                  height: 1.07,
                  child: Container(
                    color: const Color(0xFFC7C7C7),
                  ),
                ),
                

                // Two Hundred and Sixth Design Element (Gray Horizontal Line)
                Positioned(
                  top: 69.04,
                  left: 222.7 - 24, // Relative to parent
                  width: 10.69,
                  height: 1.07,
                  child: Container(
                    color: const Color(0xFFC7C7C7),
                  ),
                ),
                

                // Two Hundred and Seventh Design Element (Gray Horizontal Line)
                Positioned(
                  top: 72.11,
                  left: 222.7 - 24, // Relative to parent
                  width: 10.69,
                  height: 1.07,
                  child: Container(
                    color: const Color(0xFFC7C7C7),
                  ),
                ),
                

                // Two Hundred and Eighth Design Element (Gray Horizontal Line)
                Positioned(
                  top: 75.16,
                  left: 222.7 - 24, // Relative to parent
                  width: 10.69,
                  height: 1.07,
                  child: Container(
                    color: const Color(0xFFC7C7C7),
                  ),
                ),
                

                // Two Hundred and Ninth Design Element (Gray Horizontal Line)
                Positioned(
                  top: 78.23,
                  left: 222.7 - 24, // Relative to parent
                  width: 10.69,
                  height: 1.07,
                  child: Container(
                    color: const Color(0xFFC7C7C7),
                  ),
                ),
                

                // Two Hundred and Tenth Design Element (Gray Horizontal Line)
                Positioned(
                  top: 81.28,
                  left: 222.7 - 24, // Relative to parent
                  width: 10.69,
                  height: 1.07,
                  child: Container(
                    color: const Color(0xFFC7C7C7),
                  ),
                ),
                
                // End of numbered design elements
              ],
            ),
          ),

          // Page Indicators (Dots)
          Positioned(
            top: 684,
            left: 184,
            width: 44,
            height: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Active Dot
                Container(
                  width: 10,
                  height: 10,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF0F172A),
                  ),
                ),
                const SizedBox(width: 7),
                // Inactive Dot 1
                Container(
                  width: 10,
                  height: 10,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF64748B),
                  ),
                ),
                const SizedBox(width: 7),
                // Inactive Dot 2
                Container(
                  width: 10,
                  height: 10,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF64748B),
                  ),
                ),
              ],
            ),
          ),

          // Navigation Buttons
          Positioned(
            top: 731,
            left: 52,
            width: 295,
            height: 43,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 45,
                  child: GestureDetector(
                    onTap: () {
                      // TODO: Implement Navigation to Onboarding Screen 4
                      // Animate: Push Right, ease-out, 300ms
                    },
                    child: Text(
                      'Skip',
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF64748B).withValues(alpha: 0.8),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                // "Next" Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) => const OnboardingScreen2(),
                        transitionDuration: Duration.zero,
                        reverseTransitionDuration: Duration.zero,
                      ),
                    );
                  },
                  child: Container(
                    width: 226,
                    height: 43,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      gradient: const LinearGradient(
                        colors: [Color(0xFFFF7A18), Color(0xFFFFB347)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFFFF7A18).withValues(alpha: 0.3),
                          blurRadius: 12,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    alignment: Alignment.center,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 10,
                          left: 94,
                          width: 115,
                          height: 24,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Next',
                                style: GoogleFonts.inter(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                              SvgPicture.string(
                                '''<svg width="8" height="12" viewBox="0 0 8 12" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M4.6 6L0 1.4L1.4 0L7.4 6L1.4 12L0 10.6L4.6 6Z" fill="white"/>
</svg>''',
                                width: 24,
                                height: 24,
                                fit: BoxFit.scaleDown,
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

          // Tagline Footer
          Positioned(
            top: 805,
            left: 24,
            width: 345,
            height: 15,
            child: Text(
              'Complete Digital Banking & Financial Services Platform',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF1A1D3A).withValues(alpha: 0.6),
                height: 1.0,
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
}

class OnboardingLogoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint1 = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color(0xFFFFB65C), Color(0xFFFFA143), Color(0xFFF43B5E)],
        stops: [0.0818, 0.3902, 0.6985],
      ).createShader(const Rect.fromLTWH(159, 60, 20.49, 56.76));

    final paint2 = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color(0xFFFFB65C), Color(0xFFFFA143), Color(0xFFF43B5E)],
        stops: [0.0818, 0.3902, 0.6985],
      ).createShader(const Rect.fromLTWH(188, 60, 20.23, 82.62));

    // Part 1 Path
    Path path1 = Path();
    path1.addRRect(RRect.fromLTRBAndCorners(
      0, 0, 20.49, 56.76,
      topLeft: const Radius.circular(12),
      topRight: const Radius.circular(72),
      bottomRight: const Radius.circular(72),
      bottomLeft: const Radius.circular(12),
    ));
    
    // Apply Rotation -33.13
    Matrix4 m1 = Matrix4.identity()
      ..translateByDouble(159.01 + 20.49/2, 60.19 + 56.76/2)
      ..rotateZ(-33.13 * math.pi / 180)
      ..translateByDouble(-20.49/2, -56.76/2);
    path1 = path1.transform(m1.storage);

    // Part 2 Path
    Path path2 = Path();
    path2.addRRect(RRect.fromLTRBAndCorners(
      0, 0, 20.23, 82.62,
      topLeft: const Radius.circular(72),
      topRight: const Radius.circular(12),
      bottomRight: const Radius.circular(72),
      bottomLeft: const Radius.circular(12),
    ));

    // Apply Rotation +27.37
    Matrix4 m2 = Matrix4.identity()
      ..translateByDouble(188.71 + 20.23/2, 60.19 + 82.62/2)
      ..rotateZ(27.37 * math.pi / 180)
      ..translateByDouble(-20.23/2, -82.62/2);
    path2 = path2.transform(m2.storage);

    // Part 3 (The Cutter)
    Path path3 = Path();
    path3.addRRect(RRect.fromLTRBAndCorners(
      0, 0, 4.36, 47.80,
      topLeft: const Radius.circular(72),
      topRight: const Radius.circular(12),
      bottomRight: const Radius.circular(72),
      bottomLeft: const Radius.circular(12),
    ));

    // Apply Rotation +52.77
    Matrix4 m3 = Matrix4.identity()
      ..translateByDouble(189.89 + 4.36/2, 94.53 + 47.80/2)
      ..rotateZ(52.77 * math.pi / 180)
      ..translateByDouble(-4.36/2, -47.80/2);
    path3 = path3.transform(m3.storage);

    // COMBINE AND CUT
    Path finalPath1 = Path.combine(PathOperation.difference, path1, path3);
    Path finalPath2 = Path.combine(PathOperation.difference, path2, path3);

    canvas.drawPath(finalPath1, paint1);
    canvas.drawPath(finalPath2, paint2);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
