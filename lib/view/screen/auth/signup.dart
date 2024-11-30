import 'package:flutter/material.dart';
import '../../../core/constant/app_colors.dart';
import '../../../core/constant/routes_page.dart';
import '../../widget/auth/custom_header.dart';
import '../../widget/auth/custom_text_form.dart';
import '../../widget/custom_button.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 1,
          child: Stack(
            children: [
              const CustomHeader(
                title: "Sign Up",
                bodyText: "Please sign up to get started",
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
                            EdgeInsets.symmetric(horizontal: 30.0, vertical: 7),
                        child: Column(
                          children: [
                            CustomTextForm(
                              label: "NAME",
                              isPhone: false,
                              hintText: "example@gmail.com",
                              obscuringCharacter: "*",
                            ),
                            CustomTextForm(
                              label: "EMAIL",
                              isPhone: false,
                              hintText: "example@gmail.com",
                              obscuringCharacter: "*",
                            ),
                            CustomTextForm(
                              label: "PASSWORD",
                              isPhone: false,
                              hintText: "enter your password",
                              obscuringCharacter: "*",
                            ),
                            CustomTextForm(
                              label: "PHONE",
                              isPhone: false,
                              hintText: "enter your phone",
                              obscuringCharacter: "*",
                            ),
                          ],
                        ),
                      ),
                      CustomButton(
                        text: "Sign Up",
                        onPressed: () {
                          Navigator.of(context).pushReplacementNamed(
                              AppRoutesPage.accessLocation);
                        },
                        top: 0,
                        bottom: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
