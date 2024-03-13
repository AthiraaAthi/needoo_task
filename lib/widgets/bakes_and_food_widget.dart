import 'package:flutter/material.dart';
import 'package:needoo_task/utils/color_constant.dart';

class BakesFoodWidget extends StatelessWidget {
  const BakesFoodWidget(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.distance,
      required this.image});
  final String image;
  final String title;
  final String subtitle;
  final String distance;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: 220,
        width: 400,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [BoxShadow(blurRadius: 20, color: Colors.black)]),
        child: Column(
          children: [
            Container(
              height: 150,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    subtitle,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  Text(
                    distance,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: ColorConstant.defaultGreen),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
