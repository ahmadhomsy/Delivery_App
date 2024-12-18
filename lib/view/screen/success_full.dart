import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../core/constant/image_asset.dart';
import '../../core/constant/routes_page.dart';
import '../widget/custom_button.dart';

class SuccessFull extends StatelessWidget {
  const SuccessFull({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Lottie.asset(
              width: 200,
              height: 200,
              AppImageAsset.lottieCongratulations,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Congratulations",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20, height: 2, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "You successfully maked a payment,enjoy our service!",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16, height: 2, fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: CustomButton(
              nameButton: "Track Order",
              onPress: () {},
            ),
          ),
        ],
      ),
    );
  }
}
