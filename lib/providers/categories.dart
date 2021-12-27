import 'package:flutter/material.dart';
import 'package:hanger_club/models/category.dart';

class Categories with ChangeNotifier {
  final List<Category> categories = [
    Category(
      "0",
      "Tops & T-Shirts",
      "https://images-na.ssl-images-amazon.com/images/G/31/img21/Fashion/Flip/WRS_Event/Mob/PFF/pocket-friendly-fashion-wrs_01._SY530_QL85_.jpg",
    ),
    Category(
      "1",
      "Sarees",
      "https://images-na.ssl-images-amazon.com/images/G/31/img21/Fashion/Flip/WRS_Event/Mob/PFF/pocket-friendly-fashion-wrs_02._SY530_QL85_.jpg",
    ),
    Category(
      "2",
      "Kids' T-Shirts",
      "https://images-na.ssl-images-amazon.com/images/G/31/img21/Fashion/Flip/WRS_Event/Mob/PFF/V1/pocket-friendly-fashion-wrs_03._SY530_QL85_.jpg",
    ),
    Category(
      "3",
      "Footwear",
      "https://images-na.ssl-images-amazon.com/images/G/31/img21/Fashion/Flip/WRS_Event/Mob/PFF/pocket-friendly-fashion-wrs_05._SY530_QL85_.jpg",
    ),
    Category(
      "4",
      "Makeup",
      "https://images-na.ssl-images-amazon.com/images/G/31/img21/Fashion/Flip/WRS_Event/Mob/PFF/pocket-friendly-fashion-wrs_06._SY530_QL85_.jpg",
    ),
    Category(
      "5",
      "Jewellery",
      "https://images-na.ssl-images-amazon.com/images/G/31/img21/Fashion/Flip/WRS_Event/Mob/PFF/V1/pocket-friendly-fashion-wrs_07._SY530_QL85_.jpg",
    ),
    Category(
      "6",
      "Accessories",
      "https://images-na.ssl-images-amazon.com/images/G/31/img21/Fashion/Flip/WRS_Event/Mob/PFF/V1/pocket-friendly-fashion-wrs_08._SY530_QL85_.jpg",
    ),
    Category(
      "7",
      "Under ₹499",
      "https://images-na.ssl-images-amazon.com/images/G/31/img21/Fashion/Flip/WRS_Event/Mob/PFF/V1/pocket-friendly-fashion-wrs_09._SY530_QL85_.jpg",
    ),
  ];

  Category getCategoryById(String id) =>
      categories.firstWhere((category) => category.id == id);
}
