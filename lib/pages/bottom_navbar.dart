import 'package:flutter/material.dart';
import 'package:food_delivery/pages/favorite_page.dart';
import 'package:food_delivery/pages/home_page.dart';

 class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
   int selectedIndex = 0;
   void onItemTab(int index){
     setState(() {
       selectedIndex = index;
     });
   }
   List page = const [
     HomePage(),
     FavoritePage(),
     Center(child: Text("Account Page"),),
   ];
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
      body: page[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items:
      [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Favorite'),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: 'My Account'),
      ],
        currentIndex: selectedIndex,
        onTap:(index)=> onItemTab(index),
        selectedItemColor: Colors.redAccent,
        selectedFontSize: 20,
        unselectedItemColor: Colors.black,
        unselectedFontSize: 16,
      ),
    );
  }
}
