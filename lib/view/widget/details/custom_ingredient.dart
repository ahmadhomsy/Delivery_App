import 'package:flutter/material.dart';

class CustomIngredient extends StatelessWidget {
  final IconData icon;
  const CustomIngredient({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 25,
      backgroundColor: Colors.grey[200],
      child: Icon(icon, color: Colors.orange),
    );
  }
}
