import 'package:flutter/material.dart';

import '../pages/favorite_page.dart';

class FavoriteItem extends StatelessWidget {
  final int foodIndex;
  final VoidCallback onRemove;

  const FavoriteItem({
    super.key,
    required this.foodIndex,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    final item = favoriteFood[foodIndex];
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            item.isNetwork
                ? Image.network(
                    item.imgUrl,
                    height: 70,
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
                : Image.asset(
                    item.imgUrl,
                    height: 70,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
            const SizedBox(width: 8.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    '${item.price} \$',
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.redAccent,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: onRemove,
              icon: Icon(Icons.favorite, color: Colors.redAccent),
            ),
          ],
        ),
      ),
    );
  }
}
