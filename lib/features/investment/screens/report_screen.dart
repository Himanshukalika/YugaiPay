import 'package:flutter/material.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double vh = MediaQuery.of(context).size.height / 100;
    final double vw = MediaQuery.of(context).size.width / 100;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 12.32 * vh, // 105px
            left: 6.11 * vw, // 24px
            right: 6.11 * vw, // 24px
          ),
          child: Column(
            children: [
              SizedBox(
                width: 87.79 * vw, // 345px
                height: 2.82 * vh, // 24px
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Color(0xFF1A1D3A),
                        size: 24,
                      ),
                    ),
                    const Icon(
                      Icons.help_outline,
                      color: Color(0xFF1A1D3A),
                      size: 24,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
