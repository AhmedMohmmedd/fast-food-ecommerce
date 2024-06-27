import 'package:ecommerc/core/app_styles/styles.dart';

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, required this.label,  this.controller});
  final String hint;
  final String label;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyles.regular14,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        label: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Text(label,style: TextStyles.bold18),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      ),
    );
  }
}
