import 'package:flutter/material.dart';

class CustomFoodPopular extends StatelessWidget {
  final String name;
  final String location;
  const CustomFoodPopular(
      {super.key, required this.name, required this.location});

  @override
  Widget build(BuildContext context) {
    return Column(
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
        Text(location,
            style: const TextStyle(fontSize: 12, color: Colors.grey)),
      ],
    );
  }
}
