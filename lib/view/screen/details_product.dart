import 'package:flutter/material.dart';
import 'package:order_ready/core/constant/image_asset.dart';

import '../widget/details/custom__ingredient.dart';
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () => Navigator.pop(context),
                  ),
                  const Text(
                    "Details",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                child: const Icon(Icons.image, size: 100, color: Colors.white),
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$32",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      CustomCounterButton(
                        icon: Icons.remove,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text("2", style: TextStyle(fontSize: 16)),
                      ),
                      CustomCounterButton(icon: Icons.add),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffff7622),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "ADD TO CART",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
