import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:order_ready/core/constant/routes_page.dart';
import 'package:order_ready/main.dart';
import 'custom_icon_home.dart';

class CustomHeaderHome extends StatelessWidget {
  const CustomHeaderHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '23'.tr(),
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            Text(
              'Halal Lab office',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        CustomIconHome(
          onPress: () {
            Navigator.of(context).pushNamed(AppRoutesPage.profile);
          },
          iconData: Icons.menu,
        ),
        // CustomNotificationIcon(
        //   onPress: () {},
        // ),
      ],
    );
  }
}
