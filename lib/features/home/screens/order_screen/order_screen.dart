import 'package:ecommerc/core/widgets/buttons/elevated_button.dart';
import 'package:ecommerc/features/home/screens/order_screen/widgets/image_stac_section.dart';
import 'package:ecommerc/features/home/screens/order_screen/widgets/order_details_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
