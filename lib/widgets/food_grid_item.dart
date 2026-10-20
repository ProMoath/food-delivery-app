import 'package:flutter/material.dart';
import '../models/food_item.dart';

class FoodGridItem extends StatelessWidget {
  final FoodItem foodItem;

  const FoodGridItem({super.key, required this.foodItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            foodItem.isNetwork
                ? Image.network(
                    foodItem.imgUrl,
                    height: 82,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        height: 82,
                        width: double.infinity,
                        color: Colors.grey.shade300,
                        child: const Icon(
                          Icons.broken_image,
                          color: Colors.grey,
                        ),
                      );
                    },
                  )
                : Image.asset(foodItem.imgUrl, height: 82, fit: BoxFit.cover),
            const SizedBox(height: 6.0),
            Text(
              foodItem.name,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 4.0),
            Text(
              '${foodItem.price}\$',
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
