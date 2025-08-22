import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../constants/list_constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        title: const Text(
          "Product List",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: AnimationLimiter(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            // card widget to add shopping items
            return AnimationConfiguration.staggeredList(
              delay: const Duration(seconds: 2),

              position: index,
              duration: const Duration(seconds: 2),
              child: SlideAnimation(
                verticalOffset: 50.0,

                child: SlideAnimation(
                  curve: Curves.linear,
                  delay: const Duration(seconds: 2),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 10.0,
                    margin: const EdgeInsets.all(20.0),
                    borderOnForeground: true,

                    child: GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              "You tapped ${items[index]["name"]} and its price is ${items[index]["price"]}",
                            ),
                            backgroundColor: Colors.green,
                            duration: const Duration(seconds: 2),
                            margin: const EdgeInsets.all(15.0),
                            behavior: SnackBarBehavior.floating,
                          ),
                        );
                      },

                      child: ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset(images[index]),
                        ),
                        title: Text(
                          items[index]["name"].toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        subtitle: Text(
                          items[index]["price"].toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            // Navigation logic
                            debugPrint("Button Clicked");
                          },
                          icon: const Icon(Icons.arrow_forward_ios_outlined),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
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
