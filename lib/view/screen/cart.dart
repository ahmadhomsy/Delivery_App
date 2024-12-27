import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geocoding/geocoding.dart';
import 'package:order_ready/core/constant/routes_page.dart';
import 'package:order_ready/core/function/get_location.dart';
import '../../core/constant/image_asset.dart';
import '../widget/cart/custom_cart_item.dart';
import '../widget/custom_button.dart';
import '../widget/details/custom_counter_button.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset:
                        Offset(0, 4), // Horizontal and vertical shadow offset
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Back Button
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.orange),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  // Title
                  Text(
                    "44".tr(),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Action Button
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "45".tr(),
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Container(
            //   padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
            //   color: Colors.white,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       IconButton(
            //         icon: const Icon(Icons.arrow_back, color: Colors.white),
            //         onPressed: () {
            //           Navigator.of(context).pop();
            //         },
            //       ),
            //       Text(
            //         "44".tr(),
            //         style: TextStyle(color: Colors.black, fontSize: 20.sp),
            //       ),
            //       TextButton(
            //         onPressed: () {},
            //         child: Text(
            //           "45".tr(),
            //           style: TextStyle(color: Colors.orange),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                itemCount: 8,
                itemBuilder: (BuildContext context, int index) {
                  return const CustomCartItem(
                      counter: 5, title: "title", price: 2, quantity: 2);
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.8),
                    blurRadius: 8,
                    offset:
                        Offset(0, 4), // Horizontal and vertical shadow offset
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // DELIVERY ADDRESS Label
                  Text(
                    "46".tr(),
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.grey[500],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  // Address Box
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            LocationManager.placeMark[0].street.toString(),
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[700],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.h),
                  // Total Section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "48".tr(),
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.grey[700],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "\$96",
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomButton(
                    nameButton: "49",
                    onPress: () {
                      Navigator.of(context).pushNamed(AppRoutesPage.payment);
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
