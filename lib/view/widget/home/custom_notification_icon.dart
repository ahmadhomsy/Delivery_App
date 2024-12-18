import 'package:flutter/material.dart';

class CustomNotificationIcon extends StatelessWidget {
  final void Function() onPress;
  const CustomNotificationIcon({super.key, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(50),
          ),
          child: IconButton(
            icon: const Icon(Icons.mail_outline, color: Colors.black),
            onPressed: onPress,
          ),
        ),
        Positioned(
          right: 10,
          top: 10,
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
            child: const Text(
              '2',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
