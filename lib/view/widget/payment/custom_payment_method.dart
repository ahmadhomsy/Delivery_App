import 'package:flutter/material.dart';

class CustomPaymentMethod extends StatelessWidget {
  final String imagePath;
  final String label;
  final bool selected;
  const CustomPaymentMethod(
      {super.key,
      required this.imagePath,
      required this.label,
      this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: 70,
            height: 70,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color:
                  selected ? Colors.orange.withOpacity(0.1) : Colors.grey[100],
              border: selected
                  ? Border.all(color: Colors.orange, width: 2)
                  : Border.all(color: Colors.transparent),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.asset(
              imagePath,
              height: 40,
              width: 40,
            )),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
