import 'package:flutter/material.dart';
import 'package:online_shopping_app/controllers/mainscreen_provider.dart';
import 'package:provider/provider.dart';

import 'bottomNavBar.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenProvider>(
        builder: (context, mainScreenProvider, child) {
      return SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BottomNavBar(
                    onTap: () {
                      mainScreenProvider.pageIndex = 0;
                    },
                    icon: mainScreenProvider.pageIndex == 0 ?  Icons.home_filled  :  Icons.home_outlined,
                  ),
                  BottomNavBar(
                    onTap: () {
                      mainScreenProvider.pageIndex = 1;
                    },
                    icon: Icons.search,
                  ),
                  BottomNavBar(
                    onTap: () {
                      mainScreenProvider.pageIndex = 2;
                    },
                    icon: mainScreenProvider.pageIndex == 2 ? Icons.add : Icons.add_circle_outline,
                  ),
                  BottomNavBar(
                    onTap: () {
                      mainScreenProvider.pageIndex = 3;
                    },
                    icon: mainScreenProvider.pageIndex == 3 ? Icons.shopping_cart : Icons.shopping_cart_outlined,
                  ),
                  BottomNavBar(
                    onTap: () {
                      mainScreenProvider.pageIndex = 4;
                    },
                    icon: mainScreenProvider.pageIndex == 4 ? Icons.person : Icons.person_outline,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
