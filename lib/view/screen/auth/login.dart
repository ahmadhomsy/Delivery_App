import 'package:flutter/material.dart';
import 'package:order_ready/core/constant/routes_page.dart';
import 'package:order_ready/view/widget/auth/custom_text_form.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomHeader(
              title: "Log In",
              bodyText: "Please sign in to your existing account",
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
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: (value) {},
                          ),
                          const Text("Remember me"),
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(AppRoutesPage.forgetPassword);
                        },
                        child: const Text(
                          "Forgot Password",
                          style: TextStyle(color: Color(0xffff7622)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  CustomButton(
                    onPress: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          AppRoutesPage.accessLocation, (Route<dynamic> route) {
                        return false;
                      });
                    },
                    nameButton: "LOG IN",
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?"),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed(AppRoutesPage.signUp);
                        },
                        child: const Text(
                          "SIGN UP",
                          style: TextStyle(color: Color(0xffff7622)),
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
