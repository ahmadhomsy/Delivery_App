import 'package:flutter/material.dart';
import '../../../core/constant/image_asset.dart';
import '../../../core/constant/routes_page.dart';
import '../custom_button.dart';

class CustomAccessLocation extends StatelessWidget {
  const CustomAccessLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(1000),
          child: Image.asset(
            AppImageAsset.accessLocation,
            width: 270,
            height: 270,
          ),
        ),
        CustomButton(
          top: 30,
          bottom: 30,
          text: "ACCESS LOCATION",
          onPressed: () {
            Navigator.of(context).pushNamed(AppRoutesPage.homePage);
          },
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "D-FOOD WILL ACCESS YOUR LOCATION ONLY WHILE USING THE APP",
            textAlign: TextAlign.center,
            style:
                TextStyle(fontSize: 16, height: 2, fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}
