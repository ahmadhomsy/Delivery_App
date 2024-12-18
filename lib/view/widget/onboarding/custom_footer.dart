import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:order_ready/main.dart';
import '../../../core/constant/app_colors.dart';
import '../../../core/constant/routes_page.dart';
import '../../../core/services/services.dart';
import '../custom_button.dart';
import 'custom_dots.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const CustomDot(),
          CustomButton(
            nameButton: "21",
            onPress: () {},
          ),
          GestureDetector(
            onTap: () {
              box.write('isFirstOpen', true);
              Navigator.of(context).pushReplacementNamed(AppRoutesPage.login);
            },
            child: Text(
              "22".tr(),
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 18.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
