import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/favorite_item.dart';

import '../models/food_item.dart';

List<FoodItem> get favoriteFood =>
    food.where((foodItem) => foodItem.isFavorite).toList();

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  void removeFavorite(int index) {
    final targetedItem = favoriteFood[index];
    int targetedIndex = food.indexOf(targetedItem);
    setState(() {
      food[targetedIndex] = food[targetedIndex].copyWith(isFavorite: false);
    });
  }

  @override
  Widget build(BuildContext context) {
    if (favoriteFood.isEmpty) {
      return Center(
        child: (Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "No Favorite Items",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Colors.amber,
              ),
            ),
          ],
        )),
      );
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: favoriteFood.length,
        itemBuilder: (context, index) => FavoriteItem(
          foodIndex: index,
          onRemove: () => removeFavorite(index),
        ),
      ),
    );
  }
}
