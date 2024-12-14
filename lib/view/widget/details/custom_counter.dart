import 'package:flutter/material.dart';
import 'custom_counter_button.dart';

class CustomCounter extends StatelessWidget {
  final int counter;
  const CustomCounter({super.key, required this.counter});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const CustomCounterButton(
          icon: Icons.remove,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text("$counter",
              style: const TextStyle(fontSize: 16, color: Colors.white)),
        ),
        const CustomCounterButton(icon: Icons.add),
      ],
    );
  }
}
