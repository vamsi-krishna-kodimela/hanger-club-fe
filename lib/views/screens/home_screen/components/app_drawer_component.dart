
import 'package:flutter/material.dart';
import 'package:hanger_club/constants/colors.dart';

class AppDrawerComponent extends StatelessWidget {
  const AppDrawerComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kWhiteColor,
      child: SafeArea(
        child: Column(
          children: const [
            Text("Hello World"),
          ],
        ),
      ),
    );
  }
}
