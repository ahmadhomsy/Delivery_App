import 'package:flutter/material.dart';

class CustomOr extends StatelessWidget {
  const CustomOr({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      child: const Text(
        "OR",
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
      ),
    );
  }
}
