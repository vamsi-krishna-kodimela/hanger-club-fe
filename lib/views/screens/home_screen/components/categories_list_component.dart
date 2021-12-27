import 'package:flutter/material.dart';
import 'package:hanger_club/models/category.dart';
import 'package:hanger_club/providers/categories.dart';
import 'package:hanger_club/views/components/category_component.dart';
import 'package:hanger_club/views/components/title_component.dart';
import 'package:provider/provider.dart';

class CategoriesListComponent extends StatelessWidget {
  const CategoriesListComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    final List<Category> _categories =
        Provider.of<Categories>(context).categories;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TitleComponent(
            title: 'Explore by category',
            action: () {},
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: _size.height * 0.2,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            itemCount: _categories.length,
            itemBuilder: (_, index) {
              final Category _category = _categories[index];
              return CategoryComponent(category: _category);
            },
          ),
        ),
      ],
    );
  }
}
