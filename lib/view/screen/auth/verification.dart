import 'package:flutter/material.dart';
import '../../../core/constant/app_colors.dart';
import '../../../core/constant/routes_page.dart';
import '../../widget/auth/custom_back_button.dart';
import '../../widget/auth/custom_header.dart';
import '../../widget/auth/custom_verify.dart';
import '../../widget/auth/custom_verify_rich_text.dart';
import '../../widget/custom_button.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomHeader(
              title: "Verification",
              bodyText: "We have sent a code to your email",
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomVerifyRichText(),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomVerify(),
                  const SizedBox(height: 24),
                  CustomButton(
                    nameButton: "VERIFY",
                    onPress: () {
                      Navigator.of(context)
                          .pushReplacementNamed(AppRoutesPage.resetPassword);
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
