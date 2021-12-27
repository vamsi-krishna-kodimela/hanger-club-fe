import 'package:flutter/material.dart';
import '../models/product.dart';

class Products with ChangeNotifier {
  final List<Product> _products = [
    Product(
      "0",
      "productType",
      "productName",
      "productState",
      false,
      "Get correct colors of clothing from an image with this API. The API returns dominant colors, palette color, primary colors, and secondary colors of a given image. The API provides an option to have the solid background removed before color parsing.",
      350.0,
      250.0,
      [
        "https://images.unsplash.com/photo-1639753249870-ca3b0c380fd3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
        "https://picsum.photos/id/1/5616/3744",
        "https://picsum.photos/id/10/2500/1667",
        "https://picsum.photos/id/100/2500/1656"
      ],
      true,
      ["a", "b", "c"],
      [],
      10.0,
    ),
    Product(
      "01",
      "productType",
      "productName",
      "productState",
      false,
      "Get correct colors of clothing from an image with this API. The API returns dominant colors, palette color, primary colors, and secondary colors of a given image. The API provides an option to have the solid background removed before color parsing.",
      350.0,
      250.0,
      [
        "https://images.unsplash.com/photo-1639330303949-8f6479e1bffd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
        "https://picsum.photos/id/1/5616/3744",
        "https://picsum.photos/id/10/2500/1667",
        "https://picsum.photos/id/100/2500/1656"
      ],
      true,
      ["a", "b", "c"],
      [],
      10.0,
    ),
    Product(
      "02",
      "productType",
      "productName",
      "productState",
      false,
      "Get correct colors of clothing from an image with this API. The API returns dominant colors, palette color, primary colors, and secondary colors of a given image. The API provides an option to have the solid background removed before color parsing.",
      350.0,
      250.0,
      [
        "https://images.unsplash.com/photo-1629955939520-c1066f7ae091?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
        "https://picsum.photos/id/1/5616/3744",
        "https://picsum.photos/id/10/2500/1667",
        "https://picsum.photos/id/100/2500/1656"
      ],
      true,
      ["a", "b", "c"],
      [],
      10.0,
    ),
    Product(
      "03",
      "productType",
      "productName",
      "productState",
      false,
      "Get correct colors of clothing from an image with this API. The API returns dominant colors, palette color, primary colors, and secondary colors of a given image. The API provides an option to have the solid background removed before color parsing.",
      350.0,
      250.0,
      [
        "https://images.unsplash.com/photo-1639414686184-67f2cd8ff91c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80",
        "https://picsum.photos/id/1/5616/3744",
        "https://picsum.photos/id/10/2500/1667",
        "https://picsum.photos/id/100/2500/1656"
      ],
      true,
      ["a", "b", "c"],
      [],
      10.0,
    ),
    Product(
      "04",
      "productType",
      "productName",
      "productState",
      false,
      "Get correct colors of clothing from an image with this API. The API returns dominant colors, palette color, primary colors, and secondary colors of a given image. The API provides an option to have the solid background removed before color parsing.",
      350.0,
      250.0,
      [
        "https://picsum.photos/id/0/5616/3744",
        "https://picsum.photos/id/1/5616/3744",
        "https://picsum.photos/id/10/2500/1667",
        "https://picsum.photos/id/100/2500/1656"
      ],
      true,
      ["a", "b", "c"],
      [],
      10.0,
    ),
    Product(
      "05",
      "productType",
      "productName",
      "productState",
      false,
      "Get correct colors of clothing from an image with this API. The API returns dominant colors, palette color, primary colors, and secondary colors of a given image. The API provides an option to have the solid background removed before color parsing.",
      350.0,
      250.0,
      [
        "https://picsum.photos/id/0/5616/3744",
        "https://picsum.photos/id/1/5616/3744",
        "https://picsum.photos/id/10/2500/1667",
        "https://picsum.photos/id/100/2500/1656"
      ],
      true,
      ["a", "b", "c"],
      [],
      10.0,
    ),
    Product(
      "06",
      "productType",
      "productName",
      "productState",
      false,
      "Get correct colors of clothing from an image with this API. The API returns dominant colors, palette color, primary colors, and secondary colors of a given image. The API provides an option to have the solid background removed before color parsing.",
      350.0,
      250.0,
      [
        "https://picsum.photos/id/0/5616/3744",
        "https://picsum.photos/id/1/5616/3744",
        "https://picsum.photos/id/10/2500/1667",
        "https://picsum.photos/id/100/2500/1656"
      ],
      true,
      ["a", "b", "c"],
      [],
      10.0,
    ),
  ];

  final List<Product> _favouriteProducts = [];

  List<Product> get products =>
      _products.where((product) => product.isProductInStock).toList();

  Product getProductById(String id) => products.firstWhere(
        (product) => product.productId == id,
        orElse: () => Product(
          "0",
          "productType",
          "productName",
          "productState",
          false,
          "Get correct colors of clothing from an image with this API. The API returns dominant colors, palette color, primary colors, and secondary colors of a given image. The API provides an option to have the solid background removed before color parsing.",
          350.0,
          250.0,
          [
            "https://picsum.photos/id/0/5616/3744",
            "https://picsum.photos/id/1/5616/3744",
            "https://picsum.photos/id/10/2500/1667",
            "https://picsum.photos/id/100/2500/1656"
          ],
          true,
          ["a", "b", "c"],
          [],
          10.0,
        ),
      );

  void toggleFavourite(String id) {
    final Product _product = getProductById(id);
    _product.toggleFavourite();
    if (_product.isFavourite) {
      _favouriteProducts.add(_product);
    } else {
      _favouriteProducts.removeWhere((product) => product.productId == id);
    }
    notifyListeners();
  }
}
