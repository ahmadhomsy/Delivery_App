import 'package:flutter/material.dart';

class CustomCheapFilter extends StatelessWidget {
  final String label;
  final bool isSelected;
  const CustomCheapFilter(
      {super.key, required this.label, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(label),
      selected: isSelected,
      onSelected: (bool selected) {},
      selectedColor: const Color(0xffff7622),
      backgroundColor: Colors.grey[200],
    );
  }
}
