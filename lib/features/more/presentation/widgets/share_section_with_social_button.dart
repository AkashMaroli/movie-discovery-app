import 'package:flutter/material.dart';
import 'package:movie_discovery_app/core/constants/app_colors.dart';

class ShareSection extends StatelessWidget {
  const ShareSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.reviewHighlight,
      padding: const EdgeInsets.fromLTRB(16, 10, 16, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                child: Stack(
                  alignment: AlignmentGeometry.center,
                  children: [
                    Icon(
                      Icons.chat_bubble_outline,
                      color: AppColors.secondaryBackgroundColor,
                      size: 24,
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: AppColors.secondaryBackgroundColor,
                      size: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              const Text(
                'Tell friends about Netflix.',
                style: TextStyle(
                  color: AppColors.secondaryBackgroundColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
            'Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis '
            'non accumsan accumsan quis. Massa,',
            style: TextStyle(
              color: AppColors.secondaryBackgroundColor,
              fontSize: 11,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Terms & Conditions',
            style: TextStyle(
              color: AppColors.secondaryBackgroundColor,
              fontSize: 11,
              decoration: TextDecoration.underline,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 35,
                  color: AppColors.primaryBackgroundColor,
                ),
              ),
              const SizedBox(width: 8),
              SizedBox(
                height: 35,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.secondaryBackgroundColor,
                    foregroundColor: AppColors.primaryBackgroundColor,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  child: const Text(
                    'Copy Link',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          const SocialButtons(),
        ],
      ),
    );
  }
}

class SocialButtons extends StatelessWidget {
  const SocialButtons();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SocialIcon(
            iconpath: "assets/images/whatsapp.png",
            backgroundColor: AppColors.whatsappIcon,
          ),
          Container(width: 1, height: 40, color: AppColors.appteritaryColor),
          SocialIcon(
            iconpath: 'assets/images/facebook.png',
            backgroundColor: AppColors.facebookIcon,
          ),
          Container(width: 1, height: 40, color: AppColors.appteritaryColor),
          SocialIcon(
            iconpath: 'assets/images/gmail.png',
            backgroundColor: AppColors.secondaryBackgroundColor,
          ),
          Container(width: 1, height: 40, color: AppColors.appteritaryColor),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.more_horiz,
                color: AppColors.secondaryBackgroundColor,
                size: 27,
              ),
              Text(
                'More',
                style: TextStyle(
                  color: AppColors.secondaryBackgroundColor,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  final String iconpath;
  final Color backgroundColor;
  final Color iconColor;

  const SocialIcon({
    required this.iconpath,
    required this.backgroundColor,
    this.iconColor = AppColors.secondaryBackgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36,
      height: 33,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Image.asset(iconpath, width: 36, height: 33),
    );
  }
}
