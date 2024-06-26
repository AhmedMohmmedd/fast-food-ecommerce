
import 'package:ecommerc/core/app_styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomOnBoardingContainer extends StatelessWidget {
  const CustomOnBoardingContainer({
    super.key, required this.image, required this.titel, required this.subTitel,
  });
final String image;
final String titel;
final String subTitel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Image.asset(image),
        
        SizedBox(
          height: 200,
          child: SvgPicture.asset(image)),
        Text(
          titel,
          style: TextStyles.bold24,
        ),
        const SizedBox(
          height: 14,
        ),
        Text(
         subTitel,
          style: TextStyles.regular14.copyWith(height: 2),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
