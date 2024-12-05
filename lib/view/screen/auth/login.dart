import 'package:flutter/material.dart';
import '../../../core/constant/app_colors.dart';
import '../../../core/constant/routes_page.dart';
import '../../../core/function/valid_input.dart';
import '../../widget/auth/custom_body_login.dart';
import '../../widget/auth/custom_footer_auth.dart';
import '../../widget/auth/custom_forget_remember.dart';
import '../../widget/auth/custom_header.dart';
import '../../widget/auth/custom_or.dart';
import '../../widget/auth/custom_row_social.dart';
import '../../widget/auth/custom_text_form.dart';
import '../../widget/custom_button.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

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
                title: "Log In",
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
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 15),
                        child: Column(
                          children: [
                            CustomTextForm(
                              myValidator: (val) {
                                val ??= "";
                                return validInput(
                                    val: val, min: 5, max: 50, type: "email");
                              },
                              obscure: false,
                              label: "Email",
                              isPhone: false,
                              hintText: "example@gmail.com",
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
                              label: "Password",
                              isPhone: false,
                              hintText: "enter your password",
                              obscure: true,
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            CustomForgetRemember(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(AppRoutesPage.forgetPassword);
                              },
                            ),
                          ],
                        ),
                      ),
                      CustomButton(
                        text: "Log In",
                        onPressed: () {
                          if (formState.currentState!.validate()) {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                              AppRoutesPage.accessLocation,
                              (Route<dynamic> route) => false,
                            );
                          }
                        },
                        top: 6,
                        bottom: 25,
                      ),
                      CustomFooterAuth(
                        onTap: () {
                          Navigator.of(context).pushNamed(AppRoutesPage.signUp);
                        },
                        text1: "Don’t have an account? ",
                        text2: "Sign Up",
                      ),
                      const CustomOr(),
                      const CustomRowSocial(),
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
