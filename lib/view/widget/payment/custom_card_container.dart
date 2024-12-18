import 'package:flutter/material.dart';

import '../../../core/constant/image_asset.dart';

class CustomCardContainer extends StatelessWidget {
  const CustomCardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blueGrey[50],
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: Column(
        children: [
          Image.asset(
            AppImageAsset.masterCard, // Placeholder image
            height: 100,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 16),
          const Text(
            "No master card added",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            "You can add a mastercard and save it for later",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }
}
