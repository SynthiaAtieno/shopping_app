import 'package:flutter/material.dart';
import 'package:online_shopping_app/controllers/mainscreen_provider.dart';
import 'package:online_shopping_app/shared/bottomNavBar.dart';
import 'package:online_shopping_app/shared/bottomNavigation.dart';
import 'package:online_shopping_app/views/cartpage.dart';
import 'package:online_shopping_app/views/homepage.dart';
import 'package:online_shopping_app/views/profilepage.dart';
import 'package:online_shopping_app/views/searchpage.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> pageList = const[
      HomePage(),
      SearchPage(),
      HomePage(),
      CartPage(),
      ProfilePage()
    ];
    return Consumer<MainScreenProvider>(
        builder: (context, mainScreenProvider, child) {
          return Scaffold(
            backgroundColor: const Color(0xFFE2E2E2),
            body: pageList[mainScreenProvider.pageIndex],
            bottomNavigationBar: const BottomNav()
          );
        });
  }
}
