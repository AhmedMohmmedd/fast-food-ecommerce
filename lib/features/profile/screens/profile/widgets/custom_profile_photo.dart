
import 'package:ecommerc/core/app_styles/app_colors.dart';
import 'package:ecommerc/features/profile/screens/drawer/widgets/custom_drawer_head.dart';
import 'package:flutter/material.dart';

class CustomProfilePhoto extends StatelessWidget {
  const CustomProfilePhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomImageContiner(
     child: Stack(
       children: [
         Positioned(
           bottom: 5,
           right: 10,
           child: Container(
             decoration:const BoxDecoration(
               shape: BoxShape.circle,
               color: Colors.white
             ),
             child:const Padding(
               padding:  EdgeInsets.all(4.0),
               child: Icon(
                 Icons.edit_outlined,
                 color: AppColors.primaryColor,
                 size: 28,
               ),
             ),
           ),
         ),
       ],
     ),
                  );
  }
}
