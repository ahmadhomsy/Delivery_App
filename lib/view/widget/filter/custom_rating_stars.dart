import 'package:flutter/material.dart';

class CustomRatingStars extends StatelessWidget {
  const CustomRatingStars({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        5,
        (index) => Icon(
          index < 4 ? Icons.star : Icons.star_border,
          color: index < 4 ? const Color(0xffff7622) : Colors.grey,
        ),
      ),
    );
  }
}
