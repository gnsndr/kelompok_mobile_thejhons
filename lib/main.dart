import 'package:flutter/material.dart';
import 'package:mobile_thejhons/screens/SplashScreen.dart';
import 'package:mobile_thejhons/screens/account_page.dart';
import 'package:mobile_thejhons/screens/food_page.dart';
import 'package:mobile_thejhons/screens/home_page.dart';
import 'package:mobile_thejhons/screens/landing_page.dart';
import 'package:mobile_thejhons/screens/login_page.dart';
import 'package:mobile_thejhons/screens/pool_page.dart';
import 'package:mobile_thejhons/screens/register_page.dart';

void main() {
  runApp(ThejhonsApp());
}

class ThejhonsApp extends StatelessWidget {
  const ThejhonsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
