import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:order_ready/main.dart';

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
            width: 70.w,
            height: 70.h,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color:
                  selected ? Colors.orange.withOpacity(0.1) : Colors.grey[100],
              border: selected
                  ? Border.all(color: Colors.orange, width: 2.w)
                  : Border.all(color: Colors.transparent),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.asset(
              imagePath,
              height: 40.h,
              width: 40.w,
            )),
        SizedBox(height: 8.h),
        Text(
          label,
          style: TextStyle(
            color: Colors.black,
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
