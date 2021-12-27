import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:hanger_club/constants/colors.dart';
import 'package:hanger_club/models/category.dart';
import 'package:hanger_club/models/product.dart';
import 'package:hanger_club/providers/categories.dart';
import 'package:hanger_club/providers/products.dart';
import 'package:hanger_club/views/components/product_component.dart';
import 'package:provider/provider.dart';

class CategoryDetailsScreen extends StatelessWidget {
  static const String routeName = 'category-details';

  const CategoryDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Product> _products = Provider.of<Products>(context).products;
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    final Size _size = MediaQuery.of(context).size;
    final Category category =
        Provider.of<Categories>(context).getCategoryById(args["id"]);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: args["heroTag"],
                child: FancyShimmerImage(
                  imageUrl:
                      "https://images-na.ssl-images-amazon.com/images/G/31/img21/Fashion/Flip/WRS_Event/Mob/PFF/pocket-friendly-fashion-wrs_01._SY530_QL85_.jpg",
                  boxFit: BoxFit.cover,
                ),
              ),
            ),
            backgroundColor: kWhiteColor,
            expandedHeight: _size.width,
            iconTheme: const IconThemeData(color: kTextColor),
            stretch: true,
            pinned: true,
            title: const Text(
              "Category Name",
              style: TextStyle(
                color: kTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            elevation: 0.0,
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16.0,
              crossAxisSpacing: 16.0,
              childAspectRatio: 2 / 3,
            ),
            delegate: SliverChildBuilderDelegate(
              (_, int index) {
                final Product _product = _products[index];
                return ProductComponent(product: _product);
              },
              childCount: _products.length,
            ),
          ),
        ],
      ),
    );
  }
}
