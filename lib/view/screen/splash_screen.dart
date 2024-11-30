import 'package:flutter/material.dart';
import 'package:order_ready/core/constant/routes_page.dart';
import '../widget/splash/custom_splash.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () =>
          Navigator.of(context).pushReplacementNamed(AppRoutesPage.onBoarding),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: CustomSplash(),
    );
  }
}
