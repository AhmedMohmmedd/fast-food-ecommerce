import 'package:ecommerc/features/home/screens/home_screen/widgets/custom_sherch_row.dart';
import 'package:ecommerc/features/home/screens/tranding_food/widgets/tranding_food_grid_view.dart';
import 'package:flutter/material.dart';

class TrandingFoodBody extends StatelessWidget {
  const TrandingFoodBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
         SizedBox(
          height: 20,
        ),
         CustomSherchRow(),
         SizedBox(height: 20),
        Expanded(
          child: TrandingFoodGridview(),
        )
      ],
    );
  }
}