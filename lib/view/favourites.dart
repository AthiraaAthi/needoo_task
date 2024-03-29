import 'package:flutter/material.dart';
import 'package:needoo_task/view/navigation.dart';

import '../utils/color_constant.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: ColorConstant.defaultBlack,
              size: 25,
            )),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Favourites",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
