import 'package:flutter/material.dart';
import '../../../core/constant/app_colors.dart';
import '../../widget/auth/custom_header.dart';
import '../../widget/auth/custom_verify.dart';
import '../../widget/custom_button.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 1,
        child: Stack(
          children: [
            const CustomHeader(
              title: "Verification",
              bodyText: "We have sent a code to your email",
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
                          EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("data"),
                              Text("data"),
                              Text("data"),
                            ],
                          ),
                          CustomVerify(),
                        ],
                      ),
                    ),
                    CustomButton(
                      text: "VERIFY",
                      onPressed: () {},
                      top: 8,
                      bottom: 25,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
