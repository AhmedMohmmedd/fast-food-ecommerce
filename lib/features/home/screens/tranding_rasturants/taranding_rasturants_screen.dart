import 'package:ecommerc/core/app_styles/app_colors.dart';
import 'package:ecommerc/core/app_styles/styles.dart';
import 'package:ecommerc/core/widgets/appbars/custom_app_bar.dart';
import 'package:ecommerc/core/widgets/appbars/custom_normall_app_bar.dart';
import 'package:ecommerc/features/home/screens/home_screen/widgets/custom_rastaurant_item.dart';
import 'package:ecommerc/features/home/screens/home_screen/widgets/custom_sherch_row.dart';
import 'package:ecommerc/features/home/screens/tranding_rasturants/widgets/taranding_rasturants_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TrandingRestaurantsScreen extends StatelessWidget {
  const TrandingRestaurantsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar:  CustomNormalAppBar(titel: 'Tranding Restuarnts',),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding:  EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 10,
              ),
              child: TrandingRestaurantsBody(),
            ),
          ),
        ));
  }
}




