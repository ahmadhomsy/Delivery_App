import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            width: 6.w,
            height: 6.h,
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
