import 'package:ecommerc/core/app_styles/app_colors.dart';
import 'package:ecommerc/core/app_styles/styles.dart';
import 'package:ecommerc/core/widgets/buttons/elevated_button.dart';
import 'package:ecommerc/features/home/screens/home_screen/widgets/custom_favorit_container.dart';
import 'package:ecommerc/features/home/screens/order_screen/widgets/add_ons_section.dart';
import 'package:ecommerc/features/home/screens/order_screen/widgets/custom_arrow_back_item.dart';
import 'package:ecommerc/features/home/screens/order_screen/widgets/custom_arrow_forward_item.dart';
import 'package:ecommerc/features/home/screens/order_screen/widgets/image_stac_section.dart';
import 'package:ecommerc/features/home/screens/order_screen/widgets/number_off_section.dart';
import 'package:ecommerc/features/home/screens/order_screen/widgets/order_details_section.dart';
import 'package:ecommerc/features/home/screens/order_screen/widgets/size_of_section.dart';
import 'package:ecommerc/features/home/screens/order_screen/widgets/titel_section.dart';
import 'package:ecommerc/features/onboarding/on_boarding/screens/widgets/custom_dots_indecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ImageStacSection(),
            const SizedBox(
              height: 20,
            ),
           const OrderDetailsSection(),
            const SizedBox(
              height: 20,
            ),
            CustomElevatedButton(
              title: 'ORDER NOW',
              onTap: () {},
              width: 260,
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
