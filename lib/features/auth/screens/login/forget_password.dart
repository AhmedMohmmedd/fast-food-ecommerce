import 'package:ecommerc/core/app_styles/app_colors.dart';
import 'package:ecommerc/core/app_styles/styles.dart';
import 'package:ecommerc/core/widgets/buttons/elevated_button.dart';
import 'package:ecommerc/core/widgets/text_fields/normal_text_field.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding:const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Forget Password',
                    style: TextStyles.bold24,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'Enter Your Registered Email Below',
                    style: TextStyle(color:  AppColors.dark , fontSize: 12,),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  const CustomTextField(
                    hint: 'Contact@gmail.com',
                    label: 'Email here',
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(children: [
                        TextSpan(
                            text: " Remember the password? ",
                            style: TextStyle(color: AppColors.dark)),
                        TextSpan(text: "Login Now", style: TextStyles.semibold14 ,),
                      ]),
                    ),
                  ),
            
                     const SizedBox(
                    height: 100,
                  ),
                  CustomElevatedButton(title: 'SUBMIT', onTap: (){}),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
