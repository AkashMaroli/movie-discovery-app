import 'package:flutter/material.dart';
import 'package:movie_discovery_app/features/more/presentation/widgets/menu_section.dart';
import 'package:movie_discovery_app/features/more/presentation/widgets/profile_section.dart';
import 'package:movie_discovery_app/features/more/presentation/widgets/share_section_with_social_button.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            ProfilesSection(),
            const SizedBox(height: 20),
            const ShareSection(),
            const MenuSection(),
          ],
        ),
      ),
    );
  }
}
