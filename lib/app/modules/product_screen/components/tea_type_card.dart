import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:second_project/app/data/constants/app_assets.dart';
import 'package:second_project/app/data/constants/app_colors.dart';
import 'package:second_project/app/data/constants/app_typography.dart';
import 'package:second_project/app/models/best_seller_model.dart';
import 'package:second_project/app/modules/product_screen/components/best_seller_card.dart';
import 'package:second_project/app/modules/widgets/button.dart';

class TeaTypeCard extends StatelessWidget {
  final BestSellerModel bestSellerModel;
  const TeaTypeCard({super.key, required this.bestSellerModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
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
              Image.asset(bestSellerModel.image, height: 60.h),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(bestSellerModel.teaType, style: AppTypography.kBold12),
              Text(
                bestSellerModel.description,
                style: AppTypography.kLight10
                    .copyWith(color: AppColors.kGreyColor),
              ),
              Text(bestSellerModel.price, style: AppTypography.kBold12),
            ],
          ),
          Column(
            children: [
              RoundButton(
                title: "Buy",
                onTap: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}
