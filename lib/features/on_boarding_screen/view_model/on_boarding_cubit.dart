import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/core/database/local_database/cache.dart';
import 'package:graduation_project/core/utilities/enums.dart';
import 'package:meta/meta.dart';
part 'on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial());

  static OnBoardingCubit get(context) => BlocProvider.of(context);

  final onBoardingController = PageController();
  int currentPage = 0;
  bool isLast = false;

  void changePageView(int index) {
    currentPage = index;
    // isLast = true;
    emit(ChangePageViewState());
  }

  void finishOnBoarding(context, String screenName) {
    MyShared.putBoolean(key: MySharedKeys.onBoarding, value: isLast);
    Navigator.of(context).pushNamedAndRemoveUntil(screenName, (route) => false);
    emit(FinishOnBoardingState());
  }
}
