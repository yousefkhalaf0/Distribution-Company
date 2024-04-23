import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/utilities/app_assets.dart';
import 'package:graduation_project/core/utilities/app_colors.dart';
import 'package:graduation_project/core/utilities/app_strings.dart';
import '../../../../../core/utilities/constants.dart';
import '../../../../../../core/router/routes.dart';
import '../../../../../core/utilities/controllers.dart';
import '../../../../../core/database/local_database/cache.dart';
import '../../../../../core/utilities/enums.dart';
import '../../../../../core/utilities/functions.dart';
import '../../view_model/login_cubit.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            child: Form(
              key: loginFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: SizedBox(
                        // width: 428.w,
                        height: 177.h,
                        child:
                            const Image(image: AssetImage(AppAssets.appLogo))),
                  ),
                  Center(
                    child: Text(
                      AppStrings.logInText1,
                      style: TextStyle(
                          fontSize: 24.sp, fontFamily: AppStrings.fontLatoBold),
                    ),
                  ),
                  SizedBox(height: 6.h),
                  Center(
                      child: FittedBox(
                    child: Text(
                      AppStrings.logInText2,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16.sp,
                          fontFamily: AppStrings.fontLatoLight),
                    ),
                  )),
                  SizedBox(height: 32.h),
                  Text(
                    AppStrings.logInText3,
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: AppStrings.fontLatoRegular),
                  ),
                  SizedBox(height: 8.h),
                  TextFormField(
                    controller: loginEmailController,
                    validator: (email) {
                      if (email == null || email.isEmpty) {
                        return AppStrings.logInText4;
                      }
                      if (!isValidEmail(email)) {
                        return AppStrings.logInText5;
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        errorStyle: TextStyle(
                            fontSize: 10.sp,
                            fontFamily: AppStrings.fontLatoLight),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.r)),
                        hintText: AppStrings.logInText6,
                        hintStyle: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.grey,
                            fontFamily: AppStrings.fontLatoLight)),
                  ),
                  SizedBox(height: 12.h),
                  Text(
                    AppStrings.logInText7,
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: AppStrings.fontLatoRegular),
                  ),
                  SizedBox(height: 8.h),
                  BlocBuilder<LoginCubit, LoginState>(
                    builder: (context, state) {
                      return TextFormField(
                        controller: loginPasswordController,
                        validator: (password) {
                          if (password == null || password.isEmpty) {
                            return AppStrings.logInText8;
                          }
                          if (!isValidPassword(password)) {
                            return AppStrings.logInText9;
                          }
                          return null;
                        },
                        obscureText:
                            LoginCubit.get(context).isPassword ? false : true,
                        decoration: InputDecoration(
                            errorMaxLines: 2,
                            errorStyle: TextStyle(
                                fontSize: 10.sp,
                                fontFamily: AppStrings.fontLatoLight),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  LoginCubit.get(context).changingObscure();
                                },
                                icon: LoginCubit.get(context).isPassword
                                    ? const Icon(
                                        Icons.visibility,
                                        color: AppColors.customPink,
                                      )
                                    : const Icon(
                                        Icons.visibility_off,
                                        color: AppColors.customPink,
                                      )),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.r)),
                            hintText: AppStrings.logInText10,
                            hintStyle: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.grey,
                                fontFamily: AppStrings.fontLatoLight)),
                      );
                    },
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      RichText(
                          text: TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Navigator.pushNamed(
                              context, AppRoutes.forgetByEmailScreenRoute),
                        text: AppStrings.logInText11,
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontFamily: AppStrings.fontLatoRegular,
                          color: AppColors.customPink,
                          fontSize: 14.sp,
                        ),
                      )),
                    ],
                  ),
                  SizedBox(height: 26.h),
                  Center(
                      child: Container(
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
                        if (loginFormKey.currentState!.validate()) {
                          MyShared.putString(
                              key: MySharedKeys.email,
                              value: loginEmailController.text);
                          Navigator.pushNamedAndRemoveUntil(
                              context,
                              AppRoutes.homeLayoutScreenRoute,
                              (route) => false);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.r)),
                      ),
                      child: FittedBox(
                        child: Text(
                          AppStrings.logInText12,
                          style: TextStyle(
                              fontSize: 24.sp,
                              fontFamily: AppStrings.fontLato,
                              color: AppColors.customWhite),
                        ),
                      ),
                    ),
                  )),
                  SizedBox(height: 16.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 120.w,
                        height: 1,
                        color: Colors.grey,
                      ),
                      Text(
                        AppStrings.logInText13,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.sp,
                            fontFamily: AppStrings.fontLatoLight),
                      ),
                      Container(
                        width: 120.w,
                        height: 1,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  SizedBox(height: 32.h),
                  Center(
                    child: AuthButtonGroup(
                        style: const AuthButtonStyle(
                          height: 33,
                          width: 33,
                          elevation: 5,
                        ),
                        buttons: [
                          FacebookAuthButton(
                            onPressed: () {},
                            style: const AuthButtonStyle(
                              borderRadius: 30,
                              buttonType: AuthButtonType.icon,
                            ),
                          ),
                          GoogleAuthButton(
                            onPressed: () {},
                            style: const AuthButtonStyle(
                              borderRadius: 30,
                              buttonType: AuthButtonType.icon,
                            ),
                          ),
                          AppleAuthButton(
                            onPressed: () {},
                            style: const AuthButtonStyle(
                              borderRadius: 30,
                              buttonType: AuthButtonType.icon,
                            ),
                          ),
                        ]),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 169.h),
                    child: Center(
                      child: RichText(
                        text: TextSpan(
                          text: AppStrings.logInText14,
                          style: TextStyle(
                            fontFamily: AppStrings.fontLatoRegular,
                            color: Colors.grey,
                            fontSize: 16.sp,
                          ),
                          children: [
                            TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => Navigator.pushNamed(
                                    context, AppRoutes.createAccScreenRoute),
                              text: AppStrings.logInText15,
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontFamily: AppStrings.fontLatoRegular,
                                color: AppColors.customDeepBlue,
                                fontSize: 16.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
