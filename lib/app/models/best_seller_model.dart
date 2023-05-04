import 'package:second_project/app/data/constants/app_assets.dart';

class BestSellerModel {
  final String title;
  final String description;
  final String price;
  final String image;
  final String teaType;

  const BestSellerModel({
    required this.title,
    required this.description,
    required this.price,
    required this.image,
    required this.teaType,
  });
}

List bestSellerList = [
  BestSellerModel(
    title: "AquaSummer",
    description: "Green tea yerba mate",
    price: "\$42.70",
    image: AppAssets.kKusmiTea,
    teaType: "Almond Rooibos",
  ),
  BestSellerModel(
    title: "AquaRose",
    description: "Herbal tea yerba mate",
    price: "\$50.60",
    image: AppAssets.kKusmiTea2,
    teaType: "Cashew Rasberry",
  ),
  BestSellerModel(
    title: "AquaBoost",
    description: "Almond tea yerba mate",
    price: "\$39.40",
    image: AppAssets.kKusmiTea3,
    teaType: "Organic Herbal",
  ),
];
