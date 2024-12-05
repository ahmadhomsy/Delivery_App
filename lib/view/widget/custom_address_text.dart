import 'package:flutter/material.dart';

class CustomAddressText extends StatelessWidget {
  final String address;
  const CustomAddressText({super.key, required this.address});

  @override
  Widget build(BuildContext context) {
    return Text(
      address,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
