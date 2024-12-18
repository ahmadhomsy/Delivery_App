import 'package:flutter/material.dart';
import 'package:order_ready/core/constant/routes_page.dart';
import '../widget/custom_address_text.dart';
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
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CustomIconHome(
                          onPress: () {
                            Navigator.of(context).pop();
                          },
                          iconData: Icons.arrow_back,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          "Search",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    CustomNotificationIcon(
                      onPress: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const CustomTextFieldSearch(),
                const SizedBox(height: 20),

                const CustomAddressText(
                  address: "Recent Keywords",
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return CustomResentKeyword(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(AppRoutesPage.resultSearch);
                        },
                        recent: "Burger",
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),

                const CustomAddressText(
                  address: "Suggested Restaurants",
                ),
                const SizedBox(height: 10),
                const Column(
                  children: [
                    CustomRestaurantItem(name: "Pansi Restaurant", rating: 4.7),
                    CustomRestaurantItem(
                        name: "American Spicy Burger Shop", rating: 4.3),
                    CustomRestaurantItem(
                        name: "Cafenio Coffee Club", rating: 4.0),
                  ],
                ),
                const SizedBox(height: 20),

                // Popular fast food section
                const CustomAddressText(
                  address: "Popular Fast Food",
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
