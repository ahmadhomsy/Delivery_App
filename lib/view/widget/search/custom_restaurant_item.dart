import 'dart:ffi';

import 'package:flutter/material.dart';

class CustomRestaurantItem extends StatelessWidget {
  final String name;
  final double rating;
  const CustomRestaurantItem(
      {super.key, required this.name, required this.rating});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 50,
        height: 50,
        color: Colors.grey.shade300,
      ),
      title: Text(name),
      subtitle: Row(
        children: [
          const Icon(Icons.star, color: Colors.orange, size: 16),
          const SizedBox(width: 4),
          Text(rating.toString(), style: const TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}
