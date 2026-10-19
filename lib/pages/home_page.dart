import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/food_grid_item.dart';

import '../models/food_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:const Text("Food Delivery"),
        backgroundColor: Color.fromRGBO(255, 15, 10,0.8),
        foregroundColor: Colors.white,
        elevation: 2,
      ),
      drawer:const Drawer(
        child: Center(
          child:Text("Home"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
           ClipRRect(
             borderRadius: BorderRadius.circular(24.0),
             child:Image.asset(
                 'assets/images/food_web_banner.jpg',
                height: 200,
               fit: BoxFit.cover,
             ),
           ),
          const SizedBox(height: 30),
          Expanded(
              child: GridView.builder(
              itemCount:food.length ,
            gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
            ),
            itemBuilder: (context,index) => FoodGridItem(foodItem: food[index])
              ),
          ),
            ],
          ),
        )
      );
  }
}