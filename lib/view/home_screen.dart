import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:needoo_task/view/home_screen_widget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> images = [
    "assets/images/burger.jpeg",
    "assets/images/fish and meat.jpeg",
    "assets/image/groceries.jpeg",
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        title: Text(
          "shoppy",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
          color: Colors.green,
          backgroundColor: Colors.white,
          items: [
            Icon(Icons.home, color: Colors.white, size: 30),
            Icon(Icons.favorite, color: Colors.white, size: 30),
            Icon(Icons.shopping_cart, color: Colors.white, size: 30),
            Icon(Icons.shopping_bag, color: Colors.white, size: 30),
            Icon(Icons.person, color: Colors.white, size: 30),
          ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                height: 60,
                width: 400,
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.location_on_outlined,
                    size: 30,
                    color: Colors.green,
                  ),
                  title: Text(
                    "Office",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text("edakkara marutha road"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "You will get on your doorstep!",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
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
                image: "",
              ),
              SizedBox(
                height: 15,
              ),
              HomeScreenWidget(
                title: "Fish and Meat",
                subtitle: "Fresh fish, chicken, meat...",
                image: "",
              ),
              SizedBox(
                height: 15,
              ),
              HomeScreenWidget(
                title: "Bakes & Food",
                subtitle: "Get delicious bakes & food",
                image: "",
              ),
              SizedBox(
                height: 30,
              ),
              CarouselSlider.builder(
                disableGesture: false,
                itemCount: images.length,
                itemBuilder: (context, index, realIndex) => Container(
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
                      height: 13,
                      width: 13,
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: currentIndex == i ? Colors.green : Colors.grey,
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