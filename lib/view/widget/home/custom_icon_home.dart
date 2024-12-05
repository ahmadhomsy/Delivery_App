import 'package:flutter/material.dart';

class CustomIconHome extends StatelessWidget {
  final IconData iconData;
  final void Function() onPress;
  const CustomIconHome(
      {super.key, required this.iconData, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(50),
      ),
      child: IconButton(
        icon: Icon(iconData),
        color: Colors.black,
        onPressed: onPress,
      ),
    );
  }
}
