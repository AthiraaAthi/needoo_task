import 'package:flutter/material.dart';
import 'package:needoo_task/view/home_screen.dart';
import 'package:needoo_task/view/navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigationBarScreen(),
    );
  }
}
