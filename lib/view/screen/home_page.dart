import 'package:flutter/material.dart';
import 'package:order_ready/view/widget/home/custom_address_categories.dart';
import '../widget/home/custom_category_button.dart';
import '../widget/home/custom_header_home.dart';
import '../widget/home/custom_restaurant_card.dart';
import '../widget/home/custom_search_home.dart';
import '../widget/home/custom_text_for_user.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              right: 20,
              left: 20,
              top: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomHeaderHome(),
                const SizedBox(height: 20),
                const CustomTextForUser(),
                const SizedBox(height: 20),
                const CustomTextFieldHome(),
                const SizedBox(height: 20),
                const CustomAddressCategories(address: "All Categories"),
                const SizedBox(height: 10),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return const CustomCategoryButton(
                          label: 'All', isSelected: false);
                    },
                  ),
                ),
                const SizedBox(height: 20),
                const CustomAddressCategories(address: "Open Restaurants"),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    physics: const ClampingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return const Column(
                        children: [
                          CustomRestaurantCard(
                            name: 'Rose Garden Restaurant',
                            description: 'Burger - Chicken - Riche - Wings',
                            rating: 4.7,
                            deliveryFee: 'Free',
                            time: '20 min',
                          ),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
