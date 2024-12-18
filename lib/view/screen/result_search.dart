import 'package:flutter/material.dart';
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
            scrollDirection: Axis.vertical,
            children: [
              const SizedBox(
                height: 20,
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
                  DropdownButton<String>(
                    value: 'Burger',
                    items: const [
                      DropdownMenuItem(value: 'Burger', child: Text('BURGER')),
                      DropdownMenuItem(value: 'Pizza', child: Text('PIZZA')),
                      DropdownMenuItem(value: 'Drinks', child: Text('DRINKS')),
                    ],
                    onChanged: (value) {},
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.search, color: Colors.black),
                        onPressed: () {},
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
              const SizedBox(height: 8),
              const Text(
                'Popular Burgers',
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
              const SizedBox(height: 16),
              const Text(
                'Open Restaurants',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
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
