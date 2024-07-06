import 'package:ecommerc/features/home/screens/home_screen/widgets/custom_rastaurant_item.dart';
import 'package:flutter/material.dart';

class FavoritesRestaurantsListView extends StatelessWidget {
  const FavoritesRestaurantsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: CustomRastaurantItem(),
          );
        },
      ),
    );
  }
}