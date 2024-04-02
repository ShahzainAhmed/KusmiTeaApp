import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:like_button/like_button.dart';
import 'package:second_project/app/data/constants/app_colors.dart';
import 'package:second_project/app/data/constants/app_typography.dart';
import 'package:second_project/app/models/best_seller_model.dart';
import 'package:second_project/app/view/detail_screen/detail_screen.dart';
import 'package:second_project/app/view/widgets/button.dart';

class BestSellerCard extends StatefulWidget {
  final VoidCallback onTap;
  final BestSellerModel bestSellerModel;

  const BestSellerCard(
      {super.key, required this.bestSellerModel, required this.onTap});

  @override
  State<BestSellerCard> createState() => _BestSellerCardState();
}

class _BestSellerCardState extends State<BestSellerCard> {
  bool isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Stack(
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
                    style: AppTypography.kBold20.copyWith(letterSpacing: 0),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 80.w, top: 8.h),
                    child: Text(
                      widget.bestSellerModel.description,
                      style: AppTypography.kLight12
                          .copyWith(color: AppColors.kGreyColor),
                    ),
                  ),
                  const Spacer(),
                  Text(widget.bestSellerModel.price,
                      style: AppTypography.kBold20),
                  SizedBox(height: 16.h),
                  Row(
                    children: [
                      PrimaryButton(
                        title: "Add to Cart",
                        textStyle: AppTypography.kMedium10
                            .copyWith(color: AppColors.kWhiteColor),
                        onTap: () => Get.to(
                          DetailScreen(bestSellerModel: widget.bestSellerModel),
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 5.h, horizontal: 5.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            color: AppColors.kWhiteColor,
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.kGreyColor.withOpacity(0.1),
                                spreadRadius: 2,
                                blurRadius: 5,
                              )
                            ]),
                        child: LikeButton(
                          size: 24.r,
                          circleColor: const CircleColor(
                            start: AppColors.kPrimaryColor,
                            end: AppColors.kPrimaryColor,
                          ),
                          bubblesColor: const BubblesColor(
                            dotPrimaryColor: AppColors.kPrimaryColor,
                            dotSecondaryColor: AppColors.kPrimaryColor,
                          ),
                          likeBuilder: (bool isLiked) {
                            return Icon(
                              isLiked ? Icons.favorite : Icons.favorite_outline,
                              color: isLiked
                                  ? AppColors.kPrimaryColor
                                  : AppColors.kPrimaryColor,
                              size: 20.r,
                            );
                          },
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            right: -30,
            top: 130,
            child: Hero(
              tag: widget.bestSellerModel.image,
              child: Image.asset(
                widget.bestSellerModel.image,
                height: 100.h,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
