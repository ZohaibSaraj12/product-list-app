import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List<int> numbers = [12, 21, 34, 54, 56, 67, 23, 89, 09];
  // List<String> items = ["Apple", "Banana", "Orange"];
  List<Map<String, String>> items = [
    {"name": "Shoes", "price": "Rs. 1500"},
    {"name": "T-shirt", "price": "Rs. 900"},
    {"name": "Watch", "price": "Rs. 2200"},
  ];

  List<String> images = [
    "assets/images/photo1.jpg",
    "assets/images/photo2.jpg",
    "assets/images/photo3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        title: Text(
          "Product List",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Text("data"),
    );
  }
}





// ListView(
//         children: numbers.map((element) => Container(
//               margin: EdgeInsets.all(15.0),
//               height: 100.0,
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//                 borderRadius: BorderRadius.circular(20.0),
//               ),
//               alignment: Alignment.center,
//               child: Text(element.toString(), style: TextStyle(color: Colors.white)),
//             ),
// ).toList(),
