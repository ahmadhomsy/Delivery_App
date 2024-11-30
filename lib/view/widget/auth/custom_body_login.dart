import 'package:flutter/material.dart';
import '../../../core/constant/routes_page.dart';
import 'custom_forget_remember.dart';
import 'custom_text_form.dart';

class CustomBodyLogin extends StatelessWidget {
  const CustomBodyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTextForm(
          label: "Email",
          isPhone: false,
          hintText: "example@gmail.com",
          obscuringCharacter: "*",
        ),
        const SizedBox(
          height: 7,
        ),
        const CustomTextForm(
          label: "Password",
          isPhone: false,
          hintText: "enter your password",
          obscuringCharacter: "*",
        ),
        const SizedBox(
          height: 12,
        ),
        CustomForgetRemember(
          onTap: () {
            Navigator.of(context).pushNamed(AppRoutesPage.forgetPassword);
          },
        ),
      ],
    );
  }
}
