import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class ErrorScreen extends StatelessWidget {
  final VoidCallback? onRetry;

  const ErrorScreen({super.key, this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF8FAFC),
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF0F172A)),
          onPressed: () => context.pop(),
        ),
        title: Text(
          'Error',
          style: GoogleFonts.poppins(
            color: const Color(0xFF0F172A),
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        centerTitle: false,
        titleSpacing: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            const Spacer(),
            SvgPicture.string(
              _kErrorSvg,
              width: double.infinity,
              height: 270,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 10),
            Text(
              'PAGE NOT FOUND',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF94A3B8),
                letterSpacing: 1.5,
              ),
            ),
            const SizedBox(height: 14),
            Text(
              'Something went wrong!',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF0F172A),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'There was a problem processing your\nrequest. Please try again later.',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF64748B),
                height: 1.6,
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onRetry ?? () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1A1A2E),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  elevation: 0,
                ),
                child: Text(
                  'RETRY',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.5,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Go to settings',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF0F172A),
                  decoration: TextDecoration.underline,
                  decorationColor: const Color(0xFF0F172A),
                ),
              ),
            ),
            const SizedBox(height: 48),
          ],
        ),
      ),
    );
  }
}

const String _kErrorSvg = '''
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 393 270">

  <!-- Background lavender circle -->
  <circle cx="197" cy="155" r="120" fill="#EDE9FE"/>

  <!-- Left tree -->
  <rect x="57" y="198" width="9" height="44" rx="2" fill="#1A1A2E"/>
  <circle cx="62" cy="160" r="28" fill="#C4B5FD"/>
  <circle cx="47" cy="170" r="20" fill="#C4B5FD"/>
  <circle cx="77" cy="168" r="22" fill="#C4B5FD"/>

  <!-- Right tree -->
  <rect x="328" y="198" width="9" height="44" rx="2" fill="#1A1A2E"/>
  <circle cx="332" cy="160" r="28" fill="#C4B5FD"/>
  <circle cx="317" cy="168" r="22" fill="#C4B5FD"/>
  <circle cx="347" cy="170" r="20" fill="#C4B5FD"/>

  <!-- OOPS! text -->
  <text x="197" y="128" text-anchor="middle"
        font-family="Arial, Helvetica, sans-serif"
        font-size="46" font-weight="900" fill="#1A1A2E" letter-spacing="3">OOPS!</text>

  <!-- Fence railing (behind all characters) -->
  <line x1="28"  y1="218" x2="370" y2="218" stroke="#1A1A2E" stroke-width="2.2"/>
  <line x1="28"  y1="230" x2="370" y2="230" stroke="#1A1A2E" stroke-width="2.2"/>
  <line x1="40"  y1="212" x2="40"  y2="236" stroke="#1A1A2E" stroke-width="2.5" stroke-linecap="round"/>
  <line x1="72"  y1="212" x2="72"  y2="236" stroke="#1A1A2E" stroke-width="2.5" stroke-linecap="round"/>
  <line x1="104" y1="212" x2="104" y2="236" stroke="#1A1A2E" stroke-width="2.5" stroke-linecap="round"/>
  <line x1="136" y1="212" x2="136" y2="236" stroke="#1A1A2E" stroke-width="2.5" stroke-linecap="round"/>
  <line x1="168" y1="212" x2="168" y2="236" stroke="#1A1A2E" stroke-width="2.5" stroke-linecap="round"/>
  <line x1="200" y1="212" x2="200" y2="236" stroke="#1A1A2E" stroke-width="2.5" stroke-linecap="round"/>
  <line x1="232" y1="212" x2="232" y2="236" stroke="#1A1A2E" stroke-width="2.5" stroke-linecap="round"/>
  <line x1="264" y1="212" x2="264" y2="236" stroke="#1A1A2E" stroke-width="2.5" stroke-linecap="round"/>
  <line x1="296" y1="212" x2="296" y2="236" stroke="#1A1A2E" stroke-width="2.5" stroke-linecap="round"/>
  <line x1="328" y1="212" x2="328" y2="236" stroke="#1A1A2E" stroke-width="2.5" stroke-linecap="round"/>
  <line x1="360" y1="212" x2="360" y2="236" stroke="#1A1A2E" stroke-width="2.5" stroke-linecap="round"/>

  <!-- Ground line -->
  <line x1="20" y1="252" x2="373" y2="252" stroke="#1A1A2E" stroke-width="1.5" stroke-linecap="round"/>

  <!-- ===== PLUG CONNECTOR (held by char2, centre-left) ===== -->
  <!-- Plug body (round face) -->
  <circle cx="197" cy="215" r="19" fill="#2D2D2D"/>
  <circle cx="197" cy="215" r="14" fill="#3F3F5A"/>
  <!-- 3 prongs sticking out left (toward char2's hand) -->
  <rect x="175" y="209" width="14" height="6" rx="2" fill="#1A1A2E"/>
  <rect x="175" y="200" width="14" height="6" rx="2" fill="#1A1A2E"/>
  <rect x="175" y="218" width="14" height="6" rx="2" fill="#1A1A2E"/>
  <!-- Cable from plug going left to char2 -->
  <path d="M178 215 C165 215 158 218 148 220" stroke="#1A1A2E" stroke-width="3" stroke-linecap="round" fill="none"/>

  <!-- ===== CABLE DRUM / SPOOL (held by char3) ===== -->
  <!-- Drum body -->
  <ellipse cx="248" cy="218" rx="19" ry="13" fill="#2D2D2D"/>
  <ellipse cx="248" cy="218" rx="12" ry="8"  fill="#4A4A5A"/>
  <!-- Drum flanges -->
  <ellipse cx="229" cy="218" rx="5" ry="14" fill="#222"/>
  <ellipse cx="267" cy="218" rx="5" ry="14" fill="#222"/>
  <!-- Cable coming out right of drum -->
  <path d="M272 218 C282 216 290 218 298 220" stroke="#1A1A2E" stroke-width="3" stroke-linecap="round" fill="none"/>

  <!-- ===== CHARACTER 1: Man with glasses (leftmost) ===== -->
  <!-- Left hand holding rope -->
  <path d="M93 222 C103 220 115 216 130 214" stroke="#1A1A2E" stroke-width="2.5" stroke-linecap="round" fill="none"/>
  <!-- Legs -->
  <rect x="61" y="224" width="13" height="28" rx="4" fill="#1A1A2E"/>
  <rect x="79" y="222" width="13" height="30" rx="4" fill="#1A1A2E"/>
  <!-- Purple shorts -->
  <path d="M55 207 L55 227 L103 227 L103 207 Q90 215 79 215 Q68 215 55 207 Z" fill="#7C3AED"/>
  <!-- Dark shirt body -->
  <rect x="58" y="170" width="38" height="40" rx="5" fill="#1A1A2E"/>
  <!-- Right arm reaching forward with rope -->
  <path d="M96 183 L105 208 L92 222" stroke="#1A1A2E" stroke-width="13" stroke-linecap="round" fill="none"/>
  <circle cx="91" cy="223" r="8" fill="#FDD5B1" stroke="#1A1A2E" stroke-width="1"/>
  <!-- Left arm down -->
  <path d="M58 180 L44 200" stroke="#1A1A2E" stroke-width="11" stroke-linecap="round" fill="none"/>
  <circle cx="42" cy="202" r="7" fill="#FDD5B1" stroke="#1A1A2E" stroke-width="1"/>
  <!-- Head -->
  <circle cx="77" cy="154" r="21" fill="#FDD5B1" stroke="#1A1A2E" stroke-width="1.5"/>
  <!-- Hair -->
  <path d="M56 149 Q59 128 77 126 Q95 128 98 149 Q90 137 77 136 Q64 137 56 149 Z" fill="#1A1A2E"/>
  <!-- Glasses frames -->
  <circle cx="68" cy="156" r="7.5" fill="none" stroke="#1A1A2E" stroke-width="1.8"/>
  <circle cx="86" cy="156" r="7.5" fill="none" stroke="#1A1A2E" stroke-width="1.8"/>
  <line x1="75.5" y1="156" x2="78.5" y2="156" stroke="#1A1A2E" stroke-width="1.8"/>
  <line x1="55"   y1="155" x2="60.5" y2="156" stroke="#1A1A2E" stroke-width="1.8"/>
  <line x1="93.5" y1="155" x2="99"   y2="154" stroke="#1A1A2E" stroke-width="1.8"/>
  <!-- Eyes through glasses -->
  <circle cx="68" cy="156" r="2.5" fill="#1A1A2E"/>
  <circle cx="86" cy="156" r="2.5" fill="#1A1A2E"/>
  <!-- Shoes -->
  <ellipse cx="67" cy="253" rx="13" ry="4.5" fill="#1A1A2E"/>
  <ellipse cx="86" cy="253" rx="12" ry="4.5" fill="#1A1A2E"/>

  <!-- ===== CHARACTER 2: Woman in purple dress (holding plug) ===== -->
  <!-- Long dress -->
  <path d="M148 200 L137 252 L186 252 L175 200 Z" fill="#5B21B6"/>
  <!-- Torso -->
  <rect x="150" y="170" width="36" height="33" rx="5" fill="#5B21B6"/>
  <!-- Right arm forward holding plug cable -->
  <path d="M186 183 L180 210 L148 220" stroke="#5B21B6" stroke-width="14" stroke-linecap="round" fill="none"/>
  <circle cx="147" cy="221" r="8" fill="#FDD5B1" stroke="#1A1A2E" stroke-width="1"/>
  <!-- Left arm down/back -->
  <path d="M150 180 L137 200" stroke="#5B21B6" stroke-width="12" stroke-linecap="round" fill="none"/>
  <circle cx="135" cy="202" r="7" fill="#FDD5B1" stroke="#1A1A2E" stroke-width="1"/>
  <!-- Head -->
  <circle cx="168" cy="151" r="21" fill="#FDD5B1" stroke="#1A1A2E" stroke-width="1.5"/>
  <!-- Hair (dark, long sides) -->
  <path d="M147 146 Q150 124 168 122 Q186 124 189 146 Q182 134 168 133 Q154 134 147 146 Z" fill="#1A1A2E"/>
  <path d="M147 147 Q144 162 147 178" stroke="#1A1A2E" stroke-width="9" stroke-linecap="round" fill="none"/>
  <path d="M189 147 Q192 160 189 174" stroke="#1A1A2E" stroke-width="7" stroke-linecap="round" fill="none"/>
  <!-- Eyes -->
  <circle cx="160" cy="152" r="2.8" fill="#1A1A2E"/>
  <circle cx="176" cy="152" r="2.8" fill="#1A1A2E"/>
  <!-- Shoes -->
  <ellipse cx="146" cy="253" rx="12" ry="4" fill="#3D1A7C"/>
  <ellipse cx="177" cy="253" rx="12" ry="4" fill="#3D1A7C"/>

  <!-- ===== CHARACTER 3: Man in purple (holding/pulling drum) ===== -->
  <!-- Legs -->
  <rect x="232" y="222" width="13" height="30" rx="4" fill="#1A1A2E"/>
  <rect x="251" y="222" width="13" height="30" rx="4" fill="#1A1A2E"/>
  <!-- Purple torso -->
  <rect x="224" y="176" width="46" height="48" rx="5" fill="#7C3AED"/>
  <!-- Left arm forward hugging drum -->
  <path d="M224 192 L229 218" stroke="#7C3AED" stroke-width="15" stroke-linecap="round" fill="none"/>
  <circle cx="229" cy="220" r="8" fill="#FDD5B1" stroke="#1A1A2E" stroke-width="1"/>
  <!-- Right arm back pulling -->
  <path d="M270 190 L283 207" stroke="#7C3AED" stroke-width="13" stroke-linecap="round" fill="none"/>
  <circle cx="284" cy="209" r="7" fill="#FDD5B1" stroke="#1A1A2E" stroke-width="1"/>
  <!-- Head -->
  <circle cx="247" cy="157" r="21" fill="#FDD5B1" stroke="#1A1A2E" stroke-width="1.5"/>
  <!-- Hair -->
  <path d="M226 152 Q229 130 247 128 Q265 130 268 152 Q261 140 247 139 Q233 140 226 152 Z" fill="#1A1A2E"/>
  <!-- Eyes -->
  <circle cx="239" cy="158" r="2.8" fill="#1A1A2E"/>
  <circle cx="255" cy="158" r="2.8" fill="#1A1A2E"/>
  <!-- Shoes -->
  <ellipse cx="238" cy="253" rx="13" ry="4.5" fill="#1A1A2E"/>
  <ellipse cx="259" cy="253" rx="13" ry="4.5" fill="#1A1A2E"/>

  <!-- ===== CHARACTER 4: Woman in purple (rightmost, holding cable end) ===== -->
  <!-- Legs -->
  <rect x="320" y="222" width="13" height="30" rx="4" fill="#1A1A2E"/>
  <rect x="338" y="220" width="13" height="32" rx="4" fill="#1A1A2E"/>
  <!-- Purple body/sweater -->
  <rect x="308" y="176" width="56" height="48" rx="6" fill="#7C3AED"/>
  <!-- Left arm forward holding cable from drum -->
  <path d="M308 192 L298 218" stroke="#7C3AED" stroke-width="14" stroke-linecap="round" fill="none"/>
  <circle cx="297" cy="220" r="8" fill="#FDD5B1" stroke="#1A1A2E" stroke-width="1"/>
  <!-- Right arm out -->
  <path d="M364 188 L376 206" stroke="#7C3AED" stroke-width="13" stroke-linecap="round" fill="none"/>
  <!-- Head -->
  <circle cx="336" cy="157" r="21" fill="#FDD5B1" stroke="#1A1A2E" stroke-width="1.5"/>
  <!-- Hair with bun -->
  <path d="M315 152 Q317 130 336 128 Q355 130 357 152 Q350 140 336 139 Q322 140 315 152 Z" fill="#1A1A2E"/>
  <circle cx="352" cy="133" r="10" fill="#1A1A2E"/>
  <!-- Eyes -->
  <circle cx="328" cy="158" r="2.8" fill="#1A1A2E"/>
  <circle cx="344" cy="158" r="2.8" fill="#1A1A2E"/>
  <!-- Shoes -->
  <ellipse cx="326" cy="253" rx="12" ry="4" fill="#3D1A7C"/>
  <ellipse cx="346" cy="253" rx="12" ry="4" fill="#3D1A7C"/>

</svg>
''';
