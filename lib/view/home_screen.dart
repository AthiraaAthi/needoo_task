import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:needoo_task/model/my_model.dart';
import 'package:needoo_task/utils/image_constant.dart';
import 'package:needoo_task/view/favourites.dart';
import 'package:needoo_task/view/home_screen_widget.dart';
import 'package:needoo_task/view/location_page.dart';
import 'package:needoo_task/view/navigation.dart';
import 'package:provider/provider.dart';

import '../controller/my_controller.dart';
import '../utils/color_constant.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> images = [
    "assets/images/carousal1.jpg",
    "assets/images/carousal2.jpg",
    "assets/images/burger.jpeg",
  ];
  int currentIndex = 0;
  NeedooApi needooApiobj = NeedooApi();
  @override
  void initState() {
    fetchdata();
    super.initState();
  }

  Future<void> fetchdata() async {
    await Provider.of<MyController>(context, listen: false).fetchData();
  }

  @override
  Widget build(BuildContext context) {
    //final MyControllerobj = Provider.of<MyController>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        title: Text(
          "shoppy",
          style: TextStyle(
            fontSize: 20,
            color: ColorConstant.defaultBlack,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      //bottomNavigationBar: NavigationBarScreen(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LocationPage(),
                      ));
                },
                child: Container(
                  height: 50,
                  width: 400,
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(
                      Icons.location_on_outlined,
                      size: 30,
                      color: ColorConstant.defaultGreen,
                    ),
                    title: Text(
                      "Office",
                      style: TextStyle(
                        color: ColorConstant.defaultBlack,
                        fontSize: 18,
                      ),
                    ),
                    subtitle: Text("edakkara marutha road"),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    "You will get on your doorstep!",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: ColorConstant.defaultBlack,
                        fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              HomeScreenWidget(
                title: "Groceries",
                subtitle: "Groceries & Vegetables",
                image: ImageConstant.groceries,
              ),
              SizedBox(
                height: 15,
              ),
              HomeScreenWidget(
                title: "Fish and Meat",
                subtitle: "Fresh fish, chicken, meat...",
                image: ImageConstant.meat,
              ),
              SizedBox(
                height: 15,
              ),
              HomeScreenWidget(
                title: "Bakes & Food",
                subtitle: "Get delicious bakes & food",
                image: ImageConstant.burger,
              ),
              SizedBox(
                height: 30,
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
