import 'package:flutter/material.dart';
import 'package:movie_discovery_app/core/constants/app_colors.dart';
import 'package:movie_discovery_app/features/bottom_nav_bar/presentation/bottom_nav_screen.dart';
import 'package:movie_discovery_app/features/home/presentation/home_screen.dart';

class ProfileWidgets extends StatelessWidget {
  final String title;
  final String imagepath;
  const ProfileWidgets({
    required this.title,
    required this.imagepath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => BottomNavScreen()),
        );
      },
      child: SizedBox(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(7),
              child: Image.asset(width: 100, height: 92, imagepath),
            ),
            Text(title),
          ],
        ),
      ),
    );
  }
}
