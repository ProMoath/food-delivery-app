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
      body: const Center(child:
     Text(
          "Home Page",
          selectionColor: Colors.black,
          style: TextStyle(
            fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
          ),
      ),
      ),
    );
  }
}