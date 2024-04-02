import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:second_project/app/data/constants/app_assets.dart';
import 'package:second_project/app/data/constants/app_colors.dart';
import 'package:second_project/app/data/constants/app_typography.dart';
import 'package:second_project/app/models/best_seller_model.dart';
import 'package:second_project/app/view/detail_screen/detail_screen.dart';
import 'package:second_project/app/view/home/widgets/best_seller_card.dart';
import 'package:second_project/app/view/home/widgets/tea_type_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackroundColor,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 50.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 70.w),
                FadeInUp(
                  duration: const Duration(milliseconds: 1500),
                  child: Image.asset(AppAssets.kLogo,
                      height: 35.h, fit: BoxFit.cover),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.w),
                  child: Container(
                    height: 36.h,
                    width: 36.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: AppColors.kWhiteColor,
                    ),
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      iconSize: 20,
                      onPressed: () {},
                      icon: const Icon(Icons.card_travel_rounded),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 50.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: AnimatedTextKit(
                isRepeatingAnimation: false,
                animatedTexts: [
                  TyperAnimatedText(
                    "Our best-seller",
                    speed: const Duration(milliseconds: 150),
                    textStyle: AppTypography.kBold14.copyWith(
                      color: AppColors.kBlackColor,
                      letterSpacing: 0,
                      wordSpacing: 0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 300.h,
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                physics: const BouncingScrollPhysics(),
                separatorBuilder: (context, index) {
                  return SizedBox(width: 40.w);
                },
                scrollDirection: Axis.horizontal,
                itemCount: bestSellerList.length,
                itemBuilder: (context, index) {
                  return FadeInUp(
                    duration: const Duration(milliseconds: 1600),
                    child: BestSellerCard(
                      onTap: () => Get.to(
                        DetailScreen(
                          bestSellerModel: bestSellerList[index],
                        ),
                      ),
                      bestSellerModel: bestSellerList[index],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: AnimatedTextKit(
                isRepeatingAnimation: false,
                animatedTexts: [
                  TyperAnimatedText(
                    "Chooce your tea type",
                    speed: const Duration(milliseconds: 150),
                    textStyle: AppTypography.kBold14.copyWith(
                      color: AppColors.kBlackColor,
                      letterSpacing: 0,
                      wordSpacing: 0,
                    ),
                  ),
                ],
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
              physics: const BouncingScrollPhysics(),
              separatorBuilder: (context, index) {
                return SizedBox(height: 15.h);
              },
              scrollDirection: Axis.vertical,
              itemCount: bestSellerList.length,
              itemBuilder: (context, index) {
                return FadeInUp(
                  duration: const Duration(milliseconds: 1700),
                  child: TeaTypeCard(
                    onTap: () => Get.to(DetailScreen(
                      bestSellerModel: bestSellerList[index],
                    )),
                    bestSellerModel: bestSellerList[index],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
