
import 'package:ecommerc/core/app_styles/app_colors.dart';
import 'package:flutter/material.dart';

class CustomArrowForwardIcon extends StatelessWidget {
  const CustomArrowForwardIcon({
    super.key, this.onTap,
  });
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.primaryColor,
              ),
              child: const Padding(
                padding: EdgeInsets.all(4.0),
                child: Center(
       child: Icon(
         Icons.arrow_forward_ios_outlined,
         color: Colors.white,
         size: 18,
       ),
                ),
              )),
    );
  }
}
