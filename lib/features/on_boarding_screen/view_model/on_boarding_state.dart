part of 'on_boarding_cubit.dart';

@immutable
sealed class OnBoardingState {}

final class OnBoardingInitial extends OnBoardingState {}

final class ChangePageViewState extends OnBoardingState {}

final class FinishOnBoardingState extends OnBoardingState {}
