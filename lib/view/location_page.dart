import 'package:flutter/material.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        backgroundColor: Colors.white,
        title: Text(
          "Search for your location",
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              height: 40,
              width: 350,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 219, 215, 215),
                  borderRadius: BorderRadius.circular(10)),
              child: TextField(
                decoration: InputDecoration(
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
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 27),
            child: Row(
              children: [
                Icon(
                  Icons.my_location,
                  size: 30,
                  color: Colors.green,
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
            height: 25,
          ),
          Divider(
            color: Color.fromARGB(255, 219, 215, 215),
            thickness: 9,
          ),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
