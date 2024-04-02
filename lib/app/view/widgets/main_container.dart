import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:second_project/app/data/constants/app_assets.dart';
import 'package:second_project/app/data/constants/app_colors.dart';
import 'package:second_project/app/data/constants/app_typography.dart';
import 'package:second_project/app/view/home/home_screen.dart';
import 'package:second_project/app/view/widgets/button.dart';

class MyMainContainer extends StatelessWidget {
  const MyMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          right: 0,
          bottom: 50.h,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.w),
            child: BounceInUp(
              duration: const Duration(milliseconds: 2800),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 35.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 20.r,
                        color: AppColors.kGreyColor.withOpacity(0.7)),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BounceInUp(
                      duration: const Duration(milliseconds: 2600),
                      child: Text(
                        "Discover\nnew\nflavors",
                        style: AppTypography.kExtraBold28
                            .copyWith(color: AppColors.kBlackColor, height: 1),
                      ),
                    ),
                    SizedBox(height: 30.h),
                    BounceInUp(
                      duration: const Duration(milliseconds: 2500),
                      child: PrimaryButton(
                        onTap: () {
                          Get.to(const HomeScreen());
                        },
                        height: 15.h,
                        title: "Take a look",
                        textStyle: AppTypography.kExtraBold14
                            .copyWith(color: AppColors.kWhiteColor),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 140.h,
          right: 10.w,
          child: BounceInUp(
            duration: const Duration(milliseconds: 2400),
            child: ClipRRect(
              child: Image.asset(
                AppAssets.kTea,
                fit: BoxFit.cover,
                height: 110.h,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
