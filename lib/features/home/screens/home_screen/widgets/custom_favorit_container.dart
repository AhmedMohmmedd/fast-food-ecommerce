
import 'package:ecommerc/core/app_styles/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomFavoriteContainer extends StatelessWidget {
  const CustomFavoriteContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.primaryColor,
        ),
        child: const Padding(
          padding: EdgeInsets.all(4.0),
          child: Center(
            child: Icon(
              Icons.favorite_outline,
              color: Colors.white,
            ),
          ),
        ));
  }
}
