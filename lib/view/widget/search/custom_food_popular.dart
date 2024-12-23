import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:order_ready/core/constant/routes_page.dart';

class CustomFoodPopular extends StatelessWidget {
  final String name;
  final String nameRestaurant;
  const CustomFoodPopular(
      {super.key, required this.name, required this.nameRestaurant});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(AppRoutesPage.detailsProduct);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 100.h,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            name,
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
          ),
          Text(nameRestaurant,
              style: TextStyle(fontSize: 12.sp, color: Colors.grey)),
        ],
      ),
    );
  }
}
