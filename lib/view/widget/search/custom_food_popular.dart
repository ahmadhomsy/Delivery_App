import 'package:flutter/material.dart';
import 'package:order_ready/core/constant/routes_page.dart';

class CustomFoodPopular extends StatelessWidget {
  final String name;
  final String nameRestaurant;
  const CustomFoodPopular(
      {super.key, required this.name, required this.nameRestaurant});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(AppRoutesPage.detailsProduct);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            name,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          Text(nameRestaurant,
              style: const TextStyle(fontSize: 12, color: Colors.grey)),
        ],
      ),
    );
  }
}
