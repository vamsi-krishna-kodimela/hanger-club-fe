import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hanger_club/views/components/bottom_bar_item.dart';
import 'package:hanger_club/views/components/products_list_component.dart';
import 'package:hanger_club/views/screens/home_screen/components/categories_list_component.dart';
import '../../../constants/colors.dart';
import '../../../constants/strings.dart';
import './components/app_drawer_component.dart';
import './components/banners_component.dart';
import './components/bottom_nav_bar.dart';
import './components/search_component.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = 'home-screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: kWhiteColor,
        appBar: _buildAppBar(),
        drawer: const AppDrawerComponent(),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              // padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SearchComponent(),
                    BannersComponent(),
                    ProductsListComponent(title: 'Top collections'),
                    CategoriesListComponent(),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child:
                          ProductsListComponent(title: 'Recommended for you'),
                    ),
                    BannersComponent(),
                  ],
                ),
              ),
            ),
            const Text("Wishlist"),
            const Text("Cart"),
            const Text("Notifications"),
          ],
        ),

        bottomNavigationBar: const TabBar(
          indicatorColor: kPrimaryColor,
          tabs: [
            Tab(
              icon: Icon(
                FeatherIcons.home,
                color: kTextColor,
              ),
            ),
            Tab(
              icon: Icon(
                FeatherIcons.heart,
                color: kTextColor,
              ),
            ),
            Tab(
              icon: Icon(
                FeatherIcons.shoppingCart,
                color: kTextColor,
              ),
            ),
            Tab(
              icon: Icon(
                FeatherIcons.bell,
                color: kTextColor,
              ),
            ),
          ],
        ),
        // bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text(kAppName),
      titleTextStyle: TextStyle(
        color: kTextColor,
        fontFamily: GoogleFonts.lobster().fontFamily,
        fontSize: 24.0,
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      actions: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 24.0,
            backgroundColor: kPrimaryColor,
            backgroundImage: NetworkImage(kDefaultUserPic),
          ),
        ),
      ],
      iconTheme: const IconThemeData(color: kTextColor),
    );
  }
}
