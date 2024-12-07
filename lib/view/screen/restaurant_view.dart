import 'package:flutter/material.dart';

import '../../core/constant/routes_page.dart';
import '../widget/home/custom_category_button.dart';
import '../widget/home/custom_restaurant_card.dart';
import '../widget/result/custom_product_card.dart';

class RestaurantView extends StatelessWidget {
  const RestaurantView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.black),
                      onPressed: () => Navigator.pop(context),
                    ),
                    const Text(
                      "Restaurant View",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 30), // Placeholder for alignment
                  ],
                ),
                const SizedBox(height: 16),
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child:
                      const Icon(Icons.image, size: 100, color: Colors.white),
                ),
                const SizedBox(height: 16),
                const Text(
                  "Spicy Restaurant",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                const Text(
                  "Maecenas sed diam eget risus varius blandit sit amet non magna. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.",
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: 16),
                const Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange, size: 18),
                    SizedBox(width: 4),
                    Text("4.7"),
                    SizedBox(width: 16),
                    Icon(Icons.local_shipping, color: Colors.green, size: 18),
                    SizedBox(width: 4),
                    Text("Free"),
                    SizedBox(width: 16),
                    Icon(Icons.access_time, color: Colors.blue, size: 18),
                    SizedBox(width: 4),
                    Text("20 min"),
                  ],
                ),
                const SizedBox(height: 16),
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
                const SizedBox(height: 16),
                const Text(
                  "Burger (10)",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
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
