import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orbit_app/screens/profilesetup.dart';
import 'package:orbit_app/utils/colors.dart';

class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ProfileSetup(),
            ));
      },
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: AppColors.buttonColor,
        surfaceTintColor: AppColors.buttonColor,
        shadowColor: AppColors.buttonColor,
        foregroundColor: AppColors.buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/google.png",
              height: 32,
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              'Continue with Google',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: AppColors.tertiaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
