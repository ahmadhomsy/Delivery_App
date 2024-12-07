import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String nameButton;
  final void Function() onPress;
  const CustomButton({
    super.key,
    required this.nameButton,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xffff7622),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          nameButton,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
