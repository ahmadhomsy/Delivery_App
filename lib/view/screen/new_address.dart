import 'package:flutter/material.dart';
import 'package:order_ready/view/widget/address/custom_info_field.dart';
import 'package:order_ready/view/widget/custom_appbar.dart';
import 'package:order_ready/view/widget/custom_button.dart';
import 'package:order_ready/view/widget/home/custom_category_button.dart';

class NewAddress extends StatelessWidget {
  const NewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 11),
              child: CustomAppbar(
                appBarAddress: "Add New Location",
              ),
            ),
            Container(
              height: 200,
              color: Colors.blueGrey[100],
              child: Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Icon(Icons.location_on, size: 50, color: Colors.orange),
                    Positioned(
                      top: 80,
                      child: Text(
                        "Move to edit location",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          backgroundColor: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomInfoField(
                    label: "ADDRESS",
                    icon: Icons.location_on,
                    infoText: "3235 Royal Ln. Mesa, New Jersy 34567",
                  ),
                  const SizedBox(height: 16),
                  const Row(
                    children: [
                      Expanded(
                        child: CustomInfoField(
                          label: "STREET",
                          infoText: "Hason Nagar",
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: CustomInfoField(
                          label: "POST CODE",
                          infoText: "34567",
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const CustomInfoField(
                    label: "APPARTMENT",
                    infoText: "345",
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "LABEL AS",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Row(
                    children: [
                      CustomCategoryButton(
                        label: "Home",
                        isSelected: true,
                      ),
                      SizedBox(width: 8),
                      CustomCategoryButton(
                        label: "Work",
                        isSelected: false,
                      ),
                      SizedBox(width: 8),
                      CustomCategoryButton(
                        label: "Other",
                        isSelected: false,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  CustomButton(
                    nameButton: "SAVE LOCATION",
                    onPress: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
