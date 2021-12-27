class Product {
  final String productId;
  final String productType;
  final String productName;
  final String productState;
  final bool isFeatured;
  final String description;
  final double regularPrice;
  final double salePrice;
  final List<String> images;
  final bool isProductInStock;
  final List<String> tags;
  final List<String> productVariants;
  final double productWeight;
  bool isFavourite = false;

  Product(
    this.productId,
    this.productType,
    this.productName,
    this.productState,
    this.isFeatured,
    this.description,
    this.regularPrice,
    this.salePrice,
    this.images,
    this.isProductInStock,
    this.tags,
    this.productVariants,
    this.productWeight,
  );

  void toggleFavourite() {
    isFavourite = !isFavourite;
  }
}
