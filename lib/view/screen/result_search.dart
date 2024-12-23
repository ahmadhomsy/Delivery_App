import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:order_ready/core/constant/routes_page.dart';
import 'package:order_ready/view/widget/result/custom_product_card.dart';

import '../widget/filter/custom_filter_dialog.dart';
import '../widget/home/custom_restaurant_card.dart';

class ResultSearch extends StatelessWidget {
  const ResultSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  Text(
                    "36".tr(),
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.search, color: Colors.black),
                        onPressed: () {
                          Navigator.of(context).pushNamed(AppRoutesPage.search);
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.filter_list_outlined,
                            color: Colors.black),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (_) => CustomFilterDialog(),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              Text(
                '37'.tr(),
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
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
                itemCount: 4,
                itemBuilder: (context, index) {
                  return CustomProductCard(
                    title: [
                      'Burger Bistro',
                      'Smokin\' Burger',
                      'Buffalo Burgers',
                      'Bullseye Burgers'
                    ][index],
                    subtitle: [
                      'Rose Garden',
                      'Cafenio Restaurant',
                      'Kaji Firm Kitchen',
                      'Kabab Restaurant'
                    ][index],
                    price: ['\$40', '\$60', '\$75', '\$94'][index],
                  );
                },
              ),
              SizedBox(height: 16.h),
              Text(
                '38'.tr(),
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.h),
              SizedBox(
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: const ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(AppRoutesPage.restaurantView);
                      },
                      child: const Column(
                        children: [
                          CustomRestaurantCard(
                            name: 'Another Restaurant',
                            description: 'Pizza - Pasta - Salad',
                            rating: 4.5,
                            deliveryFee: '\$3',
                            time: '25 min',
                          ),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
