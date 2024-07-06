import 'package:ecommerc/core/widgets/appbars/custom_app_bar.dart';
import 'package:ecommerc/core/widgets/buttons/elevated_button.dart';
import 'package:ecommerc/features/my_cart/screens/widgets/custom_card_items_list_view.dart';
import 'package:ecommerc/features/my_cart/screens/widgets/total_price_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CustomAppBar(
              titel: 'Cart',
            ),
            const SizedBox(
              height: 40,
            ),
            const CustomCardItemsListView(),
            const SizedBox(
              height: 20,
            ),
            const TotalPriceSection(),
            const SizedBox(
              height: 40,
            ),
            CustomElevatedButton(
              title: 'CHECK OUT',
              width: MediaQuery.sizeOf(context).width * .5,
              onTap: () {},
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
