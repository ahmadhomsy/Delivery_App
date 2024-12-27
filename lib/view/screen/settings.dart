import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:order_ready/bloc/switch_lang/switch_cubit.dart';
import 'package:order_ready/bloc/switch_lang/switch_cubit.dart';
import 'package:order_ready/core/constant/routes_page.dart';
import 'package:order_ready/core/services/services.dart';
import 'package:order_ready/view/widget/custom_appbar.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = WidgetsBinding.instance.window.locale;
    if (locale.languageCode == 'ar') {
      box.write("stateSwitch", false);
    } else {
      box.write("stateSwitch", true);
    }
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                CustomAppbar(appBarAddress: "59",),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  width: double.infinity,
                  height: 70.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [Colors.blueAccent, Colors.lightBlueAccent],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.language,
                              color: Colors.white,
                              size: 30,
                            ),
                            SizedBox(width: 10.w),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "68".tr(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.sp,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "69".tr(),
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.white70,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        BlocBuilder<SwitchCubit, bool>(
                          builder: (context, isOn) {
                            return Switch(
                              value: isOn,
                              onChanged: (val) {
                                // box.write("stateSwitch", val);
                                Navigator.of(context).pushNamedAndRemoveUntil(
                                  AppRoutesPage.splashScreen,
                                  (Route<dynamic> route) => false,
                                );
                                (val)
                                    ? context.setLocale(Locale('en'))
                                    : context.setLocale(Locale('ar'));

                                context.read<SwitchCubit>().toggleSwitch(val);
                              },
                              activeColor: Colors.white,
                              activeTrackColor: Colors.blueGrey,
                              inactiveThumbColor: Colors.white,
                              inactiveTrackColor: Colors.grey,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
