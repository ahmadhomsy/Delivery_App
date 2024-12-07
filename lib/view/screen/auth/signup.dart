import 'package:flutter/material.dart';
import '../../../core/constant/app_colors.dart';
import '../../../core/constant/routes_page.dart';
import '../../../core/function/valid_input.dart';
import '../../widget/auth/custom_back_button.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomHeader(
              title: "Sign Up",
              bodyText: "Please sign up to get started",
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomAddressText(
                        address: "FIRST NAME",
                      ),
                      SizedBox(height: 8),
                      CustomTextForm(
                        hintText: "enter first name",
                      ),
                      SizedBox(height: 16),
                      CustomAddressText(
                        address: "LAST NAME",
                      ),
                      SizedBox(height: 8),
                      CustomTextForm(
                        hintText: "enter last name",
                      ),
                      SizedBox(height: 16),
                      CustomAddressText(
                        address: "EMAIL",
                      ),
                      SizedBox(height: 8),
                      CustomTextForm(
                        hintText: "example@gmail.com",
                      ),
                      SizedBox(height: 16),
                      CustomAddressText(
                        address: "PASSWORD",
                      ),
                      SizedBox(height: 8),
                      CustomPasswordTextForm(
                        hintText: "enter your password",
                      ),
                      SizedBox(height: 16),
                      CustomAddressText(
                        address: "RE-PASSWORD",
                      ),
                      SizedBox(height: 8),
                      CustomPasswordTextForm(
                        hintText: "confirm your password",
                      ),
                      SizedBox(height: 16),
                    ],
                  ),
                  CustomButton(
                    nameButton: "SIGN UP",
                    onPress: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          AppRoutesPage.accessLocation, (Route<dynamic> route) {
                        return false;
                      });
                    },
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("you have an account?"),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed(AppRoutesPage.login);
                        },
                        child: const Text(
                          "LOG IN",
                          style: TextStyle(color: Color(0xffff7622)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
