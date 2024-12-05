import 'package:flutter/material.dart';

class CustomCheapFilter extends StatelessWidget {
  final String label;
  const CustomCheapFilter({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(label),
      selected: false,
      onSelected: (bool selected) {},
      selectedColor: Colors.orange[100],
      backgroundColor: Colors.grey[200],
    );
  }
}
