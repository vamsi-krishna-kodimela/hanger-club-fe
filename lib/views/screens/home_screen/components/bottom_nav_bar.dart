
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:hanger_club/constants/colors.dart';
import 'package:hanger_club/views/components/bottom_bar_item.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: kWhiteColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BottomBarItem(
            icon: FeatherIcons.home,
            action: () {},
            isActive: true,
          ),
          BottomBarItem(
            icon: FeatherIcons.heart,
            action: () {},
            isActive: false,
          ),
          BottomBarItem(
            icon: FeatherIcons.shoppingCart,
            action: () {},
            isActive: false,
          ),
          BottomBarItem(
            icon: FeatherIcons.bell,
            action: () {},
            isActive: false,
          ),
        ],
      ),
    );
  }
}
