import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:order_ready/core/constant/routes_page.dart';
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
                child: CustomAppbar(appBarAddress: "55"),
              ),
              SizedBox(height: 8.h),
              const CircleAvatar(
                radius: 50,
                child: Icon(
                  Icons.person,
                  size: 60,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16.h),
              Text(
                "Vishal Khadok",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 24.h),
              CustomSection(
                children: [
                  CustomMenu(
                    title: "56",
                    icon: Icons.person_outline,
                    onTap: () {},
                  ),
                  CustomMenu(
                    title: "44",
                    icon: Icons.shopping_cart_outlined,
                    onTap: () {
                      Navigator.of(context).pushNamed(AppRoutesPage.cart);
                    },
                  ),
                ],
              ),
              CustomSection(
                children: [
                  CustomMenu(
                    title: "57",
                    icon: Icons.favorite_border,
                    onTap: () {
                      Navigator.of(context).pushNamed(AppRoutesPage.favorite);
                    },
                  ),
                  CustomMenu(
                    title: "58",
                    icon: Icons.help_outline,
                    onTap: () {
                      Navigator.of(context).pushNamed(AppRoutesPage.faqs);
                    },
                  ),
                  CustomMenu(
                    title: "59",
                    icon: Icons.settings_outlined,
                    onTap: () {
                      Navigator.of(context).pushNamed(AppRoutesPage.settings);
                    },
                  ),
                  // CustomMenu(
                  //   title: "Notifications",
                  //   icon: Icons.notifications_outlined,
                  //   onTap: () {},
                  // ),
                  // CustomMenu(
                  //   title: "Payment Method",
                  //   icon: Icons.payment,
                  //   onTap: () {},
                  // ),
                ],
              ),
              CustomSection(
                children: [
                  CustomMenu(
                    title: "60",
                    icon: Icons.logout,
                    onTap: () {
                      Navigator.of(context).pushNamed(AppRoutesPage.login);
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
