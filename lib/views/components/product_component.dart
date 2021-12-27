import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:hanger_club/constants/colors.dart';
import 'package:hanger_club/models/product.dart';
import 'package:hanger_club/providers/products.dart';
import 'package:hanger_club/views/screens/product_details_screen/product_details_screen.dart';
import 'package:provider/provider.dart';

class ProductComponent extends StatelessWidget {
  final Product product;

  const ProductComponent({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    final String _heroTag = DateTime.now().toString();

    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          ProductDetailsScreen.routeName,
          arguments: {
            "id": product.productId,
            "heroTag": _heroTag,
          },
        );
      },
      child: Container(
        width: _size.width / 2.5,
        margin: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 4.0,
        ),
        // height: _size.height,
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: const [
            BoxShadow(
              color: kBGColor,
              blurRadius: 4.0,
              offset: Offset(0.0, 0.0),
              spreadRadius: 4.0,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                children: [
                  ClipRRect(
                    child: Hero(
                      tag: _heroTag,
                      child: FancyShimmerImage(
                        imageUrl: product.images[0],
                        boxFit: BoxFit.cover,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  Positioned(
                    child: CircleAvatar(
                      backgroundColor: kWhiteColor.withOpacity(0.4),
                      child: IconButton(
                        icon: Icon(product.isFavourite
                            ? Icons.favorite_rounded
                            : Icons.favorite_outline_rounded),
                        onPressed: () {
                          Provider.of<Products>(context, listen: false)
                              .toggleFavourite(product.productId);
                        },
                        color: kPrimaryColor,
                      ),
                    ),
                    right: 8.0,
                    top: 8.0,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 2.0,
                horizontal: 8.0,
              ),
              child: Text(
                product.productName,
                style: const TextStyle(
                  color: kSecondaryColor,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 2.0,
                horizontal: 8.0,
              ),
              child: Text(
                '₹ ' + product.salePrice.toString(),
                style: const TextStyle(
                  color: kTextColor,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
          ],
        ),
      ),
    );
  }
}
