
import 'package:ecommerc/core/app_styles/styles.dart';
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
          onPressed: () {},
          child: const Text(
            "Forget Password ?",
            style: TextStyles.medium14,
          ),
        ),
      ],
    );
  }
}
