import 'package:flutter/material.dart';

import '../../core/constant/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function() onPressed1;
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: double.infinity,
      margin: const EdgeInsets.only(
        left: 50,
        right: 50,
        bottom: 15,
        top: 15,
      ),
      child: MaterialButton(
        onPressed: onPressed1,
        color: AppColors.deepOrange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
