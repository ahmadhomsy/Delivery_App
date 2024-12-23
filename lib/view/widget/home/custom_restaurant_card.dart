import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:order_ready/core/constant/routes_page.dart';
import 'package:order_ready/main.dart';

class CustomRestaurantCard extends StatelessWidget {
  final String name;
  final String description;
  final double rating;
  final String deliveryFee;
  final String time;
  const CustomRestaurantCard(
      {super.key,
      required this.name,
      required this.description,
      required this.rating,
      required this.deliveryFee,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(AppRoutesPage.restaurantView);
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            // Placeholder for Image
            Container(
              width: 100.w,
              height: 75.h,
              color: Colors.grey,
            ),
            SizedBox(width: 15.w),
            // Restaurant Details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    description,
                    style: const TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.orange, size: 16),
                      SizedBox(width: 5.w),
                      Text(
                        '$rating',
                        style: TextStyle(
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Text('| $deliveryFee | $time'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
