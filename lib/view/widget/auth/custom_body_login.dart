import 'package:flutter/material.dart';
import 'package:order_ready/core/function/valid_input.dart';
import '../../../core/constant/routes_page.dart';
import 'custom_forget_remember.dart';
import 'custom_text_form.dart';

class CustomBodyLogin extends StatelessWidget {
  const CustomBodyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState>? formState = GlobalKey<FormState>();
    return Form(
      key: formState,
      child: Column(
        children: [
          CustomTextForm(
            myValidator: (val) {
              val ??= "";
              return validInput(val: val, min: 5, max: 50, type: "email");
            },
            obscure: false,
            label: "Email",
            isPhone: false,
            hintText: "example@gmail.com",
          ),
          const SizedBox(
            height: 7,
          ),
          CustomTextForm(
            myValidator: (val) {
              val ??= "";
              return validInput(val: val, min: 5, max: 30, type: "password");
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
              Navigator.of(context).pushNamed(AppRoutesPage.forgetPassword);
            },
          ),
        ],
      ),
    );
  }
}
