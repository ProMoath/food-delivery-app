import 'package:flutter/material.dart';

import '../models/food_item.dart';

class FoodGridItem extends StatefulWidget {
  final int foodIndex;

  const FoodGridItem({super.key, required this.foodIndex});

  @override
  State<FoodGridItem> createState() => _FoodGridItemState();
}

class _FoodGridItemState extends State<FoodGridItem> {
  @override
  Widget build(BuildContext context) {
    var item = food[widget.foodIndex];
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Stack(
              children: [
                item.isNetwork
                    ? Image.network(
                        item.imgUrl,
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
                    : Image.asset(item.imgUrl, height: 82, fit: BoxFit.cover),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: InkWell(
                      onTap: () => setState(() {
                        item = item.copyWith(isFavorite: !item.isFavorite);
                      }),
                      child: Icon(
                        item.isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: Colors.redAccent,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 6.0),
            Text(
              item.name,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 4.0),
            Text(
              '${item.price}\$',
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
