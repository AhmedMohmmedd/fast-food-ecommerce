
import 'package:ecommerc/core/app_styles/styles.dart';
import 'package:ecommerc/features/home/screens/order_screen/widgets/add_ons_section.dart';
import 'package:ecommerc/features/home/screens/order_screen/widgets/number_off_section.dart';
import 'package:ecommerc/features/home/screens/order_screen/widgets/size_of_section.dart';
import 'package:ecommerc/features/home/screens/order_screen/widgets/titel_section.dart';
import 'package:flutter/material.dart';

class OrderDetailsSection extends StatelessWidget {
  const OrderDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitelSection(),
          const SizedBox(
            height: 20,
          ),
          Text(
            'this is my mew for this how are that amizeing for your styel this is my mew for this how are that amizeing for your styel this is my mew for this how are that amizeing for your styel this is my mew for this how are that amizeing for your styel this is my mew for this how are that amizeing for your styel.',
            style: TextStyles.stylesreguler12(context),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizeOfSection(),
              NumberOfSection(),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const AddOnsSection(),
        ],
      ),
    );
  }
}
