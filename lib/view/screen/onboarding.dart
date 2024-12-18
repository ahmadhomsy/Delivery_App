import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widget/onboarding/custom_footer.dart';
import '../widget/onboarding/custom_slider.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 500.h,
              child: const CustomSliderOnBoarding(),
            ),
            SizedBox(
              width: double.infinity,
              height: 150.h,
              child: const CustomFooter(),
            ),
          ],
        ),
      ),
    );
  }
}
