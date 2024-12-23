import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:order_ready/view/widget/custom_appbar.dart';

import '../../core/constant/routes_page.dart';
import '../widget/home/custom_category_button.dart';
import '../widget/home/custom_restaurant_card.dart';
import '../widget/result/custom_product_card.dart';

class RestaurantView extends StatelessWidget {
  const RestaurantView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                CustomAppbar(appBarAddress: "42"),
                SizedBox(height: 16.h),
                Container(
                  height: 200.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child:
                      const Icon(Icons.image, size: 100, color: Colors.white),
                ),
                SizedBox(height: 16.h),
                Text(
                  "Spicy Restaurant",
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4.h),
                const Text(
                  "Maecenas sed diam eget risus varius blandit sit amet non magna. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.",
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
                SizedBox(height: 16.h),
                // SizedBox(
                //   height: 40,
                //   width: double.infinity,
                //   child: ListView.builder(
                //     scrollDirection: Axis.horizontal,
                //     shrinkWrap: true,
                //     itemCount: 10,
                //     itemBuilder: (BuildContext context, int index) {
                //       return const CustomCategoryButton(
                //           label: 'All', isSelected: false);
                //     },
                //   ),
                // ),
                // SizedBox(height: 16.h),
                Text(
                  "43".tr(),
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8.h),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                  ),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return CustomProductCard(
                      title: [
                        'Burger Bistro',
                        'Smokin\' Burger',
                        'Buffalo Burgers',
                      ][index],
                      subtitle: [
                        'Rose Garden',
                        'Cafenio Restaurant',
                        'Kaji Firm Kitchen',
                      ][index],
                      price: ['\$40', '\$60', '\$75'][index],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
