import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:needoo_task/utils/color_constant.dart';
import 'package:needoo_task/utils/image_constant.dart';
import 'package:needoo_task/view/bakes_and_food_widget.dart';

class OnTapScreen extends StatefulWidget {
  OnTapScreen({super.key});

  @override
  State<OnTapScreen> createState() => _OnTapScreenState();
}

class _OnTapScreenState extends State<OnTapScreen> {
  List<String> images = [
    "assets/images/carousal1.jpg",
    "assets/images/carousal2.jpg",
    "assets/images/burger.jpeg",
  ];

  int currentIndex = 0;

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
          "Bakes & Food",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: ColorConstant.defaultBlack,
          ),
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
                    hintText: "Search",
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
              height: 20,
            ),
            CarouselSlider.builder(
              disableGesture: false,
              itemCount: images.length,
              itemBuilder: (context, index, realIndex) => Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(images[index]), fit: BoxFit.cover)),
              ),
              options: CarouselOptions(
                  onPageChanged: (index, reason) {
                    setState(() {
                      print(reason.toString());
                      currentIndex = index;
                    });
                  },
                  autoPlayInterval: Duration(seconds: 2),
                  enlargeCenterPage: true,
                  autoPlay: true,
                  scrollDirection: Axis.horizontal,
                  viewportFraction: 0.9),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < images.length; i++)
                  Container(
                    height: 10,
                    width: 10,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: currentIndex == i
                          ? ColorConstant.defaultGreen
                          : Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            BakesFoodWidget(
                title: "BURGER CROWN",
                subtitle: "Edakkara",
                distance: "2km",
                image: ImageConstant.food1),
            BakesFoodWidget(
                title: "MALABAR BAKES &FOOD COURT",
                subtitle: "Edakkara",
                distance: "4km",
                image: ImageConstant.food2),
            BakesFoodWidget(
                title: "ALBAIK FEASTO EXPRESS",
                subtitle: "Edakkara",
                distance: "7km",
                image: ImageConstant.food3),
          ],
        ),
      ),
    );
  }
}
