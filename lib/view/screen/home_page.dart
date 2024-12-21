import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widget/custom_address_text.dart';
import '../widget/home/custom_header_home.dart';
import '../widget/home/custom_product_card_new.dart';
import '../widget/home/custom_search_home.dart';
import '../widget/home/custom_text_for_user.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              right: 10,
              left: 10,
              top: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomHeaderHome(),
                SizedBox(height: 20.h),
                const CustomTextForUser(
                  nameUser: "ahmad",
                ),
                SizedBox(height: 20.h),
                const CustomTextFieldHome(),
                SizedBox(height: 20.h),
                CustomAddressText(
                  address: "27",
                ),
                SizedBox(height: 10.h),
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
                    return CustomProductCardNew(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
