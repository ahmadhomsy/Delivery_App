import 'package:flutter/material.dart';

class CustomPasswordTextForm extends StatelessWidget {
  final String hintText;
  const CustomPasswordTextForm({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: Colors.grey[200],
        suffixIcon: const Icon(Icons.visibility_outlined),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
