import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_discovery_app/core/constants/app_colors.dart';
import 'package:movie_discovery_app/features/bottom_nav_bar/presentation/cubit/bottom_navbar_cubit.dart';
import 'package:movie_discovery_app/features/coming_soon/presentation/coming_soon_screen.dart';
import 'package:movie_discovery_app/features/download/presentation/download_screen.dart';
import 'package:movie_discovery_app/features/home/presentation/home_screen.dart';
import 'package:movie_discovery_app/features/more/presentation/more_screen.dart';
import 'package:movie_discovery_app/features/search/presentation/search_screen.dart';

class BottomNavScreen extends StatelessWidget {
  BottomNavScreen({super.key});
  final pages = [
    HomeScreen(),
    SearchScreen(),
    ComingSoonScreen(),
    DownloadScreen(),
    MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavbarCubit, int>(
      builder: (context, index) {
        return Scaffold(
          backgroundColor: AppColors.primaryBackgroundColor,
          body: pages[index],
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: AppColors.primaryBackgroundColor,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColors.secondaryBackgroundColor,
            unselectedItemColor: AppColors.appteritaryColor,
            selectedLabelStyle: TextStyle(
              color: AppColors.secondaryBackgroundColor,
            ),
            unselectedLabelStyle: TextStyle(color: AppColors.appteritaryColor),
            currentIndex: index,
            onTap: (value) {
              context.read<BottomNavbarCubit>().changeNavTab(value);
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Search",
                backgroundColor: Colors.green,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.video_library),
                label: "Coming Soon",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.vertical_align_bottom),
                label: 'Downloads',
              ),
              BottomNavigationBarItem(icon: Icon(Icons.menu), label: "More"),
            ],
          ),
        );
      },
    );
  }
}
