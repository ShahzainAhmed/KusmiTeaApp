import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:second_project/app/data/constants/app_colors.dart';
import 'package:second_project/app/data/constants/app_typography.dart';
import 'package:second_project/app/models/best_seller_model.dart';
import 'package:second_project/app/modules/widgets/button.dart';

class BestSellerCard extends StatefulWidget {
  final BestSellerModel bestSellerModel;

  const BestSellerCard({
    super.key,
    required this.bestSellerModel,
  });

  @override
  State<BestSellerCard> createState() => _BestSellerCardState();
}

class _BestSellerCardState extends State<BestSellerCard> {
  bool isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Center(
          child: Container(
            height: 230.h,
            width: 250.w,
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 30.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.r),
              color: AppColors.kWhiteColor,
              boxShadow: [
                BoxShadow(
                  color: AppColors.kGreyColor.withOpacity(0.3),
                  blurRadius: 10,
                  spreadRadius: 1,
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.bestSellerModel.title,
                  style: AppTypography.kBold20,
                ),
                Text(
                  widget.bestSellerModel.description,
                  style: AppTypography.kLight10
                      .copyWith(color: AppColors.kGreyColor),
                ),
                SizedBox(height: 50.h),
                Text(widget.bestSellerModel.price,
                    style: AppTypography.kMedium20),
               const Spacer(),
                Row(
                  children: [
                    RoundButton(
                      title: "Add to Cart",
                      onTap: () {},
                    ),
                    SizedBox(width: 10.w),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: AppColors.kWhiteColor,
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.kGreyColor.withOpacity(0.1),
                              spreadRadius: 2,
                              blurRadius: 5,
                            )
                          ]),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            isFavorited = !isFavorited;
                          });
                        },
                        icon: const Icon(Icons.favorite),
                        color: isFavorited
                            ? AppColors.kPrimaryColor
                            : AppColors.kGreyColor,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
          right: -20,
          top: 130,
          child: Image.asset(widget.bestSellerModel.image, height: 90.h),
        )
      ],
    );
  }
}
