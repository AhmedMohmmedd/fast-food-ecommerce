import 'package:ecommerc/core/app_styles/images_strings.dart';
import 'package:ecommerc/core/widgets/buttons/elevated_button.dart';
import 'package:ecommerc/core/widgets/buttons/outlined_button.dart';
import 'package:ecommerc/core/widgets/dividers/or.dart';
import 'package:ecommerc/core/widgets/text_fields/normal_text_field.dart';
import 'package:ecommerc/core/widgets/text_fields/password_text_field.dart';
import 'package:ecommerc/features/auth/screens/login/widgets/dont_have_account_section.dart';
import 'package:ecommerc/features/auth/screens/login/widgets/forget_password.dart';
import 'package:ecommerc/features/auth/screens/login/widgets/logo_section.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Center(child: LogoSection()),
                  const SizedBox(
                    height: 40,
                  ),
                  CustomTextField(
                    hint: 'Contact@gmail.com',
                    label: 'Email',
                    controller: TextEditingController(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomPasswordTextField(
                    hint: 'Contact@gmail.com',
                    label: 'Password',
                    controller: TextEditingController(),
                  ),
                  const ForgetPassword(),
                  const SizedBox(
                    height: 25,
                  ),
                  CustomElevatedButton(
                    title: 'LOGIN',
                    onTap: () {},
                  ),
                  const OrDividerWidget(),
                  CustomOutlinedButton(
                    title: "Login With Google",
                    onTap: () {},
                    icon: ImagesStrings.google,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomOutlinedButton(
                    title: "Login With Facebook",
                    onTap: () {},
                    icon: ImagesStrings.facebook,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const DontHaveAccountSection(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
