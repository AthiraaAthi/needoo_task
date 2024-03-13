import 'package:flutter/material.dart';
import 'package:needoo_task/controller/my_controller.dart';
import 'package:needoo_task/view/home_screen.dart';
import 'package:needoo_task/view/navigation.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MyController(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: NavigationBarScreen(),
      ),
    );
  }
}
