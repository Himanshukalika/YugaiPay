import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../core/router/app_router.dart';

class NeedHelpScreen extends StatelessWidget {
  const NeedHelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: SizedBox(
            width: 393,
            height: 852,
            child: Stack(
              children: [
                Positioned(
                  top: 26,
                  left: 24,
                  width: 345,
                  height: 40,
                  child: _NeedHelpHeader(),
                ),
                Positioned(
                  top: 90,
                  left: 0,
                  width: 393,
                  height: 308,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 21.5),
                    child: _QuickSupportSection(),
                  ),
                ),
                Positioned(
                  top: 424,
                  left: 0,
                  width: 393,
                  height: 395,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 17.5),
                    child: _RecentChatSection(),
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

class _NeedHelpHeader extends StatelessWidget {
  const _NeedHelpHeader();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            if (context.canPop()) {
              context.pop();
            } else {
              context.go(AppRoutes.login);
            }
          },
          child: Container(
            width: 40,
            height: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9999),
            ),
            child: const Icon(
              Icons.arrow_back,
              size: 16,
              color: Color(0xFF4338CA),
            ),
          ),
        ),
        const SizedBox(width: 12),
        SizedBox(
          width: 216,
          height: 28,
          child: RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              style: const TextStyle(
                fontFamily: 'Manrope',
                fontWeight: FontWeight.w800,
                fontSize: 16,
                height: 28 / 16,
                letterSpacing: -0.4,
                color: Color(0xFF1A1D3A),
              ),
              children: const [
                TextSpan(text: 'Need Help? '),
                TextSpan(
                  text: 'Contact Support',
                  style: TextStyle(
                    color: Color(0xFF461599),
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.solid,
                    decorationThickness: 0,
                    decorationColor: Color(0xFF461599),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Spacer(),
        SvgPicture.string(_helpSvg, width: 20, height: 20),
      ],
    );
  }
}

class _RecentChatSection extends StatelessWidget {
  const _RecentChatSection();

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 358,
      height: 395,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 350,
            height: 20,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: Text(
                'RECENT CHAT',
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  height: 20 / 14,
                  letterSpacing: 0.7,
                  color: Color(0xFF494453),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: 358,
            height: 365,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _RecentChatItem(),
                SizedBox(height: 0),
                _RecentChatReplyItem(),
                SizedBox(height: 6),
                _AssistantTypingIndicator(),
                SizedBox(height: 6),
                _SuggestedActionChips(),
                SizedBox(height: 6),
                _MessageComposer(),
                SizedBox(height: 6),
                _ContactActionButtons(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _MessageComposer extends StatelessWidget {
  const _MessageComposer();

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 358,
      height: 54,
      child: Row(
        children: [
          Expanded(child: _MessageInputField()),
          SizedBox(width: 16),
          _SendButton(),
        ],
      ),
    );
  }
}

class _SendButton extends StatelessWidget {
  const _SendButton();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: const Color(0xFF461599),
        borderRadius: BorderRadius.circular(9999),
      ),
      child: Center(child: SvgPicture.string(_sendSvg, width: 16, height: 14)),
    );
  }
}

class _MessageInputField extends StatelessWidget {
  const _MessageInputField();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      padding: const EdgeInsets.only(top: 10, right: 40, bottom: 11, left: 16),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F1FC),
        borderRadius: BorderRadius.circular(9999),
        border: Border.all(color: const Color(0xFFCBC3D5), width: 1),
      ),
      child: Row(
        children: [
          const Expanded(
            child: Text(
              'Describe your issue...',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontFamily: 'Manrope',
                fontWeight: FontWeight.w400,
                fontSize: 14,
                height: 1,
                letterSpacing: 0,
                color: Color(0xFF6B7280),
              ),
            ),
          ),
          SvgPicture.string(_micSvg, width: 12, height: 16),
        ],
      ),
    );
  }
}

class _ContactActionButtons extends StatelessWidget {
  const _ContactActionButtons();

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 358,
      height: 54,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _ContactActionButton(icon: _phoneSvg, label: 'Call Us', width: 124),
            SizedBox(width: 16),
            _ContactActionButton(icon: _emailSvg, label: 'Email', width: 112),
            SizedBox(width: 16),
            _ContactActionButton(
              icon: _whatsappSvg,
              label: 'Whatsapp',
              width: 148,
            ),
          ],
        ),
      ),
    );
  }
}

class _ContactActionButton extends StatelessWidget {
  const _ContactActionButton({
    required this.icon,
    required this.label,
    required this.width,
  });

  final String icon;
  final String label;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 54,
      padding: const EdgeInsets.only(top: 16, right: 16, bottom: 16, left: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFEBE7E7), width: 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.string(icon, width: 18, height: 18),
          const SizedBox(width: 4),
          Text(
            label,
            maxLines: 1,
            style: const TextStyle(
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w700,
              fontSize: 14,
              height: 20 / 14,
              letterSpacing: 0,
              color: Color(0xFF1C1B1B),
            ),
          ),
        ],
      ),
    );
  }
}

class _SuggestedActionChips extends StatelessWidget {
  const _SuggestedActionChips();

  static const _actions = ['Track My Refund', 'Failed Payment', 'Change PIN'];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 42,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 896),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (final action in _actions) ...[
                _SuggestedActionChip(label: action),
                if (action != _actions.last) const SizedBox(width: 10),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class _SuggestedActionChip extends StatelessWidget {
  const _SuggestedActionChip({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 128.03,
      height: 30,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
        color: const Color(0xFFD5E0F8),
        borderRadius: BorderRadius.circular(9999),
        border: Border.all(color: const Color(0x1A461599), width: 1),
      ),
      child: Text(
        label,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w600,
          fontSize: 12,
          height: 16 / 12,
          letterSpacing: 0,
          color: Color(0xFF3C475A),
        ),
      ),
    );
  }
}

class _AssistantTypingIndicator extends StatelessWidget {
  const _AssistantTypingIndicator();

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 350,
      height: 34,
      child: Padding(
        padding: EdgeInsets.all(4),
        child: Row(
          children: [
            SizedBox(
              width: 102,
              height: 16,
              child: Text(
                'Assistant is typing',
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  height: 16 / 12,
                  letterSpacing: 0,
                  color: Color(0xFF494453),
                ),
              ),
            ),
            SizedBox(width: 4),
            SizedBox(
              width: 20,
              height: 4,
              child: Row(
                children: [
                  _TypingDot(),
                  SizedBox(width: 4),
                  _TypingDot(),
                  SizedBox(width: 4),
                  _TypingDot(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TypingDot extends StatelessWidget {
  const _TypingDot();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 4,
      height: 4,
      decoration: BoxDecoration(
        color: const Color(0x66461599),
        borderRadius: BorderRadius.circular(9999),
      ),
    );
  }
}

class _RecentChatReplyItem extends StatelessWidget {
  const _RecentChatReplyItem();

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 350,
      height: 87,
      child: Padding(
        padding: EdgeInsets.only(left: 52.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _RecentChatReplyBubble(),
            SizedBox(height: 4),
            SizedBox(
              width: 297.5,
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  child: SizedBox(
                    width: 47.17,
                    height: 15,
                    child: Text(
                      '10:31 AM',
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        height: 15 / 10,
                        letterSpacing: 0,
                        color: Color(0xFF494453),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _RecentChatItem extends StatelessWidget {
  const _RecentChatItem();

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 350,
      height: 67,
      child: Padding(
        padding: EdgeInsets.only(left: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _RecentChatBubble(),
            SizedBox(height: 6),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: SizedBox(
                width: 49.38,
                height: 15,
                child: Text(
                  '10:30 AM',
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    height: 15 / 10,
                    letterSpacing: 0,
                    color: Color(0xFF494453),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _RecentChatReplyBubble extends StatelessWidget {
  const _RecentChatReplyBubble();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 297.5,
      height: 68,
      padding: const EdgeInsets.only(
        top: 10,
        right: 22.41,
        bottom: 10,
        left: 16,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
          bottomRight: Radius.circular(2),
          bottomLeft: Radius.circular(12),
        ),
        border: Border.all(color: const Color(0xFFCBC3D5), width: 1),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0D000000),
            blurRadius: 2,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: const SizedBox(
        width: 257.09,
        height: 46,
        child: Text(
          'I need to check my last refund status\nfor a failed UPI transaction.',
          style: TextStyle(
            fontFamily: 'Manrope',
            fontWeight: FontWeight.w400,
            fontSize: 14,
            height: 22.75 / 14,
            letterSpacing: 0,
            color: Color(0xFF1D1A22),
          ),
        ),
      ),
    );
  }
}

class _RecentChatBubble extends StatelessWidget {
  const _RecentChatBubble();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 46,
      padding: const EdgeInsets.only(
        top: 10,
        right: 20.2,
        bottom: 10,
        left: 16,
      ),
      decoration: const BoxDecoration(
        color: Color(0xFF461599),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
          bottomRight: Radius.circular(12),
          bottomLeft: Radius.circular(2),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0x0D000000),
            blurRadius: 2,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: SizedBox(
        width: 313.8,
        height: 23,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: const Text(
            "Hi! I'm YugaiPay Assistant. How can I help you?",
            maxLines: 1,
            style: TextStyle(
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w400,
              fontSize: 14,
              height: 22.75 / 14,
              letterSpacing: 0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class _QuickSupportSection extends StatelessWidget {
  const _QuickSupportSection();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 350,
          height: 20,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: Text(
              'QUICK SUPPORT',
              style: TextStyle(
                fontFamily: 'Manrope',
                fontWeight: FontWeight.w700,
                fontSize: 14,
                height: 20 / 14,
                letterSpacing: 0.7,
                color: Color(0xFF494453),
              ),
            ),
          ),
        ),
        SizedBox(height: 6),
        _QuickSupportGrid(),
      ],
    );
  }
}

class _QuickSupportGrid extends StatelessWidget {
  const _QuickSupportGrid();

  static const _items = [
    'Payment Failed',
    'Refund Status',
    'AEPS Issues',
    'DMT',
    'KYC Help',
    'Commission',
    'Loan Status',
    'History',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 282,
      child: GridView.builder(
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 6,
          crossAxisSpacing: 6,
          childAspectRatio: 172 / 66,
        ),
        itemCount: 8,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: const Color(0xFFCBC3D5), width: 1),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.05),
                  blurRadius: 2,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.string(
                  switch (index) {
                    0 => _paymentFailedSvg,
                    1 => _refundStatusSvg,
                    2 => _aepsIssuesSvg,
                    3 => _dmtSvg,
                    4 => _kycHelpSvg,
                    5 => _commissionSvg,
                    6 => _loanStatusSvg,
                    _ => _historySvg,
                  },
                  width: switch (index) {
                    0 => 17,
                    1 => 19,
                    2 => 15,
                    3 => 17,
                    4 => 17,
                    5 => 18,
                    6 => 19,
                    _ => 15,
                  },
                  height: switch (index) {
                    0 => 17,
                    1 => 19,
                    2 => 15,
                    3 => 17,
                    4 => 14,
                    5 => 18,
                    6 => 18,
                    _ => 15,
                  },
                ),
                const SizedBox(height: 6),
                Text(
                  _items[index],
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    height: 16 / 12,
                    letterSpacing: 0,
                    color: Color(0xFF1D1A22),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

const String _helpSvg = '''
<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M9.95 16C10.3 16 10.5958 15.8792 10.8375 15.6375C11.0792 15.3958 11.2 15.1 11.2 14.75C11.2 14.4 11.0792 14.1042 10.8375 13.8625C10.5958 13.6208 10.3 13.5 9.95 13.5C9.6 13.5 9.30417 13.6208 9.0625 13.8625C8.82083 14.1042 8.7 14.4 8.7 14.75C8.7 15.1 8.82083 15.3958 9.0625 15.6375C9.30417 15.8792 9.6 16 9.95 16ZM9.05 12.15H10.9C10.9 11.6 10.9625 11.1667 11.0875 10.85C11.2125 10.5333 11.5667 10.1 12.15 9.55C12.5833 9.11667 12.925 8.70417 13.175 8.3125C13.425 7.92083 13.55 7.45 13.55 6.9C13.55 5.96667 13.2083 5.25 12.525 4.75C11.8417 4.25 11.0333 4 10.1 4C9.15 4 8.37917 4.25 7.7875 4.75C7.19583 5.25 6.78333 5.85 6.55 6.55L8.2 7.2C8.28333 6.9 8.47083 6.575 8.7625 6.225C9.05417 5.875 9.5 5.7 10.1 5.7C10.6333 5.7 11.0333 5.84583 11.3 6.1375C11.5667 6.42917 11.7 6.75 11.7 7.1C11.7 7.43333 11.6 7.74583 11.4 8.0375C11.2 8.32917 10.95 8.6 10.65 8.85C9.91667 9.5 9.46667 9.99167 9.3 10.325C9.13333 10.6583 9.05 11.2667 9.05 12.15ZM10 20C8.61667 20 7.31667 19.7375 6.1 19.2125C4.88333 18.6875 3.825 17.975 2.925 17.075C2.025 16.175 1.3125 15.1167 0.7875 13.9C0.2625 12.6833 0 11.3833 0 10C0 8.61667 0.2625 7.31667 0.7875 6.1C1.3125 4.88333 2.025 3.825 2.925 2.925C3.825 2.025 4.88333 1.3125 6.1 0.7875C7.31667 0.2625 8.61667 0 10 0C11.3833 0 12.6833 0.2625 13.9 0.7875C15.1167 1.3125 16.175 2.025 17.075 2.925C17.975 3.825 18.6875 4.88333 19.2125 6.1C19.7375 7.31667 20 8.61667 20 10C20 11.3833 19.7375 12.6833 19.2125 13.9C18.6875 15.1167 17.975 16.175 17.075 17.075C16.175 17.975 15.1167 18.6875 13.9 19.2125C12.6833 19.7375 11.3833 20 10 20ZM10 18C12.2333 18 14.125 17.225 15.675 15.675C17.225 14.125 18 12.2333 18 10C18 7.76667 17.225 5.875 15.675 4.325C14.125 2.775 12.2333 2 10 2C7.76667 2 5.875 2.775 4.325 4.325C2.775 5.875 2 7.76667 2 10C2 12.2333 2.775 14.125 4.325 15.675C5.875 17.225 7.76667 18 10 18Z" fill="#64748B"/>
</svg>
''';

const String _micSvg = '''
<svg width="12" height="16" viewBox="0 0 12 16" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M5.83333 10C5.13889 10 4.54861 9.75694 4.0625 9.27083C3.57639 8.78472 3.33333 8.19444 3.33333 7.5V2.5C3.33333 1.80556 3.57639 1.21528 4.0625 0.729167C4.54861 0.243056 5.13889 0 5.83333 0C6.52778 0 7.11806 0.243056 7.60417 0.729167C8.09028 1.21528 8.33333 1.80556 8.33333 2.5V7.5C8.33333 8.19444 8.09028 8.78472 7.60417 9.27083C7.11806 9.75694 6.52778 10 5.83333 10ZM5 15.8333V13.2708C3.55556 13.0764 2.36111 12.4306 1.41667 11.3333C0.472222 10.2361 0 8.95833 0 7.5H1.66667C1.66667 8.65278 2.07292 9.63542 2.88542 10.4479C3.69792 11.2604 4.68056 11.6667 5.83333 11.6667C6.98611 11.6667 7.96875 11.2604 8.78125 10.4479C9.59375 9.63542 10 8.65278 10 7.5H11.6667C11.6667 8.95833 11.1944 10.2361 10.25 11.3333C9.30556 12.4306 8.11111 13.0764 6.66667 13.2708V15.8333H5ZM5.83333 8.33333C6.06944 8.33333 6.26736 8.25347 6.42708 8.09375C6.58681 7.93403 6.66667 7.73611 6.66667 7.5V2.5C6.66667 2.26389 6.58681 2.06597 6.42708 1.90625C6.26736 1.74653 6.06944 1.66667 5.83333 1.66667C5.59722 1.66667 5.39931 1.74653 5.23958 1.90625C5.07986 2.06597 5 2.26389 5 2.5V7.5C5 7.73611 5.07986 7.93403 5.23958 8.09375C5.39931 8.25347 5.59722 8.33333 5.83333 8.33333Z" fill="#494453"/>
</svg>
''';

const String _sendSvg = '''
<svg width="16" height="14" viewBox="0 0 16 14" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0 13.3333V8.33333L6.66667 6.66667L0 5V0L15.8333 6.66667L0 13.3333Z" fill="white"/>
</svg>
''';

const String _phoneSvg = '''
<svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M12.7125 13.5C11.15 13.5 9.60625 13.1594 8.08125 12.4781C6.55625 11.7969 5.16875 10.8313 3.91875 9.58125C2.66875 8.33125 1.70312 6.94375 1.02188 5.41875C0.340625 3.89375 0 2.35 0 0.7875C0 0.5625 0.075 0.375 0.225 0.225C0.375 0.075 0.5625 0 0.7875 0H3.825C4 0 4.15625 0.059375 4.29375 0.178125C4.43125 0.296875 4.5125 0.4375 4.5375 0.6L5.025 3.225C5.05 3.425 5.04375 3.59375 5.00625 3.73125C4.96875 3.86875 4.9 3.9875 4.8 4.0875L2.98125 5.925C3.23125 6.3875 3.52813 6.83437 3.87188 7.26562C4.21562 7.69688 4.59375 8.1125 5.00625 8.5125C5.39375 8.9 5.8 9.25937 6.225 9.59062C6.65 9.92188 7.1 10.225 7.575 10.5L9.3375 8.7375C9.45 8.625 9.59688 8.54062 9.77812 8.48438C9.95937 8.42813 10.1375 8.4125 10.3125 8.4375L12.9 8.9625C13.075 9.0125 13.2188 9.10312 13.3313 9.23438C13.4438 9.36563 13.5 9.5125 13.5 9.675V12.7125C13.5 12.9375 13.425 13.125 13.275 13.275C13.125 13.425 12.9375 13.5 12.7125 13.5ZM2.26875 4.5L3.50625 3.2625L3.1875 1.5H1.51875C1.58125 2.0125 1.66875 2.51875 1.78125 3.01875C1.89375 3.51875 2.05625 4.0125 2.26875 4.5ZM8.98125 11.2125C9.46875 11.425 9.96562 11.5938 10.4719 11.7188C10.9781 11.8438 11.4875 11.925 12 11.9625V10.3125L10.2375 9.95625L8.98125 11.2125Z" fill="#461599"/>
</svg>
''';

const String _emailSvg = '''
<svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M3 14.25C2.5875 14.25 2.23438 14.1031 1.94063 13.8094C1.64688 13.5156 1.5 13.1625 1.5 12.75V5.25C1.5 4.8375 1.64688 4.48438 1.94063 4.19063C2.23438 3.89688 2.5875 3.75 3 3.75H15C15.4125 3.75 15.7656 3.89688 16.0594 4.19063C16.3531 4.48438 16.5 4.8375 16.5 5.25V12.75C16.5 13.1625 16.3531 13.5156 16.0594 13.8094C15.7656 14.1031 15.4125 14.25 15 14.25H3ZM9 9.375L15 5.625H3L9 9.375ZM9 10.875L3 7.125V12.75H15V7.125L9 10.875Z" fill="#461599"/>
</svg>
''';

const String _whatsappSvg = '''
<svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M9 1.5C4.85786 1.5 1.5 4.52208 1.5 8.25C1.5 9.65908 1.98281 10.9677 2.8094 12.051L2.25 15.75L5.98903 14.3665C6.90405 14.767 7.92493 15 9 15C13.1421 15 16.5 11.9779 16.5 8.25C16.5 4.52208 13.1421 1.5 9 1.5ZM6.90777 5.25C7.03025 5.25 7.15301 5.25449 7.26009 5.25842C7.4078 5.26383 7.52607 5.35312 7.57623 5.48891L8.02755 6.71123C8.0833 6.86219 8.04433 7.03181 7.92767 7.14432L7.49421 7.5625C7.85035 8.21377 8.38982 8.75401 9.04955 9.1134L9.46875 8.6875C9.58067 8.57382 9.74845 8.5359 9.89778 8.59053L11.1335 9.04265C11.2678 9.09178 11.3576 9.20854 11.3656 9.35123C11.3717 9.45944 11.3795 9.58394 11.3795 9.70757C11.3795 10.0649 11.1264 10.5 10.6875 10.5C8.5236 10.5 5.625 8.19758 5.625 5.94253C5.625 5.50305 6.06653 5.25 6.90777 5.25Z" fill="#461599"/>
</svg>
''';

const String _paymentFailedSvg = '''
<svg width="17" height="17" viewBox="0 0 17 17" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M8.33333 12.5C8.56944 12.5 8.76736 12.4201 8.92708 12.2604C9.08681 12.1007 9.16667 11.9028 9.16667 11.6667C9.16667 11.4306 9.08681 11.2326 8.92708 11.0729C8.76736 10.9132 8.56944 10.8333 8.33333 10.8333C8.09722 10.8333 7.89931 10.9132 7.73958 11.0729C7.57986 11.2326 7.5 11.4306 7.5 11.6667C7.5 11.9028 7.57986 12.1007 7.73958 12.2604C7.89931 12.4201 8.09722 12.5 8.33333 12.5ZM7.5 9.16667H9.16667V4.16667H7.5V9.16667ZM8.33333 16.6667C7.18056 16.6667 6.09722 16.4479 5.08333 16.0104C4.06944 15.5729 3.1875 14.9792 2.4375 14.2292C1.6875 13.4792 1.09375 12.5972 0.65625 11.5833C0.21875 10.5694 0 9.48611 0 8.33333C0 7.18056 0.21875 6.09722 0.65625 5.08333C1.09375 4.06944 1.6875 3.1875 2.4375 2.4375C3.1875 1.6875 4.06944 1.09375 5.08333 0.65625C6.09722 0.21875 7.18056 0 8.33333 0C9.48611 0 10.5694 0.21875 11.5833 0.65625C12.5972 1.09375 13.4792 1.6875 14.2292 2.4375C14.9792 3.1875 15.5729 4.06944 16.0104 5.08333C16.4479 6.09722 16.6667 7.18056 16.6667 8.33333C16.6667 9.48611 16.4479 10.5694 16.0104 11.5833C15.5729 12.5972 14.9792 13.4792 14.2292 14.2292C13.4792 14.9792 12.5972 15.5729 11.5833 16.0104C10.5694 16.4479 9.48611 16.6667 8.33333 16.6667ZM8.33333 15C10.1944 15 11.7708 14.3542 13.0625 13.0625C14.3542 11.7708 15 10.1944 15 8.33333C15 6.47222 14.3542 4.89583 13.0625 3.60417C11.7708 2.3125 10.1944 1.66667 8.33333 1.66667C6.47222 1.66667 4.89583 2.3125 3.60417 3.60417C2.3125 4.89583 1.66667 6.47222 1.66667 8.33333C1.66667 10.1944 2.3125 11.7708 3.60417 13.0625C4.89583 14.3542 6.47222 15 8.33333 15Z" fill="#461599"/>
</svg>
''';

const String _refundStatusSvg = '''
<svg width="19" height="19" viewBox="0 0 19 19" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M9.16667 18.3333C7.61111 18.3333 6.18056 17.9792 4.875 17.2708C3.56944 16.5625 2.5 15.6181 1.66667 14.4375V16.6667H0V11.6667H5V13.3333H2.9375C3.60417 14.3333 4.48264 15.1389 5.57292 15.75C6.66319 16.3611 7.86111 16.6667 9.16667 16.6667C10.2083 16.6667 11.184 16.4688 12.0938 16.0729C13.0035 15.6771 13.7951 15.1424 14.4688 14.4688C15.1424 13.7951 15.6771 13.0035 16.0729 12.0938C16.4688 11.184 16.6667 10.2083 16.6667 9.16667H18.3333C18.3333 10.4306 18.0938 11.6181 17.6146 12.7292C17.1354 13.8403 16.4792 14.8125 15.6458 15.6458C14.8125 16.4792 13.8403 17.1354 12.7292 17.6146C11.6181 18.0938 10.4306 18.3333 9.16667 18.3333ZM8.41667 15V13.9167C7.76389 13.7639 7.23264 13.4826 6.82292 13.0729C6.41319 12.6632 6.11111 12.125 5.91667 11.4583L7.29167 10.9167C7.45833 11.4861 7.71875 11.9132 8.07292 12.1979C8.42708 12.4826 8.83333 12.625 9.29167 12.625C9.75 12.625 10.1424 12.5174 10.4688 12.3021C10.7951 12.0868 10.9583 11.75 10.9583 11.2917C10.9583 10.8889 10.7882 10.5625 10.4479 10.3125C10.1076 10.0625 9.5 9.77778 8.625 9.45833C7.80556 9.16667 7.20486 8.81944 6.82292 8.41667C6.44097 8.01389 6.25 7.48611 6.25 6.83333C6.25 6.26389 6.44792 5.74653 6.84375 5.28125C7.23958 4.81597 7.77778 4.51389 8.45833 4.375V3.33333H9.91667V4.375C10.4167 4.41667 10.8715 4.61806 11.2812 4.97917C11.691 5.34028 11.9722 5.76389 12.125 6.25L10.7917 6.79167C10.6806 6.47222 10.5 6.20486 10.25 5.98958C10 5.77431 9.65278 5.66667 9.20833 5.66667C8.72222 5.66667 8.35069 5.77083 8.09375 5.97917C7.83681 6.1875 7.70833 6.47222 7.70833 6.83333C7.70833 7.19444 7.86806 7.47917 8.1875 7.6875C8.50694 7.89583 9.08333 8.13889 9.91667 8.41667C10.9167 8.77778 11.5833 9.20139 11.9167 9.6875C12.25 10.1736 12.4167 10.7083 12.4167 11.2917C12.4167 11.6944 12.3472 12.0486 12.2083 12.3542C12.0694 12.6597 11.8854 12.9201 11.6562 13.1354C11.4271 13.3507 11.1597 13.5243 10.8542 13.6562C10.5486 13.7882 10.2222 13.8889 9.875 13.9583V15H8.41667ZM0 9.16667C0 7.90278 0.239583 6.71528 0.71875 5.60417C1.19792 4.49306 1.85417 3.52083 2.6875 2.6875C3.52083 1.85417 4.49306 1.19792 5.60417 0.71875C6.71528 0.239583 7.90278 0 9.16667 0C10.7222 0 12.1528 0.354167 13.4583 1.0625C14.7639 1.77083 15.8333 2.71528 16.6667 3.89583V1.66667H18.3333V6.66667H13.3333V5H15.3958C14.7292 4 13.8507 3.19444 12.7604 2.58333C11.6701 1.97222 10.4722 1.66667 9.16667 1.66667C8.125 1.66667 7.14931 1.86458 6.23958 2.26042C5.32986 2.65625 4.53819 3.19097 3.86458 3.86458C3.19097 4.53819 2.65625 5.32986 2.26042 6.23958C1.86458 7.14931 1.66667 8.125 1.66667 9.16667H0Z" fill="#461599"/>
</svg>
''';

const String _aepsIssuesSvg = '''
<svg width="15" height="15" viewBox="0 0 15 15" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M8.33333 15V13.3333H10V15H8.33333ZM6.66667 13.3333V9.16667H8.33333V13.3333H6.66667ZM13.3333 10.8333V7.5H15V10.8333H13.3333ZM11.6667 7.5V5.83333H13.3333V7.5H11.6667ZM1.66667 9.16667V7.5H3.33333V9.16667H1.66667ZM0 7.5V5.83333H1.66667V7.5H0ZM7.5 1.66667V0H9.16667V1.66667H7.5ZM1.25 3.75H3.75V1.25H1.25V3.75ZM0 5V0H5V5H0ZM1.25 13.75H3.75V11.25H1.25V13.75ZM0 15V10H5V15H0ZM11.25 3.75H13.75V1.25H11.25V3.75ZM10 5V0H15V5H10ZM11.6667 15V12.5H10V10.8333H13.3333V13.3333H15V15H11.6667ZM8.33333 9.16667V7.5H11.6667V9.16667H8.33333ZM5 9.16667V7.5H3.33333V5.83333H8.33333V7.5H6.66667V9.16667H5ZM5.83333 5V1.66667H7.5V3.33333H9.16667V5H5.83333ZM1.875 3.125V1.875H3.125V3.125H1.875ZM1.875 13.125V11.875H3.125V13.125H1.875ZM11.875 3.125V1.875H13.125V3.125H11.875Z" fill="#461599"/>
</svg>
''';

const String _dmtSvg = '''
<svg width="17" height="17" viewBox="0 0 17 17" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M2.5 13.3333V7.5H4.16667V13.3333H2.5ZM7.5 13.3333V7.5H9.16667V13.3333H7.5ZM0 16.6667V15H16.6667V16.6667H0ZM12.5 13.3333V7.5H14.1667V13.3333H12.5ZM0 5.83333V4.16667L8.33333 0L16.6667 4.16667V5.83333H0ZM3.70833 4.16667H8.33333H12.9583H3.70833ZM3.70833 4.16667H12.9583L8.33333 1.875L3.70833 4.16667Z" fill="#461599"/>
</svg>
''';

const String _kycHelpSvg = '''
<svg width="17" height="14" viewBox="0 0 17 14" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M5.25 7C4.2835 7 3.4585 6.65817 2.775 5.97467C2.09167 5.29117 1.75 4.46625 1.75 3.5C1.75 2.5335 2.09167 1.70842 2.775 1.02475C3.4585 0.341583 4.2835 0 5.25 0C6.2165 0 7.0415 0.341583 7.725 1.02475C8.40833 1.70842 8.75 2.5335 8.75 3.5C8.75 4.46625 8.40833 5.29117 7.725 5.97467C7.0415 6.65817 6.2165 7 5.25 7ZM0 14V11.7C0 11.2 0.1285 10.7417 0.3855 10.325C0.6425 9.90833 0.991667 9.59167 1.433 9.375C2.16633 9.00833 2.80417 8.75 3.3465 8.6C3.88883 8.45 4.52333 8.375 5.25 8.375C5.97667 8.375 6.61117 8.45 7.1535 8.6C7.69583 8.75 8.33367 9.00833 9.067 9.375C9.50833 9.59167 9.8575 9.90833 10.1145 10.325C10.3715 10.7417 10.5 11.2 10.5 11.7V14H0ZM12.875 8.25L9.875 5.25L11.05 4.075L12.875 5.9L16.325 2.45L17.5 3.625L12.875 8.25Z" fill="#461599"/>
</svg>
''';

const String _commissionSvg = '''
<svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M2 2.35L0.9 1.25L2.15 0L18 15.85L16.75 17.1L14.65 15H2C1.45 15 0.979167 14.8042 0.5875 14.4125C0.195833 14.0208 0 13.55 0 13V4C0 3.63333 0.0875 3.3125 0.2625 3.0375C0.4375 2.7625 0.675 2.53333 0.975 2.35H2ZM2 13H12.65L9.65 10H2V13ZM15.175 13L13.175 11H16V7H9.175L7.175 5H16V4H6.175L4.175 2H16C16.55 2 17.0208 2.19583 17.4125 2.5875C17.8042 2.97917 18 3.45 18 4V13H15.175Z" fill="#461599"/>
</svg>
''';

const String _loanStatusSvg = '''
<svg width="19" height="18" viewBox="0 0 19 18" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M6.33333 17.5L4.75 14.8333L1.75 14.1667L2.04167 11.0833L0 8.75L2.04167 6.41667L1.75 3.33333L4.75 2.66667L6.33333 0L9.16667 1.20833L12 0L13.5833 2.66667L16.5833 3.33333L16.2917 6.41667L18.3333 8.75L16.2917 11.0833L16.5833 14.1667L13.5833 14.8333L12 17.5L9.16667 16.2917L6.33333 17.5ZM7.04167 15.375L9.16667 14.4583L11.3333 15.375L12.5 13.375L14.7917 12.8333L14.5833 10.5L16.125 8.75L14.5833 6.95833L14.7917 4.625L12.5 4.125L11.2917 2.125L9.16667 3.04167L7 2.125L5.83333 4.125L3.54167 4.625L3.75 6.95833L2.20833 8.75L3.75 10.5L3.54167 12.875L5.83333 13.375L7.04167 15.375ZM8.29167 11.7083L13 7L11.8333 5.79167L8.29167 9.33333L6.5 7.58333L5.33333 8.75L8.29167 11.7083Z" fill="#461599"/>
</svg>
''';

const String _historySvg = '''
<svg width="15" height="15" viewBox="0 0 15 15" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M7.5 15C5.58333 15 3.91319 14.3646 2.48958 13.0938C1.06597 11.8229 0.25 10.2361 0.0416667 8.33333H1.75C1.94444 9.77778 2.58681 10.9722 3.67708 11.9167C4.76736 12.8611 6.04167 13.3333 7.5 13.3333C9.125 13.3333 10.5035 12.7674 11.6354 11.6354C12.7674 10.5035 13.3333 9.125 13.3333 7.5C13.3333 5.875 12.7674 4.49653 11.6354 3.36458C10.5035 2.23264 9.125 1.66667 7.5 1.66667C6.54167 1.66667 5.64583 1.88889 4.8125 2.33333C3.97917 2.77778 3.27778 3.38889 2.70833 4.16667H5V5.83333H0V0.833333H1.66667V2.79167C2.375 1.90278 3.23958 1.21528 4.26042 0.729167C5.28125 0.243056 6.36111 0 7.5 0C8.54167 0 9.51736 0.197917 10.4271 0.59375C11.3368 0.989583 12.1285 1.52431 12.8021 2.19792C13.4757 2.87153 14.0104 3.66319 14.4062 4.57292C14.8021 5.48264 15 6.45833 15 7.5C15 8.54167 14.8021 9.51736 14.4062 10.4271C14.0104 11.3368 13.4757 12.1285 12.8021 12.8021C12.1285 13.4757 11.3368 14.0104 10.4271 14.4062C9.51736 14.8021 8.54167 15 7.5 15ZM9.83333 11L6.66667 7.83333V3.33333H8.33333V7.16667L11 9.83333L9.83333 11Z" fill="#461599"/>
</svg>
''';
