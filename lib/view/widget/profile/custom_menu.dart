import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomMenu extends StatelessWidget {
  final String title;
  final IconData icon;
  final void Function() onTap;

  const CustomMenu({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 8),
      leading: Icon(icon, color: Colors.orangeAccent),
      title: Text(
        title.tr(),
        style: TextStyle(
          fontSize: 16.sp,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing:
          const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
      onTap: onTap,
    );
  }
}
