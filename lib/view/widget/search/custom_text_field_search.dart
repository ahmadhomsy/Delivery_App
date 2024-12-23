import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:order_ready/core/constant/routes_page.dart';

class CustomTextFieldSearch extends StatelessWidget {
  const CustomTextFieldSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      textInputAction: TextInputAction.search,
      onSubmitted: (val) {
        Navigator.of(context).pushNamed(AppRoutesPage.resultSearch);
      },
      decoration: InputDecoration(
        hintText: '31'.tr(),
        prefixIcon: const Icon(Icons.search),
        suffixIcon: IconButton(
          icon: const Icon(
            Icons.close,
            size: 20,
          ),
          onPressed: () {},
        ),
        filled: true,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
