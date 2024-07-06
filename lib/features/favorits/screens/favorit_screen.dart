import 'package:ecommerc/core/widgets/appbars/custom_app_bar.dart';
import 'package:ecommerc/features/favorits/screens/widgets/custom_favorites_buttoms.dart';
import 'package:ecommerc/features/home/screens/home_screen/widgets/custom_food_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Column(
      children: [
         CustomAppBar(titel: 'Favorites'),
         SizedBox(height: 20,),
        CustomFavoriteButtoms(),
       
      ],
    ));
  }
}
