import 'package:flutter/material.dart';

import '../../../core/constant/app_colors.dart';

class CustomForgetRemember extends StatelessWidget {
  final void Function() onTap;
  const CustomForgetRemember({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Checkbox(
                value: false,
                activeColor: Colors.green,
                onChanged: (value) {},
              ),
              const Text(
                "Remember me",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          InkWell(
            onTap: onTap,
            child: const Text(
              "Forget Password ?",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
