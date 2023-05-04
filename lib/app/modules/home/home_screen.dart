import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:second_project/app/data/constants/app_assets.dart';
import 'package:second_project/app/data/constants/app_colors.dart';
import 'package:second_project/app/data/constants/app_typography.dart';
import 'package:second_project/app/modules/widgets/main_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                Text(
                  "KUSMI TEA",
                  style: AppTypography.kMedium26
                      .copyWith(color: AppColors.kWhiteColor),
                ),
                Text(
                  "PARIS",
                  style: AppTypography.kMedium16
                      .copyWith(color: AppColors.kWhiteColor),
                ),
                SizedBox(height: 30.h),
                Text(
                  "Discover our must-haves to enjoy\n at any time of the day!",
                  style: AppTypography.kLight12
                      .copyWith(color: AppColors.kWhiteColor),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const MyMainContainer(),
        ],
      ),
    );
  }
}
