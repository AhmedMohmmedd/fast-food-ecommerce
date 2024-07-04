import 'package:ecommerc/features/home/screens/home_screen/widgets/custom_sherch_row.dart';
import 'package:ecommerc/features/home/screens/tranding_rasturants/taranding_rasturants_screen.dart';
import 'package:ecommerc/features/home/screens/tranding_rasturants/widgets/taranding_rasturants_list_view.dart';
import 'package:flutter/material.dart';

class TrandingRestaurantsBody extends StatelessWidget {
  const TrandingRestaurantsBody({
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
        TrandingRestaurantsListView(),
      ],
    );
  }
}