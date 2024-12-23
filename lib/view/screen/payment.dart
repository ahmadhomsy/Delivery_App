import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:order_ready/core/constant/image_asset.dart';
import 'package:order_ready/core/constant/routes_page.dart';
import 'package:order_ready/view/widget/custom_appbar.dart';
import 'package:order_ready/view/widget/custom_button.dart';
import 'package:order_ready/view/widget/payment/custom_new_button.dart';
import 'package:order_ready/view/widget/payment/custom_payment_method.dart';
import '../widget/payment/custom_card_container.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppbar(appBarAddress: "50"),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomPaymentMethod(
                    imagePath: AppImageAsset.syriaTel,
                    label: "Syria-Tel",
                    selected: false,
                  ),
                  CustomPaymentMethod(
                    imagePath: AppImageAsset.mtn,
                    label: "MTN",
                    selected: false,
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              const CustomCardContainer(),
              SizedBox(height: 16.h),
              const CustomNewButton(),
              SizedBox(height: 32.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "48".tr(),
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "\$96",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              CustomButton(
                nameButton: "52",
                onPress: () {
                  Navigator.of(context).pushNamed(AppRoutesPage.successFull);
                },
              ),
              SizedBox(
                height: 10.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
