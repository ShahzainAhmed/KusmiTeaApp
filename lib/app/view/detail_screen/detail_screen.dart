import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:second_project/app/data/constants/app_colors.dart';
import 'package:second_project/app/data/constants/app_typography.dart';
import 'package:second_project/app/models/best_seller_model.dart';
import 'package:second_project/app/view/detail_screen/widgets/add_to_cart_button.dart';
import 'package:second_project/app/view/detail_screen/widgets/quantity_counter.dart';

class DetailScreen extends StatefulWidget {
  final BestSellerModel bestSellerModel;
  const DetailScreen({super.key, required this.bestSellerModel});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool animate = true;
  late AnimationController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.kBackroundColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Get.back(),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Hero(
                tag: widget.bestSellerModel.image,
                child: Image.asset(widget.bestSellerModel.image,
                    height: 165.h, fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: 40.h),
            BounceInDown(
              animate: animate,
              controller: (controller) => controller = controller,
              delay: const Duration(milliseconds: 300),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.bestSellerModel.teaType,
                      style: AppTypography.kBold14
                          .copyWith(color: AppColors.kGreyColor)),
                  Text("Price",
                      style: AppTypography.kBold14
                          .copyWith(color: AppColors.kGreyColor)),
                ],
              ),
            ),
            BounceInDown(
              animate: animate,
              controller: (controller) => controller = controller,
              delay: const Duration(milliseconds: 400),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.bestSellerModel.title,
                      style: AppTypography.kBold20),
                  Text(widget.bestSellerModel.price,
                      style: AppTypography.kBold20),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            BounceInDown(
              animate: animate,
              controller: (controller) => controller = controller,
              delay: const Duration(milliseconds: 500),
              child: Text(
                widget.bestSellerModel.longDescription,
                textAlign: TextAlign.justify,
                style: AppTypography.kMedium14
                    .copyWith(color: AppColors.kGreyColor),
              ),
            ),
            SizedBox(height: 40.h),
            BounceInDown(
              animate: animate,
              controller: (controller) => controller = controller,
              delay: const Duration(milliseconds: 600),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text("Quantity", style: AppTypography.kBold14),
                      SizedBox(height: 15.h),
                      const MyQuantityCounter(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: BounceInDown(
        animate: animate,
        controller: (controller) => controller = controller,
        delay: const Duration(milliseconds: 700),
        child: const AddToCartButton(),
      ),
    );
  }
}
