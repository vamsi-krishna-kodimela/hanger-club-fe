import 'package:flutter/material.dart';
import 'package:hanger_club/constants/colors.dart';

class BannersComponent extends StatelessWidget {
  const BannersComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: AspectRatio(
        aspectRatio: 2.5,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                // color: kSecondaryColor,
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: AssetImage('assets/images/banner.png'),
                ),
              ),
            ),
            Positioned(
              right: 8.0,
              bottom: 8.0,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: kPrimaryColor),
                    ),
                    height: 8.0,
                    width: 8.0,
                    margin: const EdgeInsets.symmetric(
                      vertical: 4.0,
                      horizontal: 8.0,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 4.0,
                      horizontal: 8.0,
                    ),
                    decoration: BoxDecoration(
                      // color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: kPrimaryColor),
                    ),
                    height: 8.0,
                    width: 8.0,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 4.0,
                      horizontal: 8.0,
                    ),
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    height: 8.0,
                    width: 8.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
