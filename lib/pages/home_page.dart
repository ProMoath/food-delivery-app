import 'package:flutter/material.dart';

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
        ],),
      )
      );
  }
}