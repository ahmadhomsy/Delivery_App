import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  final String appBarAddress;
  const CustomAppbar({super.key, required this.appBarAddress});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        Text(
          appBarAddress,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 30),
      ],
    );
  }
}
