import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:second_project/app/data/constants/app_colors.dart';
import 'package:second_project/app/data/constants/app_typography.dart';
import 'package:second_project/app/models/best_seller_model.dart';
import 'package:second_project/app/view/detail_screen/detail_screen.dart';
import 'package:second_project/app/view/widgets/button.dart';

class TeaTypeCard extends StatelessWidget {
  final VoidCallback onTap;
  final BestSellerModel bestSellerModel;
  const TeaTypeCard(
      {super.key, required this.bestSellerModel, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.r),
          boxShadow: [
            BoxShadow(
              color: AppColors.kGreyColor.withOpacity(0.3),
              blurRadius: 10,
              spreadRadius: 1,
            )
          ],
          color: AppColors.kWhiteColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Image.asset(bestSellerModel.image, height: 50.h),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(bestSellerModel.title, style: AppTypography.kExtraBold12),
                SizedBox(height: 4.h),
                Text(
                  bestSellerModel.description,
                  style: AppTypography.kMedium10
                      .copyWith(color: AppColors.kGreyColor),
                ),
                SizedBox(height: 4.h),
                Text(bestSellerModel.price, style: AppTypography.kBold12),
              ],
            ),
            Column(
              children: [
                PrimaryButton(
                  textStyle: AppTypography.kMedium10
                      .copyWith(color: AppColors.kWhiteColor),
                  title: "Buy",
                  onTap: () => Get.to(
                    DetailScreen(bestSellerModel: bestSellerModel),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
