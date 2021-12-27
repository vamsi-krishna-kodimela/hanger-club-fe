import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hanger_club/constants/colors.dart';
import 'package:hanger_club/views/screens/home_screen/home_screen.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = "/";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kPrimaryColor,
        width: double.infinity,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Hanger Club",
                    style: TextStyle(
                      fontFamily: GoogleFonts.lobster().fontFamily,
                      fontSize: 40.0,
                      color: kTextColor,
                    ),
                  ),
                  Text(
                    "perfect fit for perfect you",
                    style: TextStyle(
                      fontFamily: GoogleFonts.openSans().fontFamily,
                      fontSize: 16.0,
                      color: kWhiteColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 32.0),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(HomeScreen.routeName);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: kTextColor,
                        onPrimary: kWhiteColor,
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: const Text(
                        "Explore Now",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      // icon: const Icon(Icons.arrow_forward_ios_rounded),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text('Skip to signin'),
                      style: TextButton.styleFrom(
                        primary: kBGColor,
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        textStyle: const TextStyle(
                          fontStyle: FontStyle.italic,
                          decoration: TextDecoration.underline,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
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
