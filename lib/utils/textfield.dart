import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orbit_app/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;

  const CustomTextField({Key? key, required this.labelText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<TextInputFormatter> inputFormatters = [];
    if (labelText == 'Mobile Number') {
      inputFormatters.add(FilteringTextInputFormatter.digitsOnly);
    }

    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.buttonColor,
            borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
          ),
          child: TextField(
            decoration: InputDecoration(
                labelText: labelText,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                labelStyle: GoogleFonts.poppins(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                  color: AppColors.secondaryColor,
                ),
                border: InputBorder.none),
            showCursor: false,
          ),
        ),
      ),
    );
  }
}
