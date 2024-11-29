import 'package:flutter/material.dart';

import '../../../core/constant/app_colors.dart';

class CustomFooterAuth extends StatelessWidget {
  final String text1;
  final String text2;
  final void Function() onTap;
  const CustomFooterAuth(
      {super.key,
      required this.text1,
      required this.text2,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AppColors.grey,
          ),
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            text2,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.deepOrange),
          ),
        ),
      ],
    );
  }
}
