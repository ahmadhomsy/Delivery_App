import 'package:flutter/material.dart';

class CustomCounterButton extends StatelessWidget {
  final IconData icon;
  const CustomCounterButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(30),
        ),
        child: Icon(icon, color: Colors.white),
      ),
    );
  }
}
