import 'package:bounce/bounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:second_project/app/data/constants/app_colors.dart';
import 'package:second_project/app/data/constants/app_typography.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Bounce(
        child: Container(
          height: 50.h,
          width: Get.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60.r),
            color: AppColors.kBlackColor,
          ),
          child: Center(
            child: Text(
              "Add to cart",
              style:
                  AppTypography.kBold16.copyWith(color: AppColors.kWhiteColor),
            ),
          ),
        ),
      ),
    );
  }
}
