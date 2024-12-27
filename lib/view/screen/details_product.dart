import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:order_ready/core/constant/image_asset.dart';
import 'package:order_ready/core/constant/routes_page.dart';
import 'package:order_ready/view/widget/custom_appbar.dart';
import 'package:order_ready/view/widget/custom_button.dart';

import '../widget/details/custom_counter.dart';
import '../widget/details/custom_ingredient.dart';
import '../widget/details/custom_counter_button.dart';
import '../widget/details/custom_size_product.dart';

class DetailsProduct extends StatelessWidget {
  const DetailsProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppbar(
                  appBarAddress: "34",
                ),
                SizedBox(height: 16.h),
                Stack(
                  children: [
                    Container(
                      height: 200.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors
                            .grey[400], // Replace with the appropriate shade
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    Positioned(
                      bottom: 8,
                      right: 8,
                      child: Container(
                        height: 32.h,
                        width: 32.w,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.favorite_border,
                            size: 16, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        AppImageAsset.logoRestaurant,
                        width: 30.w,
                        height: 20.h,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    const Text(
                      "Uttora Coffee House",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                Text(
                  "Pizza Calzone European",
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4.h),
                const Text(
                  "Prosciutto e funghi is a pizza variety that is topped with tomato sauce.",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 16.h),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange, size: 18),
                    SizedBox(width: 4.w),
                    Text("4.7"),
                    SizedBox(width: 16.w),
                    Icon(Icons.access_time, color: Colors.blue, size: 18),
                    SizedBox(width: 4.w),
                    Text("20 min"),
                  ],
                ),
                SizedBox(height: 140.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$32",
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const CustomCounter(),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                CustomButton(
                  nameButton: "35",
                  onPress: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('تمت الاضافة بنجاح'),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
