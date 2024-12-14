import 'package:flutter/material.dart';
import 'package:order_ready/core/constant/image_asset.dart';

import '../details/custom_counter.dart';
import '../details/custom_counter_button.dart';

class CustomCartItem extends StatelessWidget {
  final String title;
  final double price;
  final int quantity;

  const CustomCartItem(
      {super.key,
      required this.title,
      required this.price,
      required this.quantity});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                AppImageAsset.logoRestaurant,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
                const SizedBox(height: 5),
                Text(
                  "\$$price",
                  style: TextStyle(color: Colors.orange, fontSize: 16),
                ),
              ],
            ),
          ),
          const CustomCounter(
            counter: 2,
          ),
        ],
      ),
    );
  }
}
