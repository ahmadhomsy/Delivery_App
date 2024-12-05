import 'package:flutter/material.dart';
import 'package:order_ready/routes.dart';
import 'package:order_ready/view/screen/details_product.dart';
import 'package:order_ready/view/screen/home_page.dart';
import 'package:order_ready/view/screen/restaurant_view.dart';
import 'package:order_ready/view/screen/result_search.dart';
import 'package:order_ready/view/screen/search.dart';
import 'package:order_ready/view/widget/filter/custom_filter_dialog.dart';
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
      home: const ResultSearch(),
      routes: routes,
    );
  }
}
