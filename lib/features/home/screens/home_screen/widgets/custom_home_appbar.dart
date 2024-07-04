
import 'package:ecommerc/core/app_styles/app_colors.dart';
import 'package:ecommerc/core/app_styles/styles.dart';
import 'package:flutter/material.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Find The Best Food & \nRestaurants',
          style: TextStyles.bold24,
        ),
        Container(
          height: 60,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.primaryColor,
          ),
          child: const Center(
            child: Padding(
              padding: EdgeInsets.all(4),
              child: Icon(
                Icons.notifications_outlined,
                size: 34,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
