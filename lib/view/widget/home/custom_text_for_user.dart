import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextForUser extends StatelessWidget {
  final String nameUser;
  const CustomTextForUser({super.key, required this.nameUser});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '24'.tr(),
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          nameUser,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '25'.tr(),
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
