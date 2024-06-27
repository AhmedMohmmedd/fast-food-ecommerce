import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial());
  PageController pageController = PageController();
  int currentPageIndex = 0;

  // // bottum
  // void nextPage() {
  //   if (currentPageIndex < 2) {
  //     pageController.nextPage(
  //       duration: const Duration(milliseconds: 500),
  //       curve: Curves.linear,
  //     );
  //     currentPageIndex++;
  //     emit(OnBoardingCangePage());
  //   } else {
  //     emit(OnBoardingComplete());
  //   }
  // }

  // void prevPage() {
  //   if (currentPageIndex > 0) {
  //     pageController.previousPage(
  //       duration: const Duration(milliseconds: 500),
  //       curve: Curves.linear,
  //     );
  //     currentPageIndex--;
  //     emit(OnBoardingCangePage());
  //   } else {
  //     emit(OnBoardingComplete());
  //   }
  // }

//slide
  void toNextPage(int pageIndex) {
    currentPageIndex = pageIndex;
    if (currentPageIndex == 3) {
      emit(OnBoardingComplete());
    } else {
      emit(OnBoardingCangePage());
    }
  }
}
