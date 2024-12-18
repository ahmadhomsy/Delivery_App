import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:order_ready/main.dart';
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
          text1.tr(),
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            text2.tr(),
            style: const TextStyle(color: Color(0xffff7622)),
          ),
        ),
      ],
    );
  }
}
