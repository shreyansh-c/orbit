import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orbit_app/screens/homescreen.dart';
import 'package:orbit_app/utils/colors.dart';

class WaitingScreen extends StatelessWidget {
  const WaitingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });

    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset('assets/doodle.png'),
          ),
          const SizedBox(height: 120),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Finishing Setup",
                style: GoogleFonts.poppins(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "You will be redirected soon...",
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppColors.tertiaryColor),
              ),
            ),
          ),
          const SizedBox(
            height: 140,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 45, right: 45),
            child: Text(
              "Ah, well, I would have played jazz elevator music if I weren't a solo developer.",
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: AppColors.tertiaryColor,
              ),
            ),
          ),
          const SizedBox(
            height: 200,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset('assets/doodlesec.png'),
          ),
        ],
      ),
    );
  }
}
