import 'package:flutter/material.dart';
import 'package:needoo_task/utils/color_constant.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget(
      {super.key, required this.image, required this.category});

  final String image;
  final String category;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 50,
            backgroundColor: ColorConstant.defaultGreen,
            backgroundImage: AssetImage(image),
          ),
        ),
        Text(
          category,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
