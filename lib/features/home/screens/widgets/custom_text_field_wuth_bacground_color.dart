
import 'package:flutter/material.dart';

class CustomTextFieldWithBacgroundColor extends StatelessWidget {
  const CustomTextFieldWithBacgroundColor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(30)),
      child: TextFormField(
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            size: 28,
            color: Colors.grey,
          ),
          hintText: 'Search Here',
          hintStyle: const TextStyle(fontSize: 14, color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 1,
            ),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        ),
      ),
    );
  }
}
