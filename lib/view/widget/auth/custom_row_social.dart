import 'package:flutter/material.dart';
import '../../../core/constant/image_asset.dart';
import 'custom_social.dart';

class CustomRowSocial extends StatelessWidget {
  const CustomRowSocial({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomSocial(
            onTap: () {},
            imageUrl: AppImageAsset.facebook,
          ),
          CustomSocial(
            onTap: () {},
            imageUrl: AppImageAsset.twitter,
          ),
          CustomSocial(
            onTap: () {},
            imageUrl: AppImageAsset.google,
          ),
        ],
      ),
    );
  }
}
