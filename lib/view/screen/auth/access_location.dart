import 'package:flutter/material.dart';
import '../../widget/auth/custom_access_location.dart';

class AccessLocation extends StatelessWidget {
  const AccessLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomAccessLocation(),
    );
  }
}
