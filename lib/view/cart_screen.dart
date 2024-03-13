import 'package:flutter/material.dart';

import '../utils/color_constant.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

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
          "Cart",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: ColorConstant.defaultBlack,
          ),
        ),
      ),
    );
  }
}
