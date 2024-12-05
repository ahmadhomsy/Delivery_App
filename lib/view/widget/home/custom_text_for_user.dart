import 'package:flutter/material.dart';

class CustomTextForUser extends StatelessWidget {
  const CustomTextForUser({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Hey Halal, Good Day!',
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
