import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../../core/router/routes.dart';
import '../../../../core/utilities/app_assets.dart';
import '../../../../core/utilities/app_colors.dart';
import '../../../../core/utilities/app_strings.dart';
import '../../model/on_boarding_model.dart';
import '../../view_model/on_boarding_cubit.dart';
import '../widgets/on_boarding_widget.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  late OnBoardingCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = OnBoardingCubit.get(context);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<OnBoardingCubit, OnBoardingState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              // leadingWidth: 80.w,
              leading: Image.asset(AppAssets.appLogo),
              actions: [
                if (cubit.currentPage != OnBoardingModel.data.length - 1)
                  TextButton(
                      onPressed: () {
                        // Navigator.pushNamedAndRemoveUntil(context,
                        //     AppRoutes.loginScreenRoute, (route) => false);
                        cubit.isLast = true;
                        cubit.finishOnBoarding(
                            context, AppRoutes.loginScreenRoute);
                      },
                      child: FittedBox(
                        child: Text(
                          AppStrings.onBoardingText1,
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontFamily: AppStrings.fontLatoRegular,
                              color: Colors.black87),
                        ),
                      )),
              ],
            ),
            body: Padding(
              padding: EdgeInsets.only(right: 20.w, left: 20.w, bottom: 32.h),
              child: Column(
                children: [
                  Expanded(
                    child: PageView.builder(
                      controller: cubit.onBoardingController,
                      itemBuilder: (context, index) => OnBoardingWidget(
                        onBoardingModel: OnBoardingModel.data[index],
                      ),
                      itemCount: OnBoardingModel.data.length,
                      onPageChanged: (int index) {
                        cubit.changePageView(index);
                      },
                      physics: const BouncingScrollPhysics(),
                    ),
                  ),
                  // SizedBox(height: 8.h),
                  SmoothPageIndicator(
                    controller: cubit.onBoardingController,
                    count: OnBoardingModel.data.length,
                    effect: const SlideEffect(
                        type: SlideType.slideUnder,
                        spacing: 4,
                        radius: 30,
                        dotWidth: 20,
                        dotHeight: 9,
                        dotColor: AppColors.customDeepBlue,
                        activeDotColor: AppColors.customPink),
                  ),
                  SizedBox(height: 70.h),
                  cubit.currentPage != OnBoardingModel.data.length - 1
                      ? Container(
                          width: 396.w,
                          height: 56.h,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                AppColors.customDeepBlue,
                                AppColors.customLightBlue,
                                AppColors.customDeepBlue
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(30.r),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              cubit.onBoardingController.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.fastOutSlowIn,
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.r)),
                            ),
                            child: FittedBox(
                              child: Text(
                                AppStrings.onBoardingText2,
                                style: TextStyle(
                                    fontSize: 24.sp,
                                    fontFamily: AppStrings.fontLato,
                                    color: AppColors.customWhite),
                              ),
                            ),
                          ),
                        )
                      : Container(
                          width: 396.w,
                          height: 56.h,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                AppColors.customDeepBlue,
                                AppColors.customLightBlue,
                                AppColors.customDeepBlue
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(30.r),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              // Navigator.pushNamedAndRemoveUntil(context,
                              //     AppRoutes.loginScreenRoute, (route) => false);
                              cubit.isLast = true;
                              cubit.finishOnBoarding(
                                  context, AppRoutes.loginScreenRoute);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.r)),
                            ),
                            child: FittedBox(
                              child: Text(
                                AppStrings.onBoardingText3,
                                style: TextStyle(
                                    fontSize: 24.sp,
                                    fontFamily: AppStrings.fontLato,
                                    color: AppColors.customWhite),
                              ),
                            ),
                          ),
                        )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
