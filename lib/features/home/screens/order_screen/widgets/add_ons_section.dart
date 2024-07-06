
import 'package:ecommerc/core/app_styles/styles.dart';
import 'package:ecommerc/features/home/screens/order_screen/order_screen.dart';
import 'package:ecommerc/features/home/screens/order_screen/widgets/custom_dot.dart';
import 'package:flutter/material.dart';

class AddOnsSection extends StatelessWidget {
  const AddOnsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Add Ons',
            style: TextStyles.styleBold18(context),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const CustomAddOnsListItem(),
        const SizedBox(
          height: 8,
        ),
        const CustomAddOnsListItem(),
        const SizedBox(
          height: 8,
        ),
        const CustomAddOnsListItem(),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}

class CustomAddOnsListItem extends StatelessWidget {
  const CustomAddOnsListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CustomDot(),
              const SizedBox(
                width: 8,
              ),
              Text(
                'Sausage',
                style: TextStyles.stylesreguler16(context),
              ),
            ],
          ),
          Text(
            '+100',
            style: TextStyles.stylesreguler16(context),
          ),
        ],
      ),
    );
  }
}
