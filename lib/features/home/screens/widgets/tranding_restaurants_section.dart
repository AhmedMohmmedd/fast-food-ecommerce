
import 'package:ecommerc/features/home/screens/widgets/custom_rastaurant_item.dart';
import 'package:ecommerc/features/home/screens/widgets/custom_titel_row.dart';
import 'package:flutter/material.dart';

class TrandingRestaurantsSection extends StatelessWidget {
  const TrandingRestaurantsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTitelRow(
          text: 'Tranding Restaurants',
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 222,
          child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(right: 14),
                  child: CustomRastaurantItem(),
                );
              }),
        )
      ],
    );
  }
}
