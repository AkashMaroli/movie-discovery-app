import 'package:flutter/material.dart';
import 'package:movie_discovery_app/core/constants/app_colors.dart';

class AddProfileButton extends StatelessWidget {
  const AddProfileButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 100,
          height: 121,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add_circle,
                size: 50,
                color: AppColors.secondaryBackgroundColor,
              ),
              SizedBox(height: 13),
              Text(
                'Add Profile',
                style: TextStyle(
                  fontSize: 13.25,
                  fontWeight: FontWeight.w400,
                  color: AppColors.primaryFontColor,
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 25),

        SizedBox(width: 100, height: 121),
      ],
    );
  }
}
