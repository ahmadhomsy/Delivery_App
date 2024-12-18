import 'package:flutter/material.dart';

class CustomSection extends StatelessWidget {
  final List<Widget> children;
  const CustomSection({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.blueGrey[50],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(children: children),
    );
  }
}
