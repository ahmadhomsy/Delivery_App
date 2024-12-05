import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomVerifyRichText extends StatelessWidget {
  const CustomVerifyRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "CODE",
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xff32343E),
          ),
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Resend',
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff32343E),
                  decoration: TextDecoration.underline,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    // Single tapped.
                  },
              ),
              const TextSpan(
                text: " in.50sec",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff32343E),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
