import 'package:flutter/material.dart';
import 'package:movie_discovery_app/core/constants/app_colors.dart';
import 'package:movie_discovery_app/features/more/presentation/widgets/add_profile_widget.dart';

class ProfilesSection extends StatelessWidget {
  const ProfilesSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Profile(
              image: 'assets/images/blue_profile_image.png',
              name: 'Emanalo',
              height: 68.72,
              width: 73,
            ),
            Profile(
              image: 'assets/images/yellow_profile_image.png',
              name: 'Onyeka',
              height: 60,
              width: 65,
            ),
            Profile(
              image: 'assets/images/red_profile_image.png',
              name: 'Thelma',
              height: 62,
              width: 62,
            ),
            Profile(
              image: 'assets/images/kids_profile_image.png',
              name: 'Kids',
              height: 59.31,
              width: 64.48,
            ),
            AddProfile(),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.edit,
              size: 12,
              color: AppColors.secondaryBackgroundColor,
            ),
            const SizedBox(width: 6),
            Text(
              'Manage Profiles',
              style: TextStyle(color: AppColors.primaryFontColor, fontSize: 15),
            ),
          ],
        ),
      ],
    );
  }
}

class Profile extends StatelessWidget {
  final String image;
  final String name;
  final double height;
  final double width;

  const Profile({
    required this.image,
    required this.name,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 68,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              image,
              width: width,
              height: height,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 7),
          Text(
            name,
            style: const TextStyle(
              color: AppColors.primaryFontColor,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
