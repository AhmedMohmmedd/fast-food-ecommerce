import 'package:ecommerc/features/home/screens/home_screen/widgets/custom_rastaurant_item.dart';
import 'package:ecommerc/features/home/screens/home_screen/widgets/custom_titel_row.dart';
import 'package:ecommerc/features/home/screens/tranding_rasturants/taranding_rasturants_screen.dart';
import 'package:flutter/material.dart';

class TrandingRestaurantsSection extends StatelessWidget {
  const TrandingRestaurantsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTitelRow(
          text: 'Tranding Restaurants',
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const TrandingRestaurantsScreen();
            }));
          },
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
