import 'package:flutter/material.dart';
import 'package:hanger_club/constants/colors.dart';

class TitleComponent extends StatelessWidget {
  final String title;
  final VoidCallback? action;
  final String actionText;

  const TitleComponent({
    Key? key,
    this.title = '',
    this.action,
    this.actionText = "View all",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                color: kTextColor,
                fontSize: 18.0,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          TextButton(
            onPressed: action,
            child: Text(actionText),
            style: TextButton.styleFrom(primary: kPrimaryColor),
          ),
        ],
      ),
    );
  }
}
