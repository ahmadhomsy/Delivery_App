import 'package:flutter/material.dart';
import 'package:order_ready/routes.dart';
import 'package:order_ready/view/screen/auth/login.dart';
import 'package:order_ready/view/screen/onboarding.dart';
import 'package:order_ready/view/screen/splash_screen.dart';
import 'core/services/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LogIn(),
      routes: routes,
    );
  }
}
