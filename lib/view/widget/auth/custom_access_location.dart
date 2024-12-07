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
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: CustomButton(
            nameButton: "ACCESS LOCATION",
            onPress: () {
              Navigator.of(context)
                  .pushReplacementNamed(AppRoutesPage.homePage);
            },
          ),
        ),
        const SizedBox(
          height: 20,
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
