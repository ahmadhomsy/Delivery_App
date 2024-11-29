import 'package:flutter/material.dart';

import '../../core/constant/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double top;
  final void Function() onPressed;
  const CustomButton({
    super.key,
    required this.top,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      width: double.infinity,
      margin: EdgeInsets.only(
        left: 50,
        right: 50,
        bottom: 15,
        top: top,
      ),
      child: MaterialButton(
        onPressed: onPressed,
        color: AppColors.deepOrange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
