import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class CustomVerify extends StatelessWidget {
  const CustomVerify({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: OtpTextField(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        fieldWidth: 50,
        borderRadius: BorderRadius.circular(10),
        numberOfFields: 4,

        filled: true,
        keyboardType: TextInputType.number,
        fillColor: const Color(0xFFF0F5FA),
        borderColor: const Color(0xFFF0F5FA),
        showFieldAsBox: true,
        onCodeChanged: (String code) {},
        onSubmit: (String verificationCode) {}, // end onSubmit
      ),
    );
  }
}
