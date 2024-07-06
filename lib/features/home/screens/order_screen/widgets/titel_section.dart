
import 'package:ecommerc/core/app_styles/app_colors.dart';
import 'package:ecommerc/core/app_styles/styles.dart';
import 'package:flutter/material.dart';

class TitelSection extends StatelessWidget {
  const TitelSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(
              'Cheez Pizza',
              style: TextStyles.styleBold28(context),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Icon(
                  Icons.star_outlined,
                  color: Colors.orangeAccent,
                ),
                Text(
                  '5.0   Reviewed +100',
                  style: TextStyles.stylesreguler12(context),
                ),
              ],
            )
          ],
        ),
        const SizedBox(
          width: 60,
        ),
        Text(
          '1999 Rs',
          style: TextStyles.styleBold28(context).copyWith(
            color: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
