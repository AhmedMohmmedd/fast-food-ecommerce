
import 'package:ecommerc/core/app_styles/app_colors.dart';
import 'package:ecommerc/core/app_styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomTitelRow extends StatelessWidget {
  const CustomTitelRow({
    super.key, required this.text, this.onTap,
  });
final String text;
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyles.bold20,
        ),
       GestureDetector(
        onTap: onTap ,
         child: const Row(
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
       ),
      ],
    );
  }
}