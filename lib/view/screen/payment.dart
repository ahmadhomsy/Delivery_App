import 'package:flutter/material.dart';
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
              const CustomAppbar(appBarAddress: "Payment"),
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
              const SizedBox(height: 20),
              const CustomCardContainer(),
              const SizedBox(height: 16),
              const CustomNewButton(),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "TOTAL:",
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "\$96",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              CustomButton(
                nameButton: "PAY & CONFIRM",
                onPress: () {
                  Navigator.of(context).pushNamed(AppRoutesPage.successFull);
                },
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
