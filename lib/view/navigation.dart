import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'favourites.dart';
import 'home_screen.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({super.key});

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  int selectedIndex = 0;
  List<Widget> MyWidgetList = [HomeScreen(), FavouriteScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyWidgetList[selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
          index: selectedIndex,
          onTap: (index) {
            selectedIndex = index; //thirich aavan paadilla
            setState(() {});
          },
          color: Colors.green,
          backgroundColor: Colors.white,
          items: [
            Icon(Icons.home, color: Colors.white, size: 30),
            Icon(Icons.favorite, color: Colors.white, size: 30),
            Icon(Icons.shopping_cart, color: Colors.white, size: 30),
            Icon(Icons.shopping_bag, color: Colors.white, size: 30),
            Icon(Icons.person, color: Colors.white, size: 30),
          ]),
    );
  }
}
