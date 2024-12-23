import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_counter_button.dart';

class CustomCounter extends StatelessWidget {
  final int counter;
  const CustomCounter({super.key, required this.counter});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomCounterButton(
          icon: Icons.remove,
          onTap: () {},
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text("$counter",
              style: TextStyle(fontSize: 16.sp, color: Colors.white)),
        ),
        CustomCounterButton(
          icon: Icons.add,
          onTap: () {},
        ),
      ],
    );
  }
}
