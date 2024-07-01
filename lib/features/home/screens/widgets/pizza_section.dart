import 'package:ecommerc/core/app_styles/app_colors.dart';
import 'package:ecommerc/core/app_styles/styles.dart';
import 'package:ecommerc/features/home/screens/widgets/custom_favorit_container.dart';
import 'package:ecommerc/features/home/screens/widgets/custom_rating_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PizzaSection extends StatelessWidget {
  const PizzaSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 220,
          width: 300,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Stack(
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/food/image2.jfif',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Positioned(
                top: 20,
                right: 20,
                child: CustomFavoriteContainer(),
              ),
              const Positioned(
                top: 20,
                left: 20,
                child: CustomRatingContainer(),
              ),
               Positioned(
          bottom: 10,
          left: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name Of Restaurant',
                style: TextStyles.bold20.copyWith(
                  color: Colors.white,
                ),
              ),
              Text(
                'Pizza | Pasta | tarer',
                style: TextStyles.regular16.copyWith(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        )
            ],
          ),
        ),
        Positioned(
          bottom: 20,
          left: 20,
          child: Column(
            children: [
              Text(
                'Name Of Restaurant',
                style: TextStyles.bold20.copyWith(
                  color: Colors.white,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
