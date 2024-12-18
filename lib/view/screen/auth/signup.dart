import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constant/app_colors.dart';
import '../../../core/constant/routes_page.dart';
import '../../../core/function/valid_input.dart';
import '../../../core/services/services.dart';
import '../../widget/auth/custom_back_button.dart';
import '../../widget/auth/custom_footer_auth.dart';
import '../../widget/auth/custom_header.dart';
import '../../widget/auth/custom_password_text_form.dart';
import '../../widget/auth/custom_text_form.dart';
import '../../widget/custom_address_text.dart';
import '../../widget/custom_button.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState>? formState = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomHeader(
              title: "8".tr(),
              bodyText: "9".tr(),
            ),
            SizedBox(height: 24.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAddressText(
                    address: "10".tr(),
                  ),
                  SizedBox(height: 8.h),
                  CustomTextForm(
                    hintText: "11".tr(),
                  ),
                  const SizedBox(height: 16),
                  CustomAddressText(
                    address: "12".tr(),
                  ),
                  SizedBox(height: 8.h),
                  CustomTextForm(
                    hintText: "13".tr(),
                  ),
                  SizedBox(height: 16.h),
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
                  SizedBox(height: 8.h),
                  CustomPasswordTextForm(
                    hintText: "6".tr(),
                  ),
                  SizedBox(height: 16.h),
                  CustomAddressText(
                    address: "14".tr(),
                  ),
                  SizedBox(height: 8.h),
                  CustomPasswordTextForm(
                    hintText: "15".tr(),
                  ),
                  SizedBox(height: 16.h),
                  CustomButton(
                    nameButton: "8",
                    onPress: () {
                      box.write('token', true);
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          AppRoutesPage.accessLocation, (Route<dynamic> route) {
                        return false;
                      });
                    },
                  ),
                  SizedBox(height: 24.h),
                  CustomFooterAuth(
                    text1: "16",
                    text2: "1",
                    onTap: () {
                      Navigator.of(context)
                          .pushReplacementNamed(AppRoutesPage.login);
                    },
                  ),
                  SizedBox(height: 16.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
