import 'package:flutter/material.dart';
import 'package:hanger_club/constants/colors.dart';

class SearchComponent extends StatelessWidget {
  const SearchComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      padding: const EdgeInsets.only(
        top: 8.0,
        bottom: 8.0,
        left: 16.0,
        right: 8.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: kBGColor,
      ),
      child: Row(
        children: [
          const Expanded(
            child: Text(
              'What are you looking for?',
              style: TextStyle(
                color: kSecondaryColor,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: kTextColor,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              color: kWhiteColor,
            ),
          )
        ],
      ),
    );
  }
}
