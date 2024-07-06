
import 'package:ecommerc/core/app_styles/styles.dart';
import 'package:ecommerc/features/home/screens/order_screen/widgets/custom_arrow_back_item.dart';
import 'package:ecommerc/features/home/screens/order_screen/widgets/custom_arrow_forward_item.dart';
import 'package:flutter/material.dart';

class SizeOfSection extends StatelessWidget {
  const SizeOfSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Size Of Pizza',
          style: TextStyles.stylesimibols18(context),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomArrowBackIcon(
              size: 18,
            ),
            const SizedBox(
              width: 24,
            ),
            Text(
              'Large Pizza',
              style: TextStyles.stylesreguler16(context),
            ),
            const SizedBox(
              width: 24,
            ),
            const CustomArrowForwardIcon(),
          ],
        )
      ],
    );
  }
}
