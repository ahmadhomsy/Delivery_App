import 'package:flutter/material.dart';
import 'package:order_ready/core/constant/routes_page.dart';
import 'package:order_ready/view/screen/auth/Verification.dart';
import 'package:order_ready/view/screen/auth/access_location.dart';
import 'package:order_ready/view/screen/auth/forget_password.dart';
import 'package:order_ready/view/screen/auth/login.dart';
import 'package:order_ready/view/screen/auth/signup.dart';
import 'package:order_ready/view/screen/home_page.dart';
import 'package:order_ready/view/screen/splash_screen.dart';
import 'package:order_ready/view/screen/onboarding.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutesPage.onBoarding: (context) => const OnBoarding(),
  AppRoutesPage.splashScreen: (context) => const SplashScreen(),
  AppRoutesPage.login: (context) => const LogIn(),
  AppRoutesPage.signUp: (context) => const SignUp(),
  AppRoutesPage.verifyCode: (context) => const Verification(),
  AppRoutesPage.homePage: (context) => const HomePage(),
  AppRoutesPage.forgetPassword: (context) => const ForgetPassword(),
  AppRoutesPage.accessLocation: (context) => const AccessLocation(),
};
