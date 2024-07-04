import 'package:ecommerc/features/home/screens/home_screen/widgets/custom_rastaurant_item.dart';
import 'package:flutter/material.dart';

class TrandingRestaurantsListView extends StatelessWidget {
  const TrandingRestaurantsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: CustomRastaurantItem(),
        );
      },
    );
  }
}