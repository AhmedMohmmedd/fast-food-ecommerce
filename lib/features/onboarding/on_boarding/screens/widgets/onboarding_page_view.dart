
import 'package:ecommerc/core/app_styles/images_strings.dart';
import 'package:ecommerc/features/onboarding/on_boarding/screens/widgets/custom_onboarding_container.dart';
import 'package:flutter/material.dart';

class ONBoardingPageView extends StatelessWidget {
  const ONBoardingPageView({
    super.key, required this.pageController, this.onPageChanged,
  });
final PageController pageController;
final Function(int)? onPageChanged;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      onPageChanged: onPageChanged,
      children: const [
        CustomOnBoardingContainer(
          image: ImagesStrings.onboarding1,
          // image: 'assets/images/onbording_image_1.png',
          titel: 'Choose Products',
          subTitel:
              'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
        ),
        CustomOnBoardingContainer(
          image:ImagesStrings.onboarding2,
          // image: 'assets/images/onbording_image_2.png',
          titel: 'Make Payment',
          subTitel:
              'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
        ),
        CustomOnBoardingContainer(
          image: ImagesStrings.onboarding3,
          // image: 'assets/images/onbording_image_3.png',
          titel: 'Get Your Order',
          subTitel:
              'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
        ),
        CustomOnBoardingContainer(
          image: ImagesStrings.onboarding4,
          // image: 'assets/images/onbording_image_3.png',
          titel: 'Get Your Order',
          subTitel:
              'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
        ),
      ],
    );
  }
}
