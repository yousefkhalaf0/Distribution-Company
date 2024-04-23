import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/database/local_database/cache.dart';
import 'package:graduation_project/core/utilities/enums.dart';
import '../../../../../core/router/routes.dart';
import '../../../../core/utilities/app_assets.dart';
import '../../../../core/utilities/app_colors.dart';
import '../../../../core/utilities/app_strings.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
          context,
          MyShared.getBoolean(key: MySharedKeys.onBoarding)
              ? AppRoutes.loginScreenRoute
              : AppRoutes.onBoardingScreenRoute,
          (route) => false);
    });
  }
  //without shared preferences
  // @override
  // void initState() {
  //   super.initState();
  //   Timer(const Duration(seconds: 6), () {
  //     Navigator.pushNamedAndRemoveUntil(
  //         context, AppRoutes.onBoardingScreenRoute, (route) => false);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            gradient: SweepGradient(colors: [
          AppColors.customDeepBlue,
          AppColors.customLightBlue,
          AppColors.customDeepBlue
        ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              AppAssets.appLogo,
            ),
            ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (Rect bounds) {
                return const LinearGradient(
                  colors: [
                    AppColors.customWhite,
                    AppColors.customPink
                  ], // Customize gradient colors
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ).createShader(bounds);
              },
              child: Text(AppStrings.splashText1,
                  style: TextStyle(
                    fontSize: 32.sp,
                    fontWeight: FontWeight.bold,
                    fontFamily: AppStrings.fontLatoBold,
                  )),
            ),
            SizedBox(height: 4.h),
            ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (Rect bounds) {
                return const LinearGradient(
                  colors: [
                    AppColors.customWhite,
                    AppColors.customPink
                  ], // Customize gradient colors
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ).createShader(bounds);
              },
              child: Text(AppStrings.splashText2,
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    fontFamily: AppStrings.fontLatoBold,
                  )),
            )
          ],
        ),
      )),
    );
  }
}
