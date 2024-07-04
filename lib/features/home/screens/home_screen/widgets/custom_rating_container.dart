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
        color: Colors.white70,
        
        borderRadius: BorderRadius.circular(12),
      ),
      child:const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.star,
            color: Colors.orangeAccent,size: 16,
          ),
          Text(
            '4.5', style: TextStyle(fontSize: 12,
          ),),
        ],
      ),
    );
  }
}
