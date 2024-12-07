import 'package:flutter/material.dart';
import 'package:order_ready/core/constant/routes_page.dart';
import '../../widget/auth/custom_header.dart';
import '../../widget/auth/custom_password_text_form.dart';
import '../../widget/custom_address_text.dart';
import '../../widget/custom_button.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomHeader(
              title: "Reset Password",
              bodyText: "Please enter the new password",
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
                    nameButton: "RESET",
                    onPress: () {
                      Navigator.of(context)
                          .pushReplacementNamed(AppRoutesPage.login);
                    },
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
