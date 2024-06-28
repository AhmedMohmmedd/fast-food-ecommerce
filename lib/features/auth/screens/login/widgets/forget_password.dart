
import 'package:ecommerc/core/app_styles/styles.dart';
import 'package:ecommerc/features/auth/screens/login/forget_password.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: () {
            Navigator.push(context,
            MaterialPageRoute(builder: (context) {
          return const ForgetPasswordScreen();
        },),);
          },
          child: const Text(
            "Forget Password ?",
            style: TextStyles.medium14,
          ),
        ),
      ],
    );
  }
}
