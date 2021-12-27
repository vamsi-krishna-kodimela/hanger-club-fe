import 'package:flutter/material.dart';
import 'package:hanger_club/constants/colors.dart';

class BottomBarItem extends StatelessWidget {
  final IconData? icon;
  final bool isActive;
  final Function? action;

  const BottomBarItem(
      {Key? key,
        @required this.icon,
        this.isActive = false,
        @required this.action})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 16.0,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Icon(
                icon,
                color: isActive ? kTextColor : kSecondaryColor,
                size: 24.0,
              ),
            ),
            Container(
              height: 4.0,
              width: 8.0,
              decoration: BoxDecoration(
                color: isActive ? kPrimaryColor : Colors.transparent,
                borderRadius: BorderRadius.circular(2.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}