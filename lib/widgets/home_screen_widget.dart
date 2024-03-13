import 'package:flutter/material.dart';
import 'package:needoo_task/view/bakes_and_food.dart';

import '../utils/color_constant.dart';

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.image});
  final String title;
  final String subtitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OnTapScreen(),
            ));
      },
      child: Container(
        height: 70,
        width: 360,
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 3)],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          leading: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover),
                color: Color.fromARGB(255, 129, 170, 239),
                borderRadius: BorderRadius.circular(10)),
            height: 70,
            width: 60,
          ),
          //Image.asset(image),
          title: Text(
            title,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: ColorConstant.defaultBlack,
            ),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            size: 30,
          ),
        ),
      ),
    );
  }
}
