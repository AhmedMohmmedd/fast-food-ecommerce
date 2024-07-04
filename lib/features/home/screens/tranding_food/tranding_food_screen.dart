import 'package:ecommerc/core/widgets/appbars/custom_normall_app_bar.dart';
import 'package:ecommerc/features/home/screens/home_screen/widgets/custom_food_item.dart';
import 'package:ecommerc/features/home/screens/home_screen/widgets/custom_sherch_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TrandingFoodScreen extends StatelessWidget {
  const TrandingFoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomNormalAppBar(
        titel: 'Tranding Foods',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 10,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CustomSherchRow(),
            SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return CustomFoodItem();
                  }),
            )
          ],
        ),
      ),
    );
  }
}
