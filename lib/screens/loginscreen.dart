import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orbit_app/utils/colors.dart';
import 'package:orbit_app/utils/googlebutton.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset('assets/doodle.png'),
          ),
          const SizedBox(height: 200),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              "Just sign in to get started",
              style: GoogleFonts.poppins(
                fontSize: 40,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 270),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 45),
            child: GoogleSignInButton(),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "By signing in you agree to our Terms & Conditions",
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: AppColors.tertiaryColor,
            ),
          )
        ],
      ),
    );
  }
}
