import 'package:second_project/app/data/constants/app_assets.dart';

class BestSellerModel {
  final String title;
  final String description;
  final String longDescription;
  final String price;
  final String image;
  final String teaType;

  const BestSellerModel({
    required this.title,
    required this.description,
    required this.longDescription,
    required this.price,
    required this.image,
    required this.teaType,
  });
}

List bestSellerList = [
  BestSellerModel(
    title: "AquaSummer",
    description: "Green tea yerba mate",
    longDescription:
        "Green tea yerba mate with a hint of mint and lemon, perfect for a hot summer day. This tea is a great source of antioxidants and vitamins.",
    price: "\$42.70",
    image: AppAssets.kKusmiTea,
    teaType: "Almond Rooibos",
  ),
  BestSellerModel(
    title: "AquaRose",
    description: "Herbal tea yerba mate",
    longDescription:
        "Herbal tea yerba mate with a hint of rose and vanilla. This tea is a great source of antioxidants and vitamins. Perfect for a hot summer day.",
    price: "\$50.60",
    image: AppAssets.kKusmiTea2,
    teaType: "Cashew Rasberry",
  ),
  BestSellerModel(
    title: "AquaBoost",
    description: "Almond tea yerba mate",
    longDescription:
        "Almond tea yerba mate with a hint of mint and lemon. This tea is a great source of antioxidants and vitamins. Perfect for a hot summer day.",
    price: "\$39.40",
    image: AppAssets.kKusmiTea3,
    teaType: "Organic Herbal",
  ),
];
