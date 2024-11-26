import 'package:flutter/material.dart';
import 'package:order_ready/core/constant/routes_page.dart';
import 'package:order_ready/view/screen/initial_page.dart';
import 'package:order_ready/view/screen/onboarding.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutesPage.onBoarding : (context) =>const OnBoarding(),
  AppRoutesPage.initialPage : (context) =>const InitialPage(),
};
