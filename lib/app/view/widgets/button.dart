import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:second_project/app/data/constants/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  final TextStyle textStyle;
  final double? height;
  final String title;
  final VoidCallback onTap;

  const PrimaryButton({
    super.key,
    required this.title,
    required this.onTap,
    required this.textStyle,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding:
              EdgeInsets.symmetric(vertical: height ?? 17.h, horizontal: 20.w),
          backgroundColor: AppColors.kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
        onPressed: onTap,
        child: Center(
          child: Text(
            title,
            style: textStyle,
          ),
        ));
  }
}
