import 'package:flutter/material.dart';
import 'package:movie_discovery_app/core/constants/app_colors.dart';
import 'package:movie_discovery_app/features/username/presentation/widgets/add_profile_button.dart';
import 'package:movie_discovery_app/features/username/presentation/widgets/profile_widgets.dart';

class UsernameScreen extends StatelessWidget {
  const UsernameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryBackgroundColor,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 13),
          child: Image.asset(
            width: 138,
            height: 37.2,
            "assets/logo/netflix_home_logo.png",
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 13, right: 25),
            child: Icon(
              Icons.edit_rounded,
              size: 24,
              color: AppColors.secondaryBackgroundColor,
            ),
          ),
        ],
      ),
      body: Scaffold(
        backgroundColor: AppColors.primaryBackgroundColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ProfileWidgets(
                  title: "Emenalo",
                  imagepath: "assets/images/blue_profile_image.png",
                ),
                SizedBox(width: 25),
                ProfileWidgets(
                  title: "Onyeka",
                  imagepath: "assets/images/yellow_profile_image.png",
                ),
              ],
            ),
            SizedBox(height: 22),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ProfileWidgets(
                  title: "Thelma",
                  imagepath: "assets/images/red_profile_image.png",
                ),
                SizedBox(width: 25),
                ProfileWidgets(
                  title: "Kids",
                  imagepath: "assets/images/kids_profile_image.png",
                ),
              ],
            ),
            AddProfileButton(),
          ],
        ),
      ),
    );
  }
}
