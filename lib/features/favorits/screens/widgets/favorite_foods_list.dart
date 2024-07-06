import 'package:ecommerc/features/home/screens/home_screen/widgets/custom_food_item.dart';
import 'package:flutter/material.dart';

class FavoritsFoodsList extends StatelessWidget {
  const FavoritsFoodsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 4,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder: (context, index) {
                  return const CustomFoodItem();
                }),
    );
  }
}