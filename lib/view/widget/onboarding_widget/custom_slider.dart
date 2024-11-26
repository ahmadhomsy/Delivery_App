import 'package:flutter/material.dart';
import '../../../data/data_source/static/static.dart';

class CustomSliderOnBoarding extends StatelessWidget {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: PageView.builder(
        // controller: controller.pageController,
        // onPageChanged: (val) {
        //   controller.onPageChanged(val);
        // },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(
          children: [
            Image.asset(
              onBoardingList[i].image,
              height: MediaQuery.of(context).size.height * 0.5,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              onBoardingList[i].title,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                onBoardingList[i].body,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
