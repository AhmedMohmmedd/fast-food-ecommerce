
import 'package:ecommerc/features/home/screens/home_screen/widgets/custom_food_item.dart';
import 'package:ecommerc/features/home/screens/home_screen/widgets/custom_titel_row.dart';
import 'package:ecommerc/features/home/screens/tranding_food/tranding_food_screen.dart';
import 'package:flutter/material.dart';

class TrandingFoodsSection extends StatelessWidget {
  const TrandingFoodsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
     CustomTitelRow(
      text: 'Tranding Foods',
      onTap: () {
         Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const TrandingFoodScreen();
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
              child: CustomFoodItem(),
            );
          }),
    )
          ],
        );
  }
}
