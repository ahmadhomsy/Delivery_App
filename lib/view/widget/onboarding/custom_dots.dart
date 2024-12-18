import 'package:flutter/material.dart';

import '../../../core/constant/app_colors.dart';
import '../../../data/data_source/static/static.dart';

class CustomDot extends StatelessWidget {
  const CustomDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          onBoardingList.length,
          (index) => AnimatedContainer(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            duration: const Duration(
              milliseconds: 900,
            ),
            width: 6,
            height: 6,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(300),
            ),
          ),
        ),
      ],
    );
  }
}
