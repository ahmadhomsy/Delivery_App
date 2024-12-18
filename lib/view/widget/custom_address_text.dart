import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAddressText extends StatelessWidget {
  final String address;
  const CustomAddressText({super.key, required this.address});

  @override
  Widget build(BuildContext context) {
    return Text(
      address,
      style: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
