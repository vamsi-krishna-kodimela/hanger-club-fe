import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:hanger_club/constants/colors.dart';
import 'package:hanger_club/models/category.dart';
import 'package:hanger_club/views/screens/category_details_screen/category_details_screen.dart';

class CategoryComponent extends StatelessWidget {
  const CategoryComponent({
    Key? key,
    required Category category,
  })  : _category = category,
        super(key: key);

  final Category _category;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    final String _heroTag=DateTime.now().toString();
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
          CategoryDetailsScreen.routeName,
          arguments: {
            "id": _category.id,
            "heroTag": _heroTag,
          },
        );
      },
      child: Container(
        width: _size.height * 0.2,
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Hero(
                tag: _heroTag,
                child: FancyShimmerImage(
                  imageUrl: _category.imageUrl,
                  boxFit: BoxFit.cover,
                ),
              ),
            ),
            // Positioned(
            //   child: Text(
            //     _category.category,
            //     style: const TextStyle(
            //       color: kWhiteColor,
            //       fontWeight: FontWeight.bold,
            //       fontSize: 16.0,
            //       overflow: TextOverflow.ellipsis,
            //     ),
            //   ),
            //   left: 16.0,
            //   right: 16.0,
            //   bottom: 16.0,
            // ),
          ],
        ),
      ),
    );
  }
}
