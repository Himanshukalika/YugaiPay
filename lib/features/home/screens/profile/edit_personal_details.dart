import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditPersonalDetailsScreen extends StatefulWidget {
  const EditPersonalDetailsScreen({super.key});

  @override
  State<EditPersonalDetailsScreen> createState() => _EditPersonalDetailsScreenState();
}

class _EditPersonalDetailsScreenState extends State<EditPersonalDetailsScreen> {
  bool sameAsWhatsApp = false;
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _shopNameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _whatsappController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _fullNameController.dispose();
    _shopNameController.dispose();
    _phoneController.dispose();
    _whatsappController.dispose();
    _emailController.dispose();
    super.dispose();
  }

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
          'Edit Details',
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
              const SizedBox(height: 40),
              _buildTextField(
                controller: _fullNameController,
                icon: Icons.person_outline,
                label: 'Full name',
              ),
              const SizedBox(height: 40),
              _buildTextField(
                controller: _shopNameController,
                icon: Icons.storefront_outlined,
                label: 'Shop Name',
              ),
              const SizedBox(height: 40),
              _buildTextField(
                controller: _phoneController,
                icon: Icons.phone_outlined,
                label: 'Phone Number',
              ),
              const SizedBox(height: 12),
              GestureDetector(
                onTap: () {
                  setState(() {
                    sameAsWhatsApp = !sameAsWhatsApp;
                  });
                },
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                      height: 20,
                      child: Checkbox(
                        value: sameAsWhatsApp,
                        onChanged: (val) {
                          setState(() {
                            sameAsWhatsApp = val ?? false;
                          });
                        },
                        activeColor: const Color(0xFF1A1D3A),
                        checkColor: Colors.white,
                        side: const BorderSide(color: Color(0xFF1A1D3A), width: 1.5),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      'Same as WhatsApp Number',
                      style: GoogleFonts.outfit(
                        fontSize: 12,
                        color: const Color(0xFF1A1D3A),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              _buildTextField(
                controller: _whatsappController,
                icon: Icons.phone_outlined,
                label: 'WhatsApp Number',
              ),
              const SizedBox(height: 40),
              _buildTextField(
                controller: _emailController,
                icon: Icons.mail_outline,
                label: 'E-mail address',
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(24, 0, 24, 30),
        child: Container(
          width: double.infinity,
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
              'UPDATE CHANGES',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.5,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required IconData icon,
    required String label,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Icon(icon, color: const Color(0xFF1A1D3A), size: 28),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: TextField(
            controller: controller,
            style: GoogleFonts.outfit(
              fontSize: 16,
              color: const Color(0xFF1A1D3A),
              fontWeight: FontWeight.w500,
            ),
            decoration: InputDecoration(
              labelText: label,
              labelStyle: GoogleFonts.outfit(
                color: const Color(0xFF7B7B8B),
                fontSize: 16,
              ),
              hintText: label,
              hintStyle: GoogleFonts.outfit(
                color: const Color(0xFF7B7B8B),
                fontSize: 16,
              ),
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF7B7B8B), width: 1),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF1A1D3A), width: 1.5),
              ),
              contentPadding: const EdgeInsets.only(bottom: 8),
              filled: false,
            ),
          ),
        ),
      ],
    );
  }
}
