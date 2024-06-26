import 'package:ecommerc/core/app_styles/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppThemes {
  static final light = ThemeData(
    fontFamily: "Poppins",
    useMaterial3: false,
    primaryColor: AppColors.primaryColor,
  );
}
