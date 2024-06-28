import 'package:ecommerc/core/app_styles/app_colors.dart';
import 'package:ecommerc/core/app_styles/images_strings.dart';
import 'package:ecommerc/core/app_styles/styles.dart';
import 'package:ecommerc/core/widgets/buttons/elevated_button.dart';
import 'package:ecommerc/features/auth/screens/login/login.dart';
import 'package:ecommerc/features/auth/screens/sign_up/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AuthWelcome extends StatelessWidget {
  const AuthWelcome({super.key});

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
                  SizedBox(
                    height: 250,
                    child: SvgPicture.asset(ImagesStrings.onboarding3),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Welcome to Quickbite',
                    style: TextStyles.bold24,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. ',
                    style: TextStyles.regular14,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomElevatedButton(
                    title: 'SIGN UP',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const SignUpScreen();
                          },
                        ));
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomElevatedButton(
                    title: 'LOGIN',
                    color: Colors.white,
                    textColor: Colors.black,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const LoginScreen();
                          },
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'By ',
                      style: TextStyles.regular14.copyWith(color: Colors.black),
                      children: const <TextSpan>[
                        TextSpan(
                          text: 'Registerion ',
                          style: TextStyle(color: AppColors.primaryColor),
                        ),
                        TextSpan(
                          text: 'Or ',
                        ),
                        TextSpan(
                          text: 'Login ',
                          style: TextStyle(color: AppColors.primaryColor),
                        ),
                        TextSpan(
                          text: 'you have to agreed to ',
                          // style: TextStyle(decoration: TextDecoration.underline),
                        ),
                        TextSpan(
                          text: 'Terms and Conditions',
                          style: TextStyle(color: AppColors.primaryColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
