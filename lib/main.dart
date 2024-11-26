import 'package:flutter/material.dart';
import 'package:order_ready/routes.dart';
import 'package:order_ready/view/screen/initial_page.dart';
import 'package:order_ready/view/screen/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const OnBoarding(),
      routes: routes,
    );
  }
}
