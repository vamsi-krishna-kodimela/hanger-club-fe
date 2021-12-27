import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hanger_club/constants/colors.dart';
import 'package:hanger_club/providers/categories.dart';
import 'package:hanger_club/providers/products.dart';
import 'package:hanger_club/views/screens/category_details_screen/category_details_screen.dart';
import 'package:hanger_club/views/screens/home_screen/home_screen.dart';
import 'package:hanger_club/views/screens/product_details_screen/product_details_screen.dart';
import 'package:hanger_club/views/screens/splash_screen/splash_screen.dart';
import 'package:provider/provider.dart';
import '../constants/strings.dart';

class RootApp extends StatelessWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Products()),
        ChangeNotifierProvider(create: (_) => Categories()),
      ],
      child: MaterialApp(
        title: kAppName,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: GoogleFonts.openSans().fontFamily,
        ),
        color: kPrimaryColor,
        routes: {
          SplashScreen.routeName: (_) => const SplashScreen(),
          HomeScreen.routeName: (_) => const HomeScreen(),
          ProductDetailsScreen.routeName: (_) => const ProductDetailsScreen(),
          CategoryDetailsScreen.routeName: (_) => const CategoryDetailsScreen(),
        },
        initialRoute: SplashScreen.routeName,
      ),
    );
  }
}
