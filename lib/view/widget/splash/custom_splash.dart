import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import '../../../core/constant/image_asset.dart';

class CustomSplash extends StatelessWidget {
  const CustomSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        width: 200.w,
        height: 200.h,
        AppImageAsset.lottieSplash,
        fit: BoxFit.fill,
      ),
    );
  }
}
