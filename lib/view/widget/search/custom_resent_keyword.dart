import 'package:flutter/material.dart';

class CustomResentKeyword extends StatelessWidget {
  final String recent;
  final void Function() onTap;
  const CustomResentKeyword(
      {super.key, required this.recent, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: const Color(0xFFD6D6D6))),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Center(
            child: Text(
              recent,
            ),
          ),
        ),
      ),
    );
  }
}
