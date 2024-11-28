import 'package:flutter/material.dart';
import '../../../core/constant/app_colors.dart';
import '../../../core/constant/image_asset.dart';
import '../../widget/auth/custom_textform.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 1,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 295,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImageAsset.backgroundImage),
                  fit: BoxFit.cover,
                  colorFilter:
                      ColorFilter.mode(Colors.black26, BlendMode.darken),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Log In",
                    style: TextStyle(
                      height: 2,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Please sign in to your existing account",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white38,
                    ),
                  ),
                ],
              ),
            ),
            Positioned.fill(
              top: 270,
              child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.auth,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: [
                        CustomTextForm(
                          label: "Email",
                          isPhone: false,
                          hintText: "example@gmail.com",
                          obscuringCharacter: "*",
                        ),
                        CustomTextForm(
                          label: "Password",
                          isPhone: false,
                          hintText: "example@gmail.com",
                          obscuringCharacter: "*",
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
