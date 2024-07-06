
import 'package:ecommerc/core/app_styles/app_colors.dart';
import 'package:ecommerc/features/home/screens/home_screen/widgets/custom_favorit_container.dart';
import 'package:ecommerc/features/home/screens/order_screen/widgets/custom_arrow_back_item.dart';
import 'package:flutter/material.dart';

class ImageStacSection extends StatelessWidget {
  const ImageStacSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: const BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(
            28,
          ),
          bottomRight: Radius.circular(
            28,
          ),
        ),
        image: DecorationImage(
          image: AssetImage('assets/food/image3.jfif'),
          fit: BoxFit.cover,
        ),
      ),
      child:const Stack(
        children: [
           Positioned(
            top: 60,
            right: 35,
            child: CustomFavoriteContainer(),
          ),
           Positioned(
            top: 60,
            left: 35,
            child: CustomArrowBackIcon(),
          ),
        ],
      ),
    );
  }
}
