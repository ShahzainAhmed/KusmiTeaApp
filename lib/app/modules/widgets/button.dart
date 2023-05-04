import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:second_project/app/data/constants/app_colors.dart';
import 'package:second_project/app/data/constants/app_typography.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final bool loading;
  final VoidCallback onTap;

  const RoundButton({
    super.key,
    required this.title,
    this.loading = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
            backgroundColor: AppColors.kPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          onPressed: onTap,
          child: Center(
            child: Text(
              title,
              style:
                  AppTypography.kBold12.copyWith(color: AppColors.kWhiteColor),
            ),
          )),
    );
  }
}


/* 
Container(
        height: 40.h,
        width: double.maxFinite,
        decoration: BoxDecoration(
            color: AppColors.kPrimaryColor,
            borderRadius: BorderRadius.circular(15.r),
            boxShadow: [
              BoxShadow(
                color: AppColors.kPrimaryColor,
                blurRadius: 5.r,
                spreadRadius: 1.r,
              )
            ]),
        child: Center(
          child: loading
              ? const CircularProgressIndicator(
                  color: AppColors.kWhiteColor,
                )
              : Text(
                  title,
                  style: AppTypography.kBold14
                      .copyWith(color: AppColors.kWhiteColor),
                ),
        ),
      )
 */