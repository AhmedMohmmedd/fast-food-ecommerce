
import 'package:ecommerc/features/home/screens/home_screen/widgets/custom_food_item.dart';
import 'package:flutter/material.dart';

class TrandingFoodGridview extends StatelessWidget {
  const TrandingFoodGridview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
        ),
        itemCount: 7,
        itemBuilder: (context, index) {
          return const CustomFoodItem();
        });
  }
}
