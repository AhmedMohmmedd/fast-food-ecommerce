import 'package:ecommerc/core/app_styles/styles.dart';
import 'package:flutter/material.dart';

class CustomSettingsHeader extends StatelessWidget {
  const CustomSettingsHeader({
    super.key,
    required this.titel,
    this.icon,
  });
  final String titel;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              icon,
              size: 24,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              titel,
              style: TextStyles.styleBold18(context),
            )
          ],
        ),
        const Divider(
          thickness: 1,
          color: Colors.black,
        ),
      ],
    );
  }
}
