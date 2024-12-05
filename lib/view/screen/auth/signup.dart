import 'package:flutter/material.dart';
import '../../../core/constant/app_colors.dart';
import '../../../core/constant/routes_page.dart';
import '../../../core/function/valid_input.dart';
import '../../widget/auth/custom_back_button.dart';
import '../../widget/auth/custom_header.dart';
import '../../widget/auth/custom_text_form.dart';
import '../../widget/custom_button.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState>? formState = GlobalKey<FormState>();

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
              const CustomBackButton(),
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
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 7),
                        child: Column(
                          children: [
                            CustomTextForm(
                              myValidator: (val) {
                                val ??= "";
                                return validInput(
                                    val: val,
                                    min: 5,
                                    max: 30,
                                    type: "username");
                              },
                              label: "NAME",
                              isPhone: false,
                              hintText: "example@gmail.com",
                              obscure: false,
                            ),
                            CustomTextForm(
                              myValidator: (val) {
                                val ??= "";
                                return validInput(
                                    val: val, min: 5, max: 30, type: "email");
                              },
                              label: "EMAIL",
                              isPhone: false,
                              hintText: "example@gmail.com",
                              obscure: false,
                            ),
                            CustomTextForm(
                              myValidator: (val) {
                                val ??= "";
                                return validInput(
                                    val: val,
                                    min: 5,
                                    max: 30,
                                    type: "password");
                              },
                              label: "PASSWORD",
                              isPhone: false,
                              hintText: "enter your password",
                              obscure: true,
                            ),
                            CustomTextForm(
                              myValidator: (val) {
                                val ??= "";
                                return validInput(
                                    val: val, min: 10, max: 10, type: "phone");
                              },
                              label: "PHONE",
                              isPhone: false,
                              hintText: "enter your phone",
                              obscure: false,
                            ),
                          ],
                        ),
                      ),
                      CustomButton(
                        text: "Sign Up",
                        onPressed: () {
                          if (formState.currentState!.validate()) {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                              AppRoutesPage.accessLocation,
                              (Route<dynamic> route) => false,
                            );
                          }
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
