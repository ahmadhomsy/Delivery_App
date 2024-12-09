import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../../core/constant/image_asset.dart';

class CustomSplash extends StatelessWidget {
  const CustomSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        width: 200,
        height: 200,
        AppImageAsset.lottieSplash,
        fit: BoxFit.fill,
      ),
    );
  }
}
