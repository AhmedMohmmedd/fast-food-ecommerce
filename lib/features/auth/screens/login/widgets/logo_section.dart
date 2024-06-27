
import 'package:ecommerc/core/app_styles/images_strings.dart';
import 'package:ecommerc/core/app_styles/styles.dart';
import 'package:flutter/material.dart';

class LogoSection extends StatelessWidget {
  const LogoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 80, child: Image.asset(ImagesStrings.logo)),
        const Text(
          'Fast Food ',
          style: TextStyles.regular24Pacifico,
        ),
        const Text(
          'R U S T O U R A N T ',
          style: TextStyles.regular12,
        ),
      ],
    );
  }
}
