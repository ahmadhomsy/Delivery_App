import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:order_ready/core/constant/routes_page.dart';
import 'package:order_ready/view/widget/auth/custom_text_form.dart';
import '../../../core/services/services.dart';
import '../../widget/auth/custom_header.dart';
import '../../widget/auth/custom_password_text_form.dart';
import '../../widget/custom_address_text.dart';
import '../../widget/custom_button.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState>? formState = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomHeader(
              title: "1".tr(),
              bodyText: "2".tr(),
            ),
            SizedBox(height: 24.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAddressText(
                    address: "3".tr(),
                  ),
                  SizedBox(height: 8.h),
                  CustomTextForm(
                    hintText: "4".tr(),
                  ),
                  SizedBox(height: 16.h),
                  CustomAddressText(
                    address: "5".tr(),
                  ),
                  const SizedBox(height: 8),
                  CustomPasswordTextForm(
                    hintText: "6".tr(),
                  ),
                  SizedBox(height: 30.h),
                  CustomButton(
                    onPress: () {
                      box.write('token', true);
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          AppRoutesPage.accessLocation, (Route<dynamic> route) {
                        return false;
                      });
                    },
                    nameButton: "1",
                  ),
                  SizedBox(height: 24.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("7".tr()),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacementNamed(AppRoutesPage.signUp);
                        },
                        child: Text(
                          "8".tr(),
                          style: const TextStyle(color: Color(0xffff7622)),
                        ),
                      ),
                    ],
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
