import 'package:ecommerc/core/app_styles/app_colors.dart';
import 'package:ecommerc/core/app_styles/styles.dart';
import 'package:ecommerc/features/home/screens/home_screen/widgets/custom_favorit_container.dart';
import 'package:ecommerc/features/home/screens/home_screen/widgets/custom_food_item.dart';
import 'package:ecommerc/features/home/screens/home_screen/widgets/custom_rastaurant_item.dart';
import 'package:ecommerc/features/home/screens/home_screen/widgets/custom_rating_container.dart';
import 'package:ecommerc/features/home/screens/home_screen/widgets/custom_titel_row.dart';
import 'package:ecommerc/features/home/screens/home_screen/widgets/tranding_foods_section.dart';
import 'package:ecommerc/features/home/screens/home_screen/widgets/tranding_restaurants_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PizzaSection extends StatelessWidget {
  const PizzaSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TrandingRestaurantsSection(),
         SizedBox(
          height: 10,
        ),
        TrandingFoodsSection(),
        
      ],
    );
  }
}
