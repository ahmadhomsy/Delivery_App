import 'package:flutter/material.dart';
import 'package:order_ready/core/constant/routes_page.dart';
import 'package:order_ready/view/screen/auth/login.dart';
import 'package:order_ready/view/screen/splash_screen.dart';
import 'package:order_ready/view/screen/onboarding.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutesPage.onBoarding: (context) => const OnBoarding(),
  AppRoutesPage.splashScreen: (context) => const SplashScreen(),
  AppRoutesPage.login: (context) => const LogIn(),
};
