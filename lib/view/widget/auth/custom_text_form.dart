import 'package:flutter/material.dart';
import '../../../core/constant/app_colors.dart';

class CustomTextForm extends StatelessWidget {
  final String hintText;
  final String label;
  final IconData? iconData;
  final TextEditingController? myController;
  final String? Function(String?)? myValidator;
  final bool isPhone;
  final String obscuringCharacter;

  const CustomTextForm({
    super.key,
    required this.hintText,
    required this.label,
    required this.obscuringCharacter,
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
          style:
              TextStyle(fontWeight: FontWeight.w400, fontSize: 16, height: 2.5),
        ),
        TextFormField(
          keyboardType:
              isPhone ? TextInputType.numberWithOptions() : TextInputType.text,
          validator: myValidator,
          controller: myController,
          obscuringCharacter: obscuringCharacter,
          decoration: InputDecoration(
            fillColor: Color(0xFFF0F5FA),
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
