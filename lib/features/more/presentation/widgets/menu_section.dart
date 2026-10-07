import 'package:flutter/material.dart';
import 'package:movie_discovery_app/core/constants/app_colors.dart';

class MenuSection extends StatelessWidget {
  const MenuSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 38,
          decoration: const BoxDecoration(
            color: AppColors.primaryBackgroundColor,
            border: Border(
              bottom: BorderSide(width: 0.4, color: AppColors.appteritaryColor),
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            children: [
              const Icon(
                Icons.check,
                color: AppColors.secondaryBackgroundColor,
                size: 30,
              ),
              const SizedBox(width: 8),
              const Text(
                'My List',
                style: TextStyle(
                  color: AppColors.secondaryBackgroundColor,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        MenuItem(title: 'App Settings'),
        MenuItem(title: 'Account'),
        MenuItem(title: 'Help'),
        MenuItem(title: 'Sign Out'),
      ],
    );
  }
}

class MenuItem extends StatelessWidget {
  final String title;

  const MenuItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 34,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: const TextStyle(
              color: AppColors.secondaryBackgroundColor,
              fontSize: 14.72,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
