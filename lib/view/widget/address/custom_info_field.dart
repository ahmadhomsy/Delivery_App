import 'package:flutter/material.dart';

class CustomInfoField extends StatelessWidget {
  final String infoText;
  final String label;
  final IconData? icon;

  const CustomInfoField({
    super.key,
    required this.infoText,
    required this.label,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.grey[600],
          ),
        ),
        SizedBox(height: 8),
        Container(
          height: 30,
          padding: EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: Colors.blue[50],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              if (icon != null) Icon(icon, color: Colors.grey[600]),
              if (icon != null) const SizedBox(width: 8),
              Expanded(
                child: Text(
                  infoText,
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
