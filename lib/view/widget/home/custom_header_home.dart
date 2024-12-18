import 'package:flutter/material.dart';
import 'package:order_ready/core/constant/routes_page.dart';

import 'custom_icon_home.dart';
import 'custom_notification_icon.dart';

class CustomHeaderHome extends StatelessWidget {
  const CustomHeaderHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomIconHome(
          onPress: () {
            Navigator.of(context).pushNamed(AppRoutesPage.profile);
          },
          iconData: Icons.menu,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'DELIVER TO',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            Row(
              children: [
                Text(
                  'Halal Lab office',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.arrow_drop_down, color: Colors.black54),
              ],
            ),
          ],
        ),
        CustomNotificationIcon(
          onPress: () {},
        ),
      ],
    );
  }
}
