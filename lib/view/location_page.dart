import 'package:flutter/material.dart';
import 'package:needoo_task/utils/color_constant.dart';
import 'package:needoo_task/widgets/locationpage_widget.dart';

class LocationPage extends StatelessWidget {
  LocationPage({super.key});

  final Divider def_Divider = Divider(
    color: ColorConstant.defaultGrey,
    thickness: 9,
  );
  final Divider space_Divider = Divider(
    color: ColorConstant.defaultGrey,
    thickness: 2,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: ColorConstant.defaultBlack,
            )),
        backgroundColor: Colors.white,
        title: Text(
          "Search for your location",
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 6),
              child: Container(
                height: 40,
                width: 350,
                decoration: BoxDecoration(
                    color: ColorConstant.defaultGrey,
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search your location",
                    prefixIcon: Icon(
                      Icons.search,
                      size: 25,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 27),
              child: Row(
                children: [
                  Icon(
                    Icons.my_location,
                    size: 30,
                    color: ColorConstant.defaultGreen,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Use Current Location",
                    style: TextStyle(color: Colors.green, fontSize: 18),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 17,
            ),
            def_Divider,
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Text(
                    "Saved locations",
                    style: TextStyle(color: ColorConstant.grey, fontSize: 15),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            LocationPageWidget(
              icon: Icons.location_on_outlined,
              title: "Home",
              subtitle: "SH 28,Nilambur,KL,India. 12",
            ),
            space_Divider,
            LocationPageWidget(
              icon: Icons.location_on_outlined,
              title: "Office",
              subtitle: "Edakkara Marutha Road,Malappuram,KL,India.h",
            ),
            space_Divider,
            LocationPageWidget(
              icon: Icons.location_on_outlined,
              title: "Other",
              subtitle: "NH 966,Malappuram,KL,India,hb",
            ),
            def_Divider,
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Text(
                    "Recent locations",
                    style: TextStyle(color: ColorConstant.grey, fontSize: 15),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            LocationPageWidget(
                title: "Nilambur", subtitle: "Nilambur", icon: Icons.replay),
            space_Divider,
            LocationPageWidget(
                title: "Edakkara", subtitle: "Edakkara", icon: Icons.replay),
            space_Divider,
            LocationPageWidget(
                title: "Malappuram",
                subtitle: "Malappuram",
                icon: Icons.replay),
          ],
        ),
      ),
    );
  }
}
