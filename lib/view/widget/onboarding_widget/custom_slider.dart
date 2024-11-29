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
        itemBuilder: (context, i) => Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Image.asset(
                width: double.infinity,
                onBoardingList[i].image,
                height: MediaQuery.of(context).size.height * 0.5,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                onBoardingList[i].title,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                ),
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
                  style: TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 16, height: 2),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
