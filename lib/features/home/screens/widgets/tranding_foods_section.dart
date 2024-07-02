
import 'package:ecommerc/features/home/screens/widgets/custom_food_item.dart';
import 'package:ecommerc/features/home/screens/widgets/custom_titel_row.dart';
import 'package:flutter/material.dart';

class TrandingFoodsSection extends StatelessWidget {
  const TrandingFoodsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
    const CustomTitelRow(
      text: 'Tranding Foods',
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
              child: CustomFoodItem(),
            );
          }),
    )
          ],
        );
  }
}
