import 'package:ecommerc/core/app_styles/app_themes.dart';
import 'package:ecommerc/features/auth/screens/auth_welcome.dart';
import 'package:ecommerc/features/auth/screens/login/forget_password.dart';
import 'package:ecommerc/features/auth/screens/login/login.dart';
import 'package:ecommerc/features/home/screens/home_screen/home_screen.dart';
import 'package:ecommerc/features/onboarding/welcome/welcom.dart';
import 'package:ecommerc/features/profile/screens/address/my_assress_screen.dart';
import 'package:ecommerc/features/profile/screens/profile/my_profile_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fast Food',
      debugShowCheckedModeBanner: false,
      theme: AppThemes.light,
      home:  HomeScreen(),
    );
  }
}
