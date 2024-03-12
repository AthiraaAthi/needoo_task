import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'favourites.dart';
import 'home_screen.dart';

class NavigationBarScreen extends StatelessWidget {
  const NavigationBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
        onTap: (index) {
          HomeScreen();
          FavouriteScreen();
        },
        color: Colors.green,
        backgroundColor: Colors.white,
        items: [
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ));
              },
              child: Icon(Icons.home, color: Colors.white, size: 30)),
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FavouriteScreen(),
                    ));
              },
              child: Icon(Icons.favorite, color: Colors.white, size: 30)),
          Icon(Icons.shopping_cart, color: Colors.white, size: 30),
          Icon(Icons.shopping_bag, color: Colors.white, size: 30),
          Icon(Icons.person, color: Colors.white, size: 30),
        ]);
  }
}
