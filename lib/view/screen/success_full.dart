import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:order_ready/core/constant/routes_page.dart';
import '../../core/constant/image_asset.dart';
import '../widget/custom_button.dart';

class SuccessFull extends StatelessWidget {
  const SuccessFull({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Lottie.asset(
                    width: 200.w,
                    height: 200.h,
                    AppImageAsset.lottieCongratulations,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "39".tr(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20.sp,
                        height: 2.h,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "40".tr(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16.sp,
                        height: 2.h,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: CustomButton(
                    nameButton: "41",
                    onPress: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          AppRoutesPage.homePage,
                          (Route<dynamic> route) => false);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
