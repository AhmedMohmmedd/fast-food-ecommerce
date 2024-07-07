

import 'package:ecommerc/core/app_styles/app_colors.dart';
import 'package:flutter/material.dart';

class CircularCheckbox extends StatelessWidget {
  final bool value;

  const CircularCheckbox({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: value ? Colors.white : AppColors.primaryColor,
          width: 2,
        ),
        // color: value ? Colors.blue : Colors.white,
      ),
      child: value
          ? const Icon(
              Icons.fiber_manual_record,
              size: 16,
              color: Colors.white,
            )
          : null,
    );
  }
}