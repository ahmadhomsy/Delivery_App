import 'package:flutter/material.dart';
import 'package:order_ready/view/widget/profile/custom_menu.dart';
import 'package:order_ready/view/widget/profile/custom_section.dart';

import '../widget/custom_appbar.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomAppbar(appBarAddress: "Profile"),
              ),
              const SizedBox(height: 16),
              // Profile Picture
              const CircleAvatar(
                radius: 50,
                child: Icon(
                  Icons.person,
                  size: 60,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 16),
              // User Name and Bio
              const Text(
                "Vishal Khadok",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                "I love fast food",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[500],
                ),
              ),
              const SizedBox(height: 24),
              // Menu Items
              CustomSection(
                children: [
                  CustomMenu(
                    title: "Personal Info",
                    icon: Icons.person_outline,
                    onTap: () {},
                  ),
                  CustomMenu(
                    title: "Addresses",
                    icon: Icons.location_on_outlined,
                    onTap: () {},
                  ),
                ],
              ),
              CustomSection(
                children: [
                  CustomMenu(
                    title: "Cart",
                    icon: Icons.shopping_cart_outlined,
                    onTap: () {},
                  ),
                  CustomMenu(
                    title: "Favourite",
                    icon: Icons.favorite_border,
                    onTap: () {},
                  ),
                  CustomMenu(
                    title: "Notifications",
                    icon: Icons.notifications_outlined,
                    onTap: () {},
                  ),
                  CustomMenu(
                    title: "Payment Method",
                    icon: Icons.payment,
                    onTap: () {},
                  ),
                ],
              ),
              CustomSection(
                children: [
                  CustomMenu(
                    title: "FAQs",
                    icon: Icons.help_outline,
                    onTap: () {},
                  ),
                  CustomMenu(
                    title: "User Reviews",
                    icon: Icons.star_outline,
                    onTap: () {},
                  ),
                  CustomMenu(
                    title: "Settings",
                    icon: Icons.settings_outlined,
                    onTap: () {},
                  ),
                ],
              ),
              // Logout Button
              CustomSection(
                children: [
                  CustomMenu(
                    title: "Log Out",
                    icon: Icons.logout,
                    onTap: () {},
                  )
                ],
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
