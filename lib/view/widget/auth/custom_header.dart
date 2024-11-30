import 'package:flutter/material.dart';

import '../../../core/constant/image_asset.dart';

class CustomHeader extends StatelessWidget {
  final String title;
  final String bodyText;
  const CustomHeader({super.key, required this.title, required this.bodyText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 270,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImageAsset.backgroundImage),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black26, BlendMode.darken),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              height: 2,
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          Text(
            bodyText,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.white38,
            ),
          ),
        ],
      ),
    );
  }
}
