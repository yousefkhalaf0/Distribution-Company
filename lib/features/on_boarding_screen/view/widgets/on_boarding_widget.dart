import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/utilities/app_strings.dart';
import '../../model/on_boarding_model.dart';

class OnBoardingWidget extends StatelessWidget {
  const OnBoardingWidget({super.key, this.onBoardingModel});
  final OnBoardingModel? onBoardingModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FittedBox(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                    height: 395.h,
                    child: Image.asset('${onBoardingModel!.image}')),
                SizedBox(height: 25.h),
                Text(
                  '${onBoardingModel!.title}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 32.sp, fontFamily: AppStrings.fontLatoBold),
                ),
                SizedBox(height: 15.h),
                Text(
                  '${onBoardingModel!.description}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontFamily: AppStrings.fontLatoLight,
                      color: Colors.black38),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
