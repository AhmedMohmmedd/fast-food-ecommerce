
import 'package:ecommerc/core/app_styles/app_colors.dart';
import 'package:ecommerc/core/app_styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomFavoritBottnItem extends StatelessWidget {
  const CustomFavoritBottnItem({
    super.key, required this.isSelected, this.borderRadius, required this.titel,
  });
  final String titel;
final bool isSelected;
final BorderRadiusGeometry? borderRadius;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 150,
      decoration: BoxDecoration(
        color: isSelected ? AppColors.primaryColor : Colors.grey[300],
        borderRadius: borderRadius ?? BorderRadius.circular(28),
      ),
      child:  Center(
        child: Text(
              titel,
              style: TextStyles.semibold14,
            ),
      ),
    );
  }
}
