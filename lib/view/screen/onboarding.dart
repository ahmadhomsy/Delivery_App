import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../bloc/onboarding_cubit/on_boarding_cubit.dart';
import '../../core/constant/routes_page.dart';
import '../../core/services/services.dart';
import '../../data/data_source/static/static.dart';
import '../widget/custom_button.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController _pageController = PageController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 500.h,
                child: BlocBuilder<OnBoardingCubit, int>(
                  builder: (context, state) {
                    return PageView.builder(
                      controller: _pageController,
                      onPageChanged: (index) {
                        context.read<OnBoardingCubit>().changePage(index);
                      },
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
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16.sp,
                                    height: 2),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 150.h,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      BlocBuilder<OnBoardingCubit, int>(
                        builder: (context, currentPage) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ...List.generate(
                                onBoardingList.length,
                                (index) => AnimatedContainer(
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  duration: const Duration(
                                    milliseconds: 900,
                                  ),
                                  width: 6.w,
                                  height: 6.h,
                                  decoration: BoxDecoration(
                                    color: currentPage == index
                                        ? Color(0xffff7622)
                                        : Colors.grey,
                                    borderRadius: BorderRadius.circular(300),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                      BlocBuilder<OnBoardingCubit, int>(
                        builder: (context, currentPage) {
                          return CustomButton(
                            nameButton: "21",
                            onPress: currentPage < onBoardingList.length - 1
                                ? () {
                                    final indexPage = currentPage + 1;
                                    _pageController.animateToPage(
                                      indexPage,
                                      duration: Duration(milliseconds: 300),
                                      curve: Curves.easeInOut,
                                    );
                                    context
                                        .read<OnBoardingCubit>()
                                        .changePage(indexPage);
                                  }
                                : () {
                                    box.write('isFirstOpen', true);
                                    Navigator.of(context).pushReplacementNamed(
                                        AppRoutesPage.login);
                                  },
                          );
                        },
                      ),
                      GestureDetector(
                        onTap: () {
                          box.write('isFirstOpen', true);
                          Navigator.of(context)
                              .pushReplacementNamed(AppRoutesPage.login);
                        },
                        child: Text(
                          "22".tr(),
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
