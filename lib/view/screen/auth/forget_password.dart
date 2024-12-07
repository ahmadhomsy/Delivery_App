import 'package:flutter/material.dart';
import 'package:order_ready/core/constant/routes_page.dart';
import '../../widget/auth/custom_header.dart';
import '../../widget/auth/custom_text_form.dart';
import '../../widget/custom_address_text.dart';
import '../../widget/custom_button.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomHeader(
              title: "Forgot Password",
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
                    ],
                  ),
                  CustomButton(
                    nameButton: "SEND CODE",
                    onPress: () {
                      Navigator.of(context)
                          .pushReplacementNamed(AppRoutesPage.verifyCode);
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
