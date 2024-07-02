
import 'package:ecommerc/core/app_styles/app_colors.dart';
import 'package:ecommerc/core/app_styles/styles.dart';
import 'package:flutter/material.dart';

class CustomTitelRow extends StatelessWidget {
  const CustomTitelRow({
    super.key, required this.text,
  });
final String text;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyles.bold20,
        ),
       const Row(
          children: [
            Text(
              'View All',
              style: TextStyle(
                color: AppColors.primaryColor,
                fontSize: 16,
              ),
            ),
            Icon(
              Icons.arrow_forward,
              size: 18,
              color: AppColors.primaryColor,
            )
          ],
        ),
      ],
    );
  }
}