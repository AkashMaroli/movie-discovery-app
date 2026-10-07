import 'package:flutter/material.dart';
import 'package:movie_discovery_app/core/constants/app_colors.dart';
import 'package:movie_discovery_app/features/home/presentation/home_screen.dart';
import 'package:movie_discovery_app/features/username/presentation/username_screen.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({super.key});

  @override
  State<LogoScreen> createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      return Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => UsernameScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackgroundColor,
      body: Center(
        child: Image.asset(
          width: 207,
          height: 55.79,
          "assets/logo/netflix_splash_logo.png",
        ),
      ),
    );
  }
}
