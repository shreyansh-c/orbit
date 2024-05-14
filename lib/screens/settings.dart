import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orbit_app/utils/buttonsec.dart';
import 'package:orbit_app/utils/colors.dart';
import 'package:orbit_app/utils/picupload.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Container(
                      height: 28,
                      width: 28,
                      child: Image.asset(
                        'assets/back.png',
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 130,
                  ),
                  Text(
                    "Settings",
                    style: GoogleFonts.poppins(
                      fontSize: 45,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            const PicUploadButton(),
            const SizedBox(height: 30),
            Text(
              "Tap on photo to change it",
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: AppColors.tertiaryColor,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              height: 45,
              width: 330,
              decoration: BoxDecoration(
                  color: AppColors.buttonColor,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(6)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 11, bottom: 11),
                child: Text(
                  "Shreyansh Chaudhary",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 45,
              width: 330,
              decoration: BoxDecoration(
                  color: AppColors.buttonColor,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(6)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 11, bottom: 11),
                child: Text(
                  "+918176XXXXXX",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 45,
              width: 330,
              decoration: BoxDecoration(
                  color: AppColors.buttonColor,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(6)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 11, bottom: 11),
                child: Text(
                  "isthatshreyansh",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60, right: 40),
              child: Row(
                children: [
                  SecondaryButton(
                      route: MaterialPageRoute(
                          builder: (context) => const SettingsPage()),
                      label: "Save"),
                  const SizedBox(
                    width: 20,
                  ),
                  SecondaryButton(
                    route: MaterialPageRoute(
                        builder: (context) => const SettingsPage()),
                    label: "Log Out",
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
