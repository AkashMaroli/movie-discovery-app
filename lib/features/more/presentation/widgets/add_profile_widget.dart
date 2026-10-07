import 'package:flutter/material.dart';
import 'package:movie_discovery_app/core/constants/app_colors.dart';

class AddProfile extends StatelessWidget {
  const AddProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: 68,
      child: Column(
        children: [
          Container(
            width: 63,
            height: 58,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.appteritaryColor, width: 1),
              borderRadius: BorderRadius.circular(2),
            ),
            child: const Icon(
              Icons.add,
              color: AppColors.secondaryBackgroundColor,
              size: 34,
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
