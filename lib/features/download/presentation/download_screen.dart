import 'package:flutter/material.dart';
import 'package:movie_discovery_app/core/constants/app_colors.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(11),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: const Text(
                'Smart Downloads',
                style: TextStyle(
                  color: AppColors.primaryFontColor,
                  fontSize: 14.72,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),

            const SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: const Text(
                'Introducing Downloads For You',
                style: TextStyle(
                  color: AppColors.primaryFontColor,
                  fontSize: 19.63,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                'Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis '
                'non accumsan accumsan quis. Massa, id ut ipsum aliquam enim '
                'non posuere pulvinar diam.',
                style: TextStyle(
                  color: AppColors.primaryFontColor,
                  fontSize: 10.78,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),

            const SizedBox(height: 20),

            Center(
              child: Container(
                width: 177,
                height: 177,
                decoration: const BoxDecoration(
                  color: AppColors.appCircleFiller,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            const SizedBox(height: 18),
            SizedBox(
              width: double.infinity,
              height: 41,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.buttonColor,
                  foregroundColor: AppColors.secondaryBackgroundColor,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                child: const Text(
                  'SETUP',
                  style: TextStyle(fontSize: 14, letterSpacing: 0.71),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Center(
              child: SizedBox(
                width: 239,
                height: 33,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.appCircleFiller,
                    foregroundColor: AppColors.secondaryBackgroundColor,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  child: const Text(
                    'Find Something to Download',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
