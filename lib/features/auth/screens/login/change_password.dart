import 'package:ecommerc/core/app_styles/app_colors.dart';
import 'package:ecommerc/core/app_styles/styles.dart';
import 'package:ecommerc/core/widgets/buttons/elevated_button.dart';
import 'package:ecommerc/core/widgets/text_fields/normal_text_field.dart';
import 'package:ecommerc/core/widgets/text_fields/password_text_field.dart';
import 'package:ecommerc/features/auth/screens/login/cheak_email.dart';
import 'package:ecommerc/features/auth/screens/login/password_updated.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Change Password',
                  style: TextStyles.bold24,
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Enter Your Password Below',
                  style: TextStyle(
                    color: AppColors.dark,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                CustomPasswordTextField(
                  hint: '*********',
                  label: 'NEW PASSWORD',
                  controller: TextEditingController(),
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomPasswordTextField(
                  hint: '*********',
                  label: 'CONFIRM PASSWORD',
                  controller: TextEditingController(),
                ),
                const SizedBox(
                  height: 100,
                ),
                CustomElevatedButton(
                  title: 'RESET PASSWORD',
                  onTap: () {
                                   Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return const PasswordUpdatedScreen();
                    },),);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
