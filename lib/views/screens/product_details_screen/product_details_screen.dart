import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:hanger_club/constants/colors.dart';
import 'package:hanger_club/models/product.dart';
import 'package:hanger_club/providers/products.dart';
import 'package:hanger_club/views/components/products_list_component.dart';
import 'package:provider/provider.dart';

class ProductDetailsScreen extends StatelessWidget {
  static const String routeName = "product-details";

  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    final args = ModalRoute.of(context)!.settings.arguments as Map;

    final Product _product =
        Provider.of<Products>(context).getProductById(args["id"]);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: _size.height * 0.65,
              width: _size.width,
              color: kPrimaryColor,
              child: Stack(
                children: [
                  Hero(
                    tag: args["heroTag"],
                    child: FancyShimmerImage(
                      width: double.infinity,
                      height: double.infinity,
                      imageUrl: _product.images[0],
                      boxFit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    right: 8.0,
                    left: 8.0,
                    top: 8.0,
                    child: SafeArea(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(Icons.chevron_left_rounded),
                            color: kTextColor,
                          ),
                          CircleAvatar(
                            backgroundColor: kWhiteColor.withOpacity(0.4),
                            child: IconButton(
                              onPressed: () {
                                Provider.of<Products>(context, listen: false)
                                    .toggleFavourite(_product.productId);
                              },
                              icon: Icon(_product.isFavourite
                                  ? Icons.favorite_rounded
                                  : Icons.favorite_outline),
                              color: kPrimaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      _product.productName,
                      style: const TextStyle(
                        color: kTextColor,
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 2.0,
                      horizontal: 4.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Row(
                      children: const [
                        Text(
                          "4.0 ",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: kWhiteColor,
                          ),
                        ),
                        Icon(
                          Icons.star,
                          color: kWhiteColor,
                          size: 12.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 0.0,
              ),
              child: RichText(
                text: TextSpan(
                  text: '₹' + _product.regularPrice.toString(),
                  style: const TextStyle(
                    color: kSecondaryColor,
                    decoration: TextDecoration.lineThrough,
                    fontSize: 12.0,
                  ),
                  children: [
                    const TextSpan(
                      text: "   ",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                      ),
                    ),
                    TextSpan(
                      text: '₹' + _product.salePrice.toString(),
                      style: const TextStyle(
                        color: kTextColor,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                      ),
                    ),
                    const TextSpan(
                      text: "   ",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                      ),
                    ),
                    TextSpan(
                      text: ((_product.regularPrice - _product.salePrice) *
                                  100 /
                                  _product.regularPrice)
                              .ceil()
                              .toString() +
                          "% OFF",
                      style: const TextStyle(
                        color: kPrimaryColor,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.normal,
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              width: double.infinity,
              height: 24.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                itemCount: 4,
                itemBuilder: (_, index) {
                  return InkWell(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: 24.0,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        border: Border.all(
                          color: kTextColor,
                          width: 2.0,
                        ),
                        color: Colors.red,
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 48.0,
              alignment: Alignment.center,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                itemCount: 8,
                itemBuilder: (_, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 4.0,
                    ),
                    height: double.infinity,
                    width: 80.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.0, color: kTextColor),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Text('S'),
                  );
                },
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Description",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: kTextColor,
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    _product.description,
                    style: const TextStyle(
                      color: kSecondaryColor,
                      fontSize: 14.0,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("BUY NOW"),
                style: ElevatedButton.styleFrom(
                  primary: kTextColor,
                  onPrimary: kWhiteColor,
                  padding: const EdgeInsets.symmetric(vertical: 14.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 4.0,
              ),
              child: OutlinedButton(
                onPressed: () {},
                child: const Text("ADD TO CART"),
                style: OutlinedButton.styleFrom(
                  primary: kTextColor,
                  // onPrimary: kWhiteColor,
                  padding: const EdgeInsets.symmetric(vertical: 14.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  side: const BorderSide(width: 1.0),
                  textStyle: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Divider(),
            const ProductsListComponent(title: 'You might also like'),
          ],
        ),
      ),
    );
  }
}
