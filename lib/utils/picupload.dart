import 'package:flutter/material.dart';
import 'package:orbit_app/utils/colors.dart';

class PicUploadButton extends StatelessWidget {
  const PicUploadButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: AppColors.buttonColor,
            surfaceTintColor: AppColors.buttonColor,
            shadowColor: AppColors.buttonColor,
            foregroundColor: AppColors.buttonColor,
            shape: const CircleBorder()),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.buttonColor),
              ),
              child: ClipOval(
                child: Image.asset(
                  'assets/avatar.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ));
  }
}
