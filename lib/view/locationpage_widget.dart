import 'package:flutter/material.dart';

import '../utils/color_constant.dart';

class LocationPageWidget extends StatelessWidget {
  const LocationPageWidget(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.icon});

  final String title;
  final String subtitle;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
      ),
      title: Text(
        title,
        style: TextStyle(color: ColorConstant.defaultBlack),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(color: ColorConstant.grey, fontSize: 12),
      ),
    );
  }
}
