import 'package:ecommerc/features/onboarding/on_boarding/logic/onBoarding_cubit/on_boarding_cubit.dart';
import 'package:ecommerc/features/onboarding/on_boarding/screens/widgets/on_boarding_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnBoardingCubit(),
      child: Scaffold(
        body: BlocBuilder<OnBoardingCubit, OnBoardingState>(
          builder: (context, state) {
            final onBoardingCubit = BlocProvider.of<OnBoardingCubit>(context);
            return OnBoardingBody(onBoardingCubit: onBoardingCubit);
          },
        ),
      ),
    );
  }
}
