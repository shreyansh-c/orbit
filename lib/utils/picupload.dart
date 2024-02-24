import 'package:flutter/material.dart';
import 'package:orbit_app/utils/colors.dart';

class PicUploadButton extends StatelessWidget {
  const PicUploadButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Stack(
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
      ),
      iconSize: 180,
      padding: EdgeInsets.zero,
      splashRadius: 180,
    );
  }
}
