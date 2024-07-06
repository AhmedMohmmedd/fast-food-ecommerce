
import 'package:flutter/material.dart';

class CustomArrowBackIcon extends StatelessWidget {
  const CustomArrowBackIcon({
    super.key, this.size, this.onTap, this.borderColor,
  });
final double? size;
final Function()? onTap;
final Color? borderColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[200],
            border: Border.all(
              color: borderColor?? Colors.grey,
            )
          ),
          child:  Padding(
            padding:const EdgeInsets.all(4.0),
            child: Center(
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.black,
                size: size,
              ),
            ),
          )),
    );
  }
}
