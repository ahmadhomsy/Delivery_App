import 'package:flutter/material.dart';

class CustomSizeProduct extends StatelessWidget {
  final String size;
  final bool selected;
  const CustomSizeProduct(
      {super.key, required this.size, required this.selected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: selected ? const Color(0xffff7622) : Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        size,
        style: TextStyle(
          color: selected ? Colors.white : Colors.black,
          fontWeight: selected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}
