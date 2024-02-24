import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orbit_app/utils/colors.dart';

class SecondaryButton extends StatelessWidget {
  final Route route;
  final String label;

  const SecondaryButton({Key? key, required this.route, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(route);
      },
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: AppColors.buttonColor,
        surfaceTintColor: AppColors.buttonColor,
        shadowColor: AppColors.buttonColor,
        foregroundColor: AppColors.buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 0, right: 0),
              child: Text(
                label,
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
