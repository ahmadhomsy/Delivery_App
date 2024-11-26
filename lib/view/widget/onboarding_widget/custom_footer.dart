import 'package:flutter/material.dart';
import '../../../core/constant/app_colors.dart';
import '../custom_button.dart';
import 'custom_dots.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const CustomDot(),
          CustomButton(
            text: '',
            onPressed1: () {},
          ),
          GestureDetector(
            onTap: () {},
            child: const Text(
              "Skip",
              style: TextStyle(
                color: AppColors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
