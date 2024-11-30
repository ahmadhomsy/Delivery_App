import 'package:flutter/material.dart';

import '../../../core/constant/app_colors.dart';
import '../../../core/constant/routes_page.dart';
import '../../widget/auth/custom_header.dart';
import '../../widget/auth/custom_text_form.dart';
import '../../widget/custom_button.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 1,
        child: Stack(
          children: [
            const CustomHeader(
              title: "Forgot Password",
              bodyText: "Please sign in to your existing account",
            ),
            Positioned.fill(
              top: 222,
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.auth,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
                      child: Column(
                        children: [
                          CustomTextForm(
                            label: "Email",
                            isPhone: false,
                            hintText: "example@gmail.com",
                            obscuringCharacter: "*",
                          ),
                          SizedBox(
                            height: 7,
                          ),
                        ],
                      ),
                    ),
                    CustomButton(
                      text: "Send Code",
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(AppRoutesPage.verifyCode);
                      },
                      top: 8,
                      bottom: 25,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
