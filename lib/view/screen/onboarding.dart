import 'package:flutter/material.dart';
import '../widget/onboarding_widget/custom_footer.dart';
import '../widget/onboarding_widget/custom_slider.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: CustomSliderOnBoarding(),
            ),
            Expanded(
              flex: 1,
              child: CustomFooter(),
            )
          ],
        ),
      ),
    );
  }
}
