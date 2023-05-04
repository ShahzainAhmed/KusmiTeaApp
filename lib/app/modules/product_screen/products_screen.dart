import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:second_project/app/data/constants/app_colors.dart';
import 'package:second_project/app/data/constants/app_typography.dart';
import 'package:second_project/app/models/best_seller_model.dart';
import 'package:second_project/app/modules/home/home_screen.dart';
import 'package:second_project/app/modules/product_screen/components/best_seller_card.dart';
import 'package:second_project/app/modules/product_screen/components/tea_type_card.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackroundColor,
      appBar: AppBar(
        toolbarHeight: 100.h,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Column(
          children: [
            Text(
              "KUSMI TEA",
              style: AppTypography.kMedium16
                  .copyWith(color: AppColors.kBlackColor),
            ),
            Text(
              "PARIS",
              style:
                  AppTypography.kLight12.copyWith(color: AppColors.kBlackColor),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: IconButton(
              onPressed: () {
                Get.to(const HomeScreen());
              },
              icon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.black,
                  )),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Text(
                "Our best-seller",
                style: AppTypography.kMedium14
                    .copyWith(color: AppColors.kBlackColor),
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
                  return BestSellerCard(
                    bestSellerModel: bestSellerList[index],
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Text(
                "Choose your tea type",
                style: AppTypography.kMedium14
                    .copyWith(color: AppColors.kBlackColor),
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
                return TeaTypeCard(
                  bestSellerModel: bestSellerList[index],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
