import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orbit_app/screens/profilepicture.dart';
import 'package:orbit_app/utils/colors.dart';
import 'package:orbit_app/utils/custombutton.dart';
import 'package:orbit_app/utils/textfield.dart';

class ProfileSetup extends StatelessWidget {
  const ProfileSetup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset('assets/doodle.png'),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Profile Setup",
                style: GoogleFonts.poppins(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          const CustomTextField(
            labelText: 'First Name',
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomTextField(
            labelText: 'Last Name',
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomTextField(
            labelText: 'Mobile Number',
          ),
          const SizedBox(
            height: 50,
          ),
          const CustomTextField(
            labelText: 'User Name',
          ),
          const SizedBox(
            height: 50,
          ),
          CustomButton(
            route:
                MaterialPageRoute(builder: (context) => const ProfilePicture()),
            label: "Next",
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            "By clicking next you agree to our Terms & Conditions",
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
