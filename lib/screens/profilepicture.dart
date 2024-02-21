import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orbit_app/screens/waitingscreen.dart';
import 'package:orbit_app/utils/colors.dart';
import 'package:orbit_app/utils/custombutton.dart';
import 'package:orbit_app/utils/picupload.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

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
                "Say Cheese!",
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
                "Lets add a profile picture ",
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppColors.tertiaryColor),
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          const PicUploadButton(),
          const SizedBox(height: 30),
          Text(
            "Tap on the button above to choose a photo",
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: AppColors.tertiaryColor,
            ),
          ),
          const SizedBox(),
          const SizedBox(
            height: 120,
          ),
          CustomButton(
            route:
                MaterialPageRoute(builder: (context) => const WaitingScreen()),
            label: "Finish",
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            "By clicking finish you agree to our Terms & Conditions",
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

//dekho na same to same ho gaya thoda aur krunga toh bann jayega hehehe