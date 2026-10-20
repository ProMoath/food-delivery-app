import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item.dart';
import 'package:food_delivery/widgets/favorite_item.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    final favoriteFood = food.where((foodItem) => foodItem.isFavorite);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        /*
         ListView.builder(
          itemCount: food.length,
          itemBuilder: (context,index)=>FavoriteItem(foodItem: food[index])
         */
        child: Column(
          children: favoriteFood
              .where((foodItem) => foodItem.isFavorite)
              .map((foodItem) => FavoriteItem(foodItem: foodItem))
              .toList(),
        ),
      ),
    );
  }
}
