part of 'on_boarding_cubit.dart';

@immutable
sealed class OnBoardingState {}

final class OnBoardingInitial extends OnBoardingState {}
final class OnBoardingComplete extends OnBoardingState {}
final class OnBoardingCangePage extends OnBoardingState {}
// final class OnBoardingInitial extends OnBoardingState {}
