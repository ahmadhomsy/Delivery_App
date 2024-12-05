import 'package:flutter/material.dart';

import '../custom_address_text.dart';

class CustomAddressCategories extends StatelessWidget {
  final String address;
  const CustomAddressCategories({super.key, required this.address});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomAddressText(
          address: address,
        ),
        TextButton(
          onPressed: () {},
          child: const Text('See All'),
        ),
      ],
    );
  }
}
