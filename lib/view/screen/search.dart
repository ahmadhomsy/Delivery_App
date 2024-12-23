import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:order_ready/core/constant/routes_page.dart';
import '../widget/custom_address_text.dart';
import '../widget/custom_appbar.dart';
import '../widget/home/custom_icon_home.dart';
import '../widget/home/custom_notification_icon.dart';
import '../widget/search/custom_food_popular.dart';
import '../widget/search/custom_resent_keyword.dart';
import '../widget/search/custom_restaurant_item.dart';
import '../widget/search/custom_text_field_search.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 8,
                ),
                CustomAppbar(
                  appBarAddress: '30',
                ),
                SizedBox(height: 8.h),
                const CustomTextFieldSearch(),
                SizedBox(height: 20.h),
                const CustomAddressText(
                  address: "32",
                ),
                SizedBox(height: 10.h),
                const Column(
                  children: [
                    CustomRestaurantItem(
                      name: "Pansi Restaurant",
                      rating: 4.7,
                    ),
                    CustomRestaurantItem(
                        name: "American Spicy Burger Shop", rating: 4.3),
                    CustomRestaurantItem(
                        name: "Cafenio Coffee Club", rating: 4.0),
                  ],
                ),
                SizedBox(height: 20.h),
                const CustomAddressText(
                  address: "33",
                ),
                const SizedBox(height: 10),
                GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    CustomFoodPopular(
                        name: "European Pizza",
                        nameRestaurant: "Uttora Coffee House"),
                    CustomFoodPopular(
                        name: "Buffalo Pizza",
                        nameRestaurant: "Cafenio Coffee Club"),
                    CustomFoodPopular(
                        name: "Buffalo Pizza",
                        nameRestaurant: "Cafenio Coffee Club"),
                    CustomFoodPopular(
                        name: "Buffalo Pizza",
                        nameRestaurant: "Cafenio Coffee Club"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
