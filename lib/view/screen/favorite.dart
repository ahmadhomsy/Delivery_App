import 'package:flutter/material.dart';
import 'package:order_ready/view/widget/custom_appbar.dart';

import '../widget/result/custom_product_card.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                CustomAppbar(appBarAddress: "57"),
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
