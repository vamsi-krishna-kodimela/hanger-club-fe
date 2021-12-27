import 'package:flutter/material.dart';
import 'package:hanger_club/models/product.dart';
import 'package:hanger_club/providers/products.dart';
import 'package:hanger_club/views/components/product_component.dart';
import 'package:hanger_club/views/components/title_component.dart';
import 'package:provider/provider.dart';

class ProductsListComponent extends StatelessWidget {
  final String title;

  const ProductsListComponent({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    final List<Product> _products = Provider.of<Products>(context).products;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TitleComponent(
            title: title,
            action: () {},
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: _size.height * 0.35,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            itemCount: _products.length,
            itemBuilder: (_, index) {
              final Product _product = _products[index];
              return ProductComponent(
                product: _product,
              );
            },
          ),
        ),
      ],
    );
  }
}
