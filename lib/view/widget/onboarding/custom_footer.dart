import 'package:flutter/material.dart';
import '../../../core/constant/app_colors.dart';
import '../../../core/constant/routes_page.dart';
import '../custom_button.dart';
import 'custom_dots.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const CustomDot(),
            CustomButton(
              nameButton: "Next",
              onPress: () {},
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacementNamed(AppRoutesPage.login);
              },
              child: const Text(
                "Skip",
                style: TextStyle(
                  color: AppColors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
