
import 'package:ecommerc/core/app_styles/app_colors.dart';
import 'package:ecommerc/core/app_styles/styles.dart';
import 'package:flutter/material.dart';

class DontHaveAccountSection extends StatelessWidget {
  const DontHaveAccountSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: const TextSpan(children: [
        TextSpan(
            text: "if You Don't Have an Account  ",
            style: TextStyle(color: AppColors.dark)),
        TextSpan(
            text: "Sign Up Now", style: TextStyles.semibold14),
      ]),
    );
  }
}
