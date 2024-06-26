
import 'package:ecommerc/core/app_styles/styles.dart';
import 'package:ecommerc/features/onboarding/on_boarding/logic/onBoarding_cubit/on_boarding_cubit.dart';
import 'package:ecommerc/features/onboarding/on_boarding/screens/widgets/custom_dots_indecator.dart';
import 'package:ecommerc/features/onboarding/on_boarding/screens/widgets/onboarding_page_view.dart';
import 'package:flutter/material.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({
    super.key,
    required this.onBoardingCubit,
  });

  final OnBoardingCubit onBoardingCubit;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20,),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.deepOrange,
                  ),
                  child: InkWell(
                    highlightColor: Colors.black,
                        onTap: () {
                          // GoRouter.of(context).pushReplacement('/loginScreen');
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            children: [
                              Text(
                                'Skip',
                                style: TextStyles.bold18.copyWith(
                                  color: Colors.black,
                                ),
                              ),
                             const Icon(Icons.arrow_forward , size: 18,)
                            ],
                          ),
                        ),
                      ),
                ),
              ],
            ),
            Expanded(
              child: ONBoardingPageView(
                  pageController: onBoardingCubit.pageController,
                  onPageChanged: (p0) {
                    onBoardingCubit.toNextPage(p0);
                  },
                  ),
            ),
                CustomDotIndecator(activeNum: onBoardingCubit.currentPageIndex),
          ],
        ),
      ),
    );
  }
}
