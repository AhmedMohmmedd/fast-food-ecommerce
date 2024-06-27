import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {super.key, required this.title, required this.onTap,this.width = double.infinity,this.height = 50, this.color, this.textColor});
  final String title;
  final VoidCallback onTap;
  final double? width;
  final double? height;
  final Color? color;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? Theme.of(context).primaryColor,
          shape: const StadiumBorder()
        ),
        child: Text(title,style:  TextStyle(color: textColor??  Colors.white),),
      ),
    );
  }
}
