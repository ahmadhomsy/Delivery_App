import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAddressText extends StatelessWidget {
  final String address;
  const CustomAddressText({super.key, required this.address});

  @override
  Widget build(BuildContext context) {
    return Text(
      address.tr(),
      style: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
