import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:order_ready/core/constant/routes_page.dart';
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
            Padding(
              padding: EdgeInsets.symmetric(vertical: 11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(AppRoutesPage.newAddress);
                    },
                  ),
                  Text(
                    "53".tr(),
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 30.w),
                ],
              ),
            ),
            Container(
              height: 200,
              color: Colors.blueGrey[100],
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Move to edit location",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                    Icon(Icons.location_on, size: 50, color: Colors.orange),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
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
                  SizedBox(height: 16.h),
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
                  SizedBox(height: 16.h),
                  const CustomInfoField(
                    label: "APPARTMENT",
                    infoText: "345",
                  ),
                  SizedBox(
                    height: 100.h,
                  ),
                  CustomButton(
                    nameButton: "54",
                    onPress: () {
                      Navigator.of(context)
                          .pushReplacementNamed(AppRoutesPage.cart);
                    },
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
