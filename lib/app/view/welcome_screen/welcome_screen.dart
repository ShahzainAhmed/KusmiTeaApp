import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:second_project/app/data/constants/app_assets.dart';
import 'package:second_project/app/data/constants/app_colors.dart';
import 'package:second_project/app/data/constants/app_typography.dart';
import 'package:second_project/app/view/widgets/main_container.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: Get.height / 1.3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.zero,
                  bottom: Radius.circular(40.r),
                ),
                image: DecorationImage(
                  image: AssetImage(AppAssets.kBerries),
                  fit: BoxFit.cover,
                )),
            child: Column(
              children: [
                SizedBox(height: 100.h),
                BounceInDown(
                  duration: const Duration(milliseconds: 4000),
                  child: Image.asset(AppAssets.kLogoWhite,
                      height: 60.h, fit: BoxFit.cover),
                ),
                SizedBox(height: 30.h),
                AnimatedTextKit(
                  displayFullTextOnTap: true,
                  isRepeatingAnimation: false,
                  animatedTexts: [
                    TyperAnimatedText(
                      "Discover our must-haves to enjoy\n at any time of the day!",
                      speed: const Duration(milliseconds: 60),
                      textStyle: AppTypography.kMedium14.copyWith(
                        color: AppColors.kWhiteColor,
                        letterSpacing: 0,
                        wordSpacing: 0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )
              ],
            ),
          ),
          const MyMainContainer(),
        ],
      ),
    );
  }
}
