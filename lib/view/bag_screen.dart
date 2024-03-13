import 'package:flutter/material.dart';

import '../utils/color_constant.dart';

class BagScreen extends StatelessWidget {
  const BagScreen({super.key});

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
          "Shopping Bag",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: ColorConstant.defaultBlack,
          ),
        ),
      ),
    );
  }
}
