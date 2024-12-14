import 'package:flutter/material.dart';
import 'package:order_ready/core/constant/image_asset.dart';
import 'package:order_ready/core/constant/routes_page.dart';
import 'package:order_ready/view/widget/custom_appbar.dart';
import 'package:order_ready/view/widget/custom_button.dart';

import '../widget/details/custom_counter.dart';
import '../widget/details/custom_ingredient.dart';
import '../widget/details/custom_counter_button.dart';
import '../widget/details/custom_size_product.dart';

class DetailsProduct extends StatelessWidget {
  const DetailsProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppbar(
                appBarAddress: "Details",
              ),
              const SizedBox(height: 16),
              Stack(
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors
                          .grey[400], // Replace with the appropriate shade
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  Positioned(
                    bottom: 8,
                    right: 8,
                    child: Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.8),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.favorite_border,
                          size: 16, color: Colors.grey),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      AppImageAsset.logoRestaurant,
                      width: 30,
                      height: 20,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Uttora Coffee House",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const Text(
                "Pizza Calzone European",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              const Text(
                "Prosciutto e funghi is a pizza variety that is topped with tomato sauce.",
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
              const SizedBox(height: 8),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "SIZE:",
                  ),
                  CustomSizeProduct(
                    size: "10\"",
                    selected: false,
                  ),
                  CustomSizeProduct(size: "14\"", selected: true),
                  CustomSizeProduct(
                    size: "16\"",
                    selected: false,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                "INGREDIENTS:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return const CustomIngredient(
                      icon: Icons.local_pizza_outlined,
                    );
                  },
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "\$32",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const CustomCounter(
                      counter: 2,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              CustomButton(
                nameButton: "ADD TO CART",
                onPress: () {
                  Navigator.of(context).pushNamed(AppRoutesPage.cart);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
