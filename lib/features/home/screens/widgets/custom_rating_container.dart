
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomRatingContainer extends StatelessWidget {
  const CustomRatingContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
