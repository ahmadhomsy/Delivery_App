import 'package:flutter/material.dart';
import 'package:order_ready/core/constant/routes_page.dart';

class CustomRestaurantCard extends StatelessWidget {
  final String name;
  final String description;
  final double rating;
  final String deliveryFee;
  final String time;
  const CustomRestaurantCard(
      {super.key,
      required this.name,
      required this.description,
      required this.rating,
      required this.deliveryFee,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(AppRoutesPage.restaurantView);
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            // Placeholder for Image
            Container(
              width: 100,
              height: 75,
              color: Colors.grey,
            ),
            const SizedBox(width: 15),
            // Restaurant Details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    description,
                    style: const TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.orange, size: 16),
                      const SizedBox(width: 5),
                      Text(
                        '$rating',
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text('| $deliveryFee | $time'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
