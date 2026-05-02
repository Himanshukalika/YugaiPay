import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditAddressDetailsScreen extends StatefulWidget {
  const EditAddressDetailsScreen({super.key});

  @override
  State<EditAddressDetailsScreen> createState() => _EditAddressDetailsScreenState();
}

class _EditAddressDetailsScreenState extends State<EditAddressDetailsScreen> {
  String selectedCategory = 'HOME';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF1A1D3A)),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Add Address',
          style: GoogleFonts.poppins(
            color: const Color(0xFF1A1D3A),
            fontWeight: FontWeight.w600,
            fontSize: 16,
            height: 1.0,
          ),
        ),
        centerTitle: false,
        titleSpacing: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.help_outline, color: Color(0xFF1A1D3A)),
            onPressed: () {},
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              _buildLabeledTextField(
                label: 'House / Flat / Floor Number',
                hintText: 'EX. #30, 2nd Floor, A-1',
              ),
              const SizedBox(height: 24),
              _buildLabeledTextField(
                label: 'Complete Address',
                hintText: 'EX. Block X, Sector Y, Gurgaon, Har.....',
              ),
              const SizedBox(height: 24),
              _buildLabeledTextField(
                label: 'Landmark (Optional)',
                hintText: 'EX. Near ABC Mall',
              ),
              const SizedBox(height: 32),
              Text(
                'Save Address As',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF1A1D3A),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildCategoryButton('HOME', Icons.home_outlined),
                  _buildCategoryButton('WORK', Icons.work_outline),
                  _buildCategoryButton('OTHER', Icons.location_on_outlined),
                ],
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(24, 0, 24, 30),
        child: Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 61,
                child: OutlinedButton(
                  onPressed: () => Navigator.pop(context),
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Color(0xFFEBEBEB), width: 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  child: Text(
                    'CANCEL',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF1A1D3A),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Container(
                height: 61,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.08),
                      blurRadius: 4,
                      spreadRadius: 0,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1A1D3A),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    elevation: 0,
                  ),
                  child: Text(
                    'NEXT',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
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

  Widget _buildLabeledTextField({required String label, required String hintText}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF1A1D3A),
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color(0xFF1A1D3A).withValues(alpha: 0.2), width: 1),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          alignment: Alignment.centerLeft,
          child: TextField(
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: const Color(0xFF1A1D3A),
            ),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: GoogleFonts.poppins(
                color: const Color(0xFF7B7B8B).withValues(alpha: 0.5),
                fontSize: 14,
              ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.zero,
              isCollapsed: true,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCategoryButton(String label, IconData icon) {
    bool isSelected = selectedCategory == label;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategory = label;
        });
      },
      child: Container(
        width: 110,
        height: 45,
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFBA68CB).withValues(alpha: 0.1) : Colors.white,
          borderRadius: BorderRadius.circular(32),
          border: Border.all(
            color: const Color(0xFFBA68CB),
            width: 1,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: const Color(0xFFBA68CB), size: 18),
            const SizedBox(width: 8),
            Text(
              label,
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: const Color(0xFFBA68CB),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
