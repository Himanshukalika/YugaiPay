import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class NoNetworkScreen extends StatelessWidget {
  final VoidCallback? onRetry;

  const NoNetworkScreen({super.key, this.onRetry});

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
          'No Network',
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
              _kNoNetworkSvg,
              width: double.infinity,
              height: 255,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 36),
            Text(
              'No Internet Connection',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF0F172A),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Looks like you're offline. Please check\nyour network and try again.",
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

const String _kNoNetworkSvg = '''
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 393 255">

  <!-- Background lavender circle -->
  <circle cx="238" cy="118" r="108" fill="#EDE9FE"/>

  <!-- WINDOW (upper right, behind person) -->
  <rect x="283" y="20" width="84" height="72" rx="2" fill="white" stroke="#1A1A2E" stroke-width="2.5"/>
  <line x1="311" y1="20" x2="311" y2="92" stroke="#1A1A2E" stroke-width="2.5"/>
  <line x1="339" y1="20" x2="339" y2="92" stroke="#1A1A2E" stroke-width="2.5"/>
  <line x1="283" y1="56" x2="367" y2="56" stroke="#1A1A2E" stroke-width="2.5"/>
  <rect x="286" y="23" width="22" height="30" fill="#DDD6FE"/>
  <rect x="314" y="23" width="22" height="30" fill="#DDD6FE"/>
  <rect x="342" y="23" width="22" height="30" fill="#DDD6FE"/>
  <rect x="286" y="59" width="22" height="30" fill="#DDD6FE"/>
  <rect x="314" y="59" width="22" height="30" fill="#DDD6FE"/>
  <rect x="342" y="59" width="22" height="30" fill="#DDD6FE"/>

  <!-- SOFA / ARMCHAIR (lower right, behind person) -->
  <rect x="292" y="168" width="80" height="30" rx="6" fill="white" stroke="#1A1A2E" stroke-width="2"/>
  <rect x="292" y="196" width="80" height="36" rx="4" fill="white" stroke="#1A1A2E" stroke-width="2"/>
  <rect x="278" y="182" width="16" height="52" rx="5" fill="white" stroke="#1A1A2E" stroke-width="2"/>
  <rect x="370" y="182" width="16" height="52" rx="5" fill="white" stroke="#1A1A2E" stroke-width="2"/>
  <!-- Purple wavy blanket -->
  <path d="M313 167 Q340 171 370 184 L367 198 Q340 188 315 181 Z" fill="#7C3AED"/>
  <path d="M326 170 C324 176 328 181 326 187" fill="none" stroke="white" stroke-width="2.2" stroke-linecap="round"/>
  <path d="M339 174 C337 180 341 185 339 191" fill="none" stroke="white" stroke-width="2.2" stroke-linecap="round"/>
  <path d="M353 179 C351 185 355 190 353 196" fill="none" stroke="white" stroke-width="2.2" stroke-linecap="round"/>

  <!-- Ground line -->
  <line x1="22" y1="244" x2="378" y2="244" stroke="#1A1A2E" stroke-width="1.5" stroke-linecap="round"/>

  <!-- PHONE (large, left side) -->
  <rect x="16" y="14" width="132" height="230" rx="19" fill="#1A1A2E"/>
  <rect x="21" y="28" width="122" height="211" rx="14" fill="white"/>
  <!-- Waterdrop notch -->
  <ellipse cx="82" cy="29" rx="11" ry="9" fill="#1A1A2E"/>
  <!-- Status bar small text -->
  <text x="30" y="44" font-family="sans-serif" font-size="8" font-weight="bold" fill="#1A1A2E">23:56</text>
  <!-- Volume buttons left -->
  <rect x="12" y="65" width="5" height="14" rx="2.5" fill="#2D2D2D"/>
  <rect x="12" y="84" width="5" height="14" rx="2.5" fill="#2D2D2D"/>
  <!-- Power button right -->
  <rect x="147" y="76" width="5" height="20" rx="2.5" fill="#2D2D2D"/>

  <!-- WiFi-off icon on screen (centered at 82, 143) -->
  <!-- Purple outer ring -->
  <circle cx="82" cy="143" r="44" fill="none" stroke="#7C3AED" stroke-width="3.5"/>
  <!-- WiFi arc large -->
  <path d="M46 122 C55 101 109 101 118 122" fill="none" stroke="#1A1A2E" stroke-width="5" stroke-linecap="round"/>
  <!-- WiFi arc medium -->
  <path d="M57 135 C64 119 100 119 107 135" fill="none" stroke="#1A1A2E" stroke-width="5" stroke-linecap="round"/>
  <!-- WiFi arc small -->
  <path d="M67 148 C71 139 93 139 97 148" fill="none" stroke="#1A1A2E" stroke-width="5" stroke-linecap="round"/>
  <!-- WiFi dot -->
  <circle cx="82" cy="161" r="6" fill="#1A1A2E"/>
  <!-- Purple diagonal slash -->
  <line x1="46" y1="107" x2="118" y2="179" stroke="#7C3AED" stroke-width="4.5" stroke-linecap="round"/>

  <!-- PLANT (between phone and person, bottom) -->
  <!-- Pot rim -->
  <rect x="184" y="210" width="30" height="6" rx="2" fill="#5B21B6"/>
  <!-- Pot body -->
  <path d="M187 216 L211 216 L208 234 L190 234 Z" fill="#7C3AED"/>
  <!-- Tropical leaves (long, dark, flowing) -->
  <path d="M199 210 C190 197 175 180 170 160 C178 178 189 196 199 210" fill="#5B21B6"/>
  <path d="M199 208 C191 193 180 172 178 150 C184 170 192 190 199 208" fill="#4C1D95"/>
  <path d="M199 210 C209 196 224 178 230 158 C221 176 211 194 199 210" fill="#7C3AED"/>
  <path d="M199 207 C210 196 224 180 228 162 C218 178 209 195 199 207" fill="#6D28D9"/>
  <path d="M199 210 C184 205 170 192 163 177 C174 190 186 204 199 210" fill="#5B21B6"/>
  <path d="M199 212 C212 207 228 194 235 179 C222 192 211 206 199 212" fill="#6D28D9"/>

  <!-- PERSON -->

  <!-- Legs (dark pants) -->
  <path d="M234 202 L231 241 Q231 247 240 247 Q249 247 248 241 L248 202 Z" fill="#1A1A2E"/>
  <path d="M259 202 L258 241 Q258 247 267 247 Q276 247 275 241 L272 202 Z" fill="#1A1A2E"/>
  <!-- White sneakers -->
  <ellipse cx="239" cy="246" rx="15" ry="5.5" fill="white" stroke="#1A1A2E" stroke-width="1.5"/>
  <ellipse cx="267" cy="246" rx="13" ry="5.5" fill="white" stroke="#1A1A2E" stroke-width="1.5"/>

  <!-- Torso (purple t-shirt) -->
  <path d="M219 138 L219 204 Q219 208 252 208 Q285 208 285 204 L285 138 Q272 129 252 129 Q232 129 219 138 Z" fill="#7C3AED"/>

  <!-- Left arm raised (going up-left, confused gesture) -->
  <path d="M221 150 L203 130" stroke="#7C3AED" stroke-width="20" stroke-linecap="round" fill="none"/>
  <path d="M203 130 L186 118" stroke="#7C3AED" stroke-width="18" stroke-linecap="round" fill="none"/>
  <!-- Left wrist join to hand -->
  <path d="M189 120 L196 130" stroke="#FDD5B1" stroke-width="12" stroke-linecap="round" fill="none"/>
  <!-- Left hand -->
  <circle cx="183" cy="113" r="11" fill="#FDD5B1" stroke="#1A1A2E" stroke-width="1.2"/>

  <!-- Right arm (down, holding phone) -->
  <path d="M283 152 L293 170" stroke="#7C3AED" stroke-width="20" stroke-linecap="round" fill="none"/>
  <!-- Right forearm (skin) -->
  <path d="M293 170 L292 190" stroke="#FDD5B1" stroke-width="16" stroke-linecap="round" fill="none"/>
  <!-- Small phone in right hand -->
  <rect x="284" y="170" width="19" height="30" rx="3" fill="#1A1A2E"/>
  <rect x="286" y="173" width="15" height="24" rx="2" fill="#3A3A4A"/>

  <!-- Neck -->
  <rect x="244" y="127" width="16" height="12" rx="4" fill="#FDD5B1"/>

  <!-- Head -->
  <circle cx="252" cy="105" r="27" fill="#FDD5B1" stroke="#1A1A2E" stroke-width="1.5"/>
  <!-- Ears -->
  <ellipse cx="225" cy="107" rx="5" ry="7" fill="#FDD5B1" stroke="#1A1A2E" stroke-width="1"/>
  <ellipse cx="279" cy="107" rx="5" ry="7" fill="#FDD5B1" stroke="#1A1A2E" stroke-width="1"/>

  <!-- Hair (dark, full on top) -->
  <path d="M225 102 Q228 76 252 74 Q276 76 279 102 Q272 87 252 86 Q232 87 225 102 Z" fill="#1A1A2E"/>
  <!-- Hair side strand -->
  <path d="M225 102 Q222 109 224 117" stroke="#1A1A2E" stroke-width="3.5" stroke-linecap="round" fill="none"/>

  <!-- Eyes -->
  <circle cx="243" cy="108" r="3.5" fill="#1A1A2E"/>
  <circle cx="261" cy="108" r="3.5" fill="#1A1A2E"/>
  <!-- Eye shine -->
  <circle cx="244" cy="107" r="1.3" fill="white"/>
  <circle cx="262" cy="107" r="1.3" fill="white"/>

  <!-- Eyebrows (raised, concerned expression) -->
  <path d="M237 99 Q243 94 249 99" fill="none" stroke="#1A1A2E" stroke-width="2.3" stroke-linecap="round"/>
  <path d="M255 98 Q261 93 267 98" fill="none" stroke="#1A1A2E" stroke-width="2.3" stroke-linecap="round"/>

  <!-- Mouth (slightly open, worried) -->
  <path d="M245 118 Q252 123 259 118" fill="none" stroke="#1A1A2E" stroke-width="1.8" stroke-linecap="round"/>

</svg>
''';
