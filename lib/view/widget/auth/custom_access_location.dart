import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:order_ready/core/constant/routes_page.dart';
import '../../../core/constant/image_asset.dart';
import '../../../core/function/get_location.dart';
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
            width: 270.w,
            height: 270.h,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: CustomButton(
              nameButton: "28",
              onPress: () async {
                await LocationManager.getLocation();

                Navigator.of(context).pushNamedAndRemoveUntil(
                    AppRoutesPage.homePage, (Route<dynamic> route) => false);
              },
            )),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "29".tr(),
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16.sp, height: 2.h, fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}
