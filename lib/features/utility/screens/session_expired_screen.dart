import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class SessionExpiredScreen extends StatelessWidget {
  final VoidCallback? onLoginAgain;
  final VoidCallback? onGoHome;

  const SessionExpiredScreen({super.key, this.onLoginAgain, this.onGoHome});

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
          'Security',
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
              _kSessionExpiredSvg,
              width: double.infinity,
              height: 278,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 32),
            Text(
              'Session Expired',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF0F172A),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'For your security, your session has timed\nout due to inactivity. Please log in again\nto continue using YugaiPay safely.',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF64748B),
                height: 1.6,
              ),
            ),
            const Spacer(),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFFF97316), Color(0xFFFBBF24)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFFF97316).withValues(alpha: 0.35),
                    blurRadius: 16,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(50),
                  onTap: onLoginAgain ?? () => context.go('/login'),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    child: Text(
                      'Log In Again',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 18),
            GestureDetector(
              onTap: onGoHome ?? () => context.go('/home'),
              child: Text(
                'Go to Home',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF0F172A),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.circle, size: 8, color: Color(0xFFF97316)),
                const SizedBox(width: 6),
                Text(
                  'YUGAIPAY SECURITY',
                  style: GoogleFonts.poppins(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF94A3B8),
                    letterSpacing: 1.8,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

const String _kSessionExpiredSvg = '''
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 393 278">

  <!-- Subtle background gradient blob (top) -->
  <ellipse cx="150" cy="60" rx="140" ry="80" fill="#EDE9FE" opacity="0.35"/>

  <!-- Cloud (top left) -->
  <circle cx="68"  cy="68" r="18" fill="#E2E8F0"/>
  <circle cx="86"  cy="58" r="24" fill="#E2E8F0"/>
  <circle cx="110" cy="62" r="19" fill="#E2E8F0"/>
  <circle cx="128" cy="68" r="15" fill="#E2E8F0"/>
  <rect x="68" y="68" width="75" height="18" fill="#E2E8F0"/>

  <!-- Ground shadow ellipse -->
  <ellipse cx="192" cy="268" rx="170" ry="16" fill="#E2E8F0"/>

  <!-- ===== ISOMETRIC LAPTOP ===== -->

  <!-- Screen lid: left face (dark) -->
  <polygon points="50,100 72,88 72,242 50,252" fill="#141824"/>

  <!-- Screen lid: top edge -->
  <polygon points="50,100 72,88 272,76 255,88" fill="#1E2638"/>

  <!-- Screen lid: front face (bezel) -->
  <polygon points="72,88 272,76 272,242 72,242" fill="#1A2235"/>

  <!-- Screen display area (very dark bg) -->
  <polygon points="83,97 261,87 261,234 83,234" fill="#120D2F"/>

  <!-- Screen gradient shimmer (top of screen) -->
  <polygon points="83,97 261,87 261,140 83,140" fill="#1A1040" opacity="0.6"/>

  <!-- ===== SHIELD on screen (centred ~172,160) ===== -->
  <!-- Shield outer glow -->
  <path d="M148 124 Q148 112 172 107 Q196 112 196 124 L196 170 Q196 190 172 198 Q148 190 148 170 Z"
        fill="#5B21B6" opacity="0.4"/>
  <!-- Shield body -->
  <path d="M153 127 Q153 116 172 111 Q191 116 191 127 L191 168 Q191 186 172 193 Q153 186 153 168 Z"
        fill="#7C3AED"/>
  <!-- Shield highlight -->
  <path d="M158 130 Q158 121 172 117 Q186 121 186 130 L186 164 Q186 179 172 185 Q158 179 158 164 Z"
        fill="#8B5CF6" opacity="0.7"/>
  <!-- Shield inner gloss -->
  <path d="M162 128 Q168 117 172 117 L172 145 Q165 145 162 138 Z" fill="white" opacity="0.15"/>

  <!-- Padlock body -->
  <rect x="163" y="158" width="18" height="14" rx="3" fill="white"/>
  <!-- Padlock shackle -->
  <path d="M166 158 L166 150 Q172 144 178 150 L178 158"
        fill="none" stroke="white" stroke-width="3" stroke-linecap="round"/>
  <!-- Padlock keyhole dot -->
  <circle cx="172" cy="164" r="2.5" fill="#7C3AED"/>
  <rect x="171" y="164" width="2" height="4" rx="1" fill="#7C3AED"/>

  <!-- ===== KEYBOARD BASE ===== -->

  <!-- Base top face (isometric, keyboard surface) -->
  <polygon points="50,252 72,242 282,242 268,253" fill="#1E2638"/>

  <!-- Key rows on keyboard (subtle lines) -->
  <line x1="80"  y1="244" x2="260" y2="244" stroke="#2A3450" stroke-width="1.2"/>
  <line x1="80"  y1="247" x2="260" y2="247" stroke="#2A3450" stroke-width="1.2"/>
  <line x1="80"  y1="250" x2="260" y2="250" stroke="#2A3450" stroke-width="1.2"/>

  <!-- Trackpad -->
  <polygon points="152,250 206,250 204,256 150,256" fill="#253047" stroke="#2A3450" stroke-width="0.8"/>

  <!-- Base front face -->
  <polygon points="50,252 268,253 268,265 50,265" fill="#141824"/>

  <!-- Base left face -->
  <polygon points="50,252 50,265 30,268 30,256" fill="#0E1320"/>

  <!-- ===== GOLDEN KEY (diagonal, in front of laptop) ===== -->
  <g transform="rotate(-28 175 222)">
    <!-- Key shaft -->
    <rect x="118" y="216" width="112" height="12" rx="5" fill="#F59E0B"/>
    <!-- Key shaft highlight -->
    <rect x="118" y="216" width="112" height="5" rx="3" fill="#FCD34D" opacity="0.6"/>
    <!-- Key ring (head) -->
    <circle cx="111" cy="222" r="20" fill="none" stroke="#F59E0B" stroke-width="12"/>
    <circle cx="111" cy="222" r="11" fill="#F59E0B"/>
    <circle cx="111" cy="222" r="6"  fill="#FCD34D"/>
    <!-- Key teeth -->
    <rect x="172" y="228" width="8"  height="10" rx="1.5" fill="#F59E0B"/>
    <rect x="188" y="228" width="8"  height="10" rx="1.5" fill="#F59E0B"/>
    <rect x="204" y="228" width="8"  height="8"  rx="1.5" fill="#F59E0B"/>
  </g>

  <!-- ===== SECURITY GUARD (right side) ===== -->

  <!-- Plant behind guard (far right) -->
  <rect x="356" y="240" width="18" height="22" rx="3" fill="#6D28D9"/>
  <rect x="353" y="236" width="24" height="7"  rx="2" fill="#5B21B6"/>
  <path d="M365 236 C358 224 346 212 342 200 C349 212 358 224 365 236" fill="#5B21B6"/>
  <path d="M365 234 C372 221 383 210 387 198 C380 210 372 222 365 234" fill="#7C3AED"/>
  <path d="M365 236 C357 226 348 214 345 202 C350 214 358 226 365 236" fill="#6D28D9"/>

  <!-- Guard legs (dark pants) -->
  <rect x="296" y="218" width="14" height="46" rx="4" fill="#111827"/>
  <rect x="316" y="218" width="14" height="46" rx="4" fill="#111827"/>
  <!-- Guard shoes -->
  <ellipse cx="303" cy="265" rx="14" ry="5"  fill="#0F172A"/>
  <ellipse cx="323" cy="265" rx="13" ry="5"  fill="#0F172A"/>

  <!-- Guard body (dark suit jacket) -->
  <rect x="286" y="165" width="54" height="57" rx="6" fill="#1E293B"/>

  <!-- Shirt visible (white collar area) -->
  <polygon points="310 165 316 173 316 165" fill="white"/>
  <polygon points="322 165 316 173 322 165" fill="white"/>

  <!-- Purple tie -->
  <polygon points="314 167 318 167 317 218 315 218" fill="#7C3AED"/>

  <!-- Left arm (at side) -->
  <path d="M286 178 L272 205" stroke="#1E293B" stroke-width="16" stroke-linecap="round" fill="none"/>
  <circle cx="270" cy="207" r="9"  fill="#FDD5B1" stroke="#1A1A2E" stroke-width="1"/>

  <!-- Right arm (at side) -->
  <path d="M340 178 L354 205" stroke="#1E293B" stroke-width="15" stroke-linecap="round" fill="none"/>
  <circle cx="356" cy="207" r="8"  fill="#FDD5B1" stroke="#1A1A2E" stroke-width="1"/>

  <!-- Guard neck -->
  <rect x="308" y="155" width="14" height="12" rx="3" fill="#FDD5B1"/>

  <!-- Guard head -->
  <circle cx="315" cy="137" r="23" fill="#FDD5B1" stroke="#1A1A2E" stroke-width="1.5"/>

  <!-- Ear -->
  <ellipse cx="292" cy="139" rx="5" ry="6.5" fill="#FDD5B1" stroke="#1A1A2E" stroke-width="1"/>
  <ellipse cx="338" cy="139" rx="5" ry="6.5" fill="#FDD5B1" stroke="#1A1A2E" stroke-width="1"/>

  <!-- Earpiece (right ear) -->
  <circle cx="340" cy="137" r="5" fill="#CBD5E1" stroke="#94A3B8" stroke-width="1"/>
  <line x1="340" y1="142" x2="342" y2="152" stroke="#94A3B8" stroke-width="1.5" stroke-linecap="round"/>

  <!-- Hair (dark, swept back) -->
  <path d="M292 130 Q294 108 315 106 Q336 108 338 130 Q331 116 315 115 Q299 116 292 130 Z" fill="#1A1A2E"/>

  <!-- Sunglasses -->
  <rect x="298" y="135" width="15" height="9" rx="2" fill="#1A1A2E"/>
  <rect x="315" y="135" width="15" height="9" rx="2" fill="#1A1A2E"/>
  <line x1="313" y1="139" x2="315" y2="139" stroke="#1A1A2E" stroke-width="2"/>
  <line x1="292"  y1="138" x2="298"  y2="137" stroke="#1A1A2E" stroke-width="2"/>
  <line x1="330" y1="137" x2="338" y2="138" stroke="#1A1A2E" stroke-width="2"/>

</svg>
''';
