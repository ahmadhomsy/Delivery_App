import 'package:flutter/material.dart';
import 'package:order_ready/core/constant/image_asset.dart';
import 'package:order_ready/core/constant/routes_page.dart';
import '../../core/constant/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3),
        () => Navigator.of(context).pushNamed(AppRoutesPage.login));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          width: 200,
          height: 200,
          AppImageAsset.splashScreen,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
