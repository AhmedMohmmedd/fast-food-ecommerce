import 'package:ecommerc/core/app_styles/images_strings.dart';
import 'package:ecommerc/core/app_styles/styles.dart';
import 'package:ecommerc/core/widgets/text_fields/normal_text_field.dart';
import 'package:ecommerc/features/auth/screens/widgets/logo_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LogoSection(),
            
                SizedBox(height: 40,),
            
                CustomTextField(hint: 'Contact@gmail.com', label: 'Email',),
               SizedBox(height: 20,),
                CustomTextField(hint: 'Contact@gmail.com', label: 'Password',),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
