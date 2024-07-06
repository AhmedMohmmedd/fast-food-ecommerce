import 'package:ecommerc/core/widgets/appbars/custom_normall_app_bar.dart';
import 'package:ecommerc/features/home/screens/home_screen/widgets/custom_food_item.dart';
import 'package:ecommerc/features/home/screens/home_screen/widgets/custom_sherch_row.dart';
import 'package:ecommerc/features/home/screens/tranding_food/widgets/tranding_food_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TrandingFoodScreen extends StatelessWidget {
  const TrandingFoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar:  CustomNormalAppBar(
        titel: 'Tranding Foods',
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 10,
        ),
        child: TrandingFoodBody(),
      ),
    );
  }
}


