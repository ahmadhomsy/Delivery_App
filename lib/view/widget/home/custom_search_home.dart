import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:order_ready/core/constant/routes_page.dart';

class CustomTextFieldHome extends StatelessWidget {
  const CustomTextFieldHome({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(AppRoutesPage.search);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        height: 55.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.red, Colors.orange],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            const Icon(Icons.search, color: Colors.white),
            SizedBox(width: 12.w),
            Text(
              '26'.tr(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );

    // return GestureDetector(
    //   onTap: () {
    //     Navigator.of(context).pushNamed(AppRoutesPage.search);
    //   },
    //   child: Container(
    //     padding: const EdgeInsets.symmetric(horizontal: 10),
    //     height: 50.h,
    //     decoration: BoxDecoration(
    //       color: Colors.grey[200],
    //       borderRadius: BorderRadius.circular(10),
    //     ),
    //     child: Row(
    //       children: [
    //         const Icon(Icons.search, color: Colors.grey),
    //         SizedBox(width: 10.w),
    //         Text(
    //           '26'.tr(),
    //           style: TextStyle(color: Colors.grey[600], fontSize: 16.sp),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
