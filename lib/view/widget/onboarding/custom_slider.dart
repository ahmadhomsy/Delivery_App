import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../data/data_source/static/static.dart';

class CustomSliderOnBoarding extends StatelessWidget {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      // controller: controller.pageController,
      // onPageChanged: (val) {
      //   controller.onPageChanged(val);
      // },
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) => Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Image.asset(
              width: double.infinity,
              onBoardingList[i].image,
              height: 325.h,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              onBoardingList[i].title.tr(),
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                onBoardingList[i].body.tr(),
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w400, fontSize: 16.sp, height: 2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
