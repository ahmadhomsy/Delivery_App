import 'package:flutter/material.dart';
import '../../../core/constant/app_colors.dart';

class CustomTextForm extends StatelessWidget {
  final String hintText;
  final String label;
  final bool isPhone;
  final bool obscure;
  final IconData? iconData;
  final TextEditingController? myController;
  final String? Function(String?)? myValidator;

  const CustomTextForm({
    super.key,
    required this.hintText,
    required this.label,
    required this.obscure,
    this.iconData,
    this.myController,
    this.myValidator,
    required this.isPhone,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            height: 2.5,
          ),
        ),
        TextFormField(
          keyboardType: isPhone
              ? const TextInputType.numberWithOptions()
              : TextInputType.text,
          validator: myValidator,
          controller: myController,
          obscureText: obscure,
          obscuringCharacter: "*",
          decoration: InputDecoration(
            fillColor: const Color(0xFFF0F5FA),
            filled: true,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(color: Color(0xFFF0F5FA)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(color: Color(0xFFF0F5FA)),
            ),
            hintText: hintText,
            hintStyle: const TextStyle(color: AppColors.grey, fontSize: 12),
            suffixIcon: Icon(iconData),
          ),
        ),
      ],
    );
  }
}
