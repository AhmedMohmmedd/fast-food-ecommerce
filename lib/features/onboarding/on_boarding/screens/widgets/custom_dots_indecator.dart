import 'package:ecommerc/features/onboarding/on_boarding/logic/onBoarding_cubit/on_boarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomDotIndecator extends StatelessWidget {
  const CustomDotIndecator({super.key, required this.activeNum});
  final int activeNum;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingCubit, OnBoardingState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            4,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                // width: index == activeNum ? 38 : 8,
                width: 8,
                height: 8,
                decoration: ShapeDecoration(
                  color:
                      index == activeNum ? Colors.red : const Color(0xFFA0A0A1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
