import 'package:flutter/material.dart';
import 'package:order_ready/core/constant/routes_page.dart';
import 'package:order_ready/view/screen/access_location.dart';
import 'package:order_ready/view/screen/new_address.dart';
import 'package:order_ready/view/screen/auth/login.dart';
import 'package:order_ready/view/screen/auth/signup.dart';
import 'package:order_ready/view/screen/cart.dart';
import 'package:order_ready/view/screen/details_product.dart';
import 'package:order_ready/view/screen/home_page.dart';
import 'package:order_ready/view/screen/my_address.dart';
import 'package:order_ready/view/screen/payment.dart';
import 'package:order_ready/view/screen/profile.dart';
import 'package:order_ready/view/screen/restaurant_view.dart';
import 'package:order_ready/view/screen/result_search.dart';
import 'package:order_ready/view/screen/search.dart';
import 'package:order_ready/view/screen/splash_screen.dart';
import 'package:order_ready/view/screen/onboarding.dart';
import 'package:order_ready/view/screen/success_full.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutesPage.onBoarding: (context) => const OnBoarding(),
  AppRoutesPage.splashScreen: (context) => const SplashScreen(),
  AppRoutesPage.login: (context) => const LogIn(),
  AppRoutesPage.signUp: (context) => const SignUp(),
  AppRoutesPage.homePage: (context) => const HomePage(),
  AppRoutesPage.accessLocation: (context) => const AccessLocation(),
  AppRoutesPage.search: (context) => const Search(),
  AppRoutesPage.resultSearch: (context) => const ResultSearch(),
  AppRoutesPage.restaurantView: (context) => const RestaurantView(),
  AppRoutesPage.detailsProduct: (context) => const DetailsProduct(),
  AppRoutesPage.cart: (context) => const Cart(),
  AppRoutesPage.myAddress: (context) => const MyAddress(),
  AppRoutesPage.newAddress: (context) => const NewAddress(),
  AppRoutesPage.payment: (context) => const Payment(),
  AppRoutesPage.successFull: (context) => const SuccessFull(),
  AppRoutesPage.profile: (context) => const Profile(),
};
