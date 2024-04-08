import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/constants.dart';
import '../../../../../../core/router/routes.dart';
import '../../../../../core/utilities.dart';
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
                        child: const Image(
                            image: AssetImage('assets/images/auth/img.png'))),
                  ),
                  Center(
                    child: Text(
                      "Welcome to Discover",
                      style: TextStyle(
                          fontSize: 24.sp, fontFamily: 'Lato-Bold.ttf'),
                    ),
                  ),
                  SizedBox(height: 6.h),
                  Center(
                      child: FittedBox(
                    child: Text(
                      'Please choose your login option below',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16.sp,
                          fontFamily: 'Lato-Light.ttf'),
                    ),
                  )),
                  SizedBox(height: 32.h),
                  Text(
                    'Email',
                    style: TextStyle(
                        fontSize: 16.sp, fontFamily: 'Lato-Regular.ttf'),
                  ),
                  SizedBox(height: 8.h),
                  TextFormField(
                    controller: emailController,
                    validator: (email) {
                      if (email == null || email.isEmpty) {
                        return 'Please enter your email';
                      }
                      if (!isValidEmail(email)) {
                        return 'Please enter a valid email';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        errorStyle: TextStyle(
                            fontSize: 10.sp, fontFamily: 'Lato-Light.ttf'),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.r)),
                        hintText: 'Enter your email address',
                        hintStyle: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.grey,
                            fontFamily: 'Lato-Light.ttf')),
                  ),
                  SizedBox(height: 12.h),
                  Text(
                    'Password',
                    style: TextStyle(
                        fontSize: 16.sp, fontFamily: 'Lato-Regular.ttf'),
                  ),
                  SizedBox(height: 8.h),
                  BlocBuilder<LoginCubit, LoginState>(
                    builder: (context, state) {
                      return TextFormField(
                        validator: (password) {
                          if (password == null || password.isEmpty) {
                            return 'Please enter your password';
                          }
                          if (!isValidPassword(password)) {
                            return 'Password must be at least 8 characters long and contain at least one special character';
                          }
                          return null;
                        },
                        controller: passwordController,
                        obscureText:
                            LoginCubit.get(context).isPassword ? false : true,
                        decoration: InputDecoration(
                            errorMaxLines: 2,
                            errorStyle: TextStyle(
                                fontSize: 10.sp, fontFamily: 'Lato-Light.ttf'),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  LoginCubit.get(context).ChangingObscure();
                                },
                                icon: LoginCubit.get(context).isPassword
                                    ? const Icon(
                                        Icons.visibility,
                                        color: Color(0xffFFA09D),
                                      )
                                    : const Icon(
                                        Icons.visibility_off,
                                        color: Color(0xffFFA09D),
                                      )),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.r)),
                            hintText: 'Enter your password',
                            hintStyle: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.grey,
                                fontFamily: 'Lato-Light.ttf')),
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
                        text: "Forget Password?",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontFamily: 'Lato-Regular.ttf',
                          color: const Color(0xffFFA09D),
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
                          Color(0xff1C6E97),
                          Color(0xff408AAF),
                          Color(0xff1C6E97)
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        if (loginFormKey.currentState!.validate()) {
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
                          'Login',
                          style: TextStyle(
                              fontSize: 24.sp,
                              fontFamily: 'Lato',
                              color: const Color(0xffFFFFFF)),
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
                        'or login with',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.sp,
                            fontFamily: 'Lato-Light.ttf'),
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
                  SizedBox(height: 169.h),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: "Don’t have any account? ",
                        style: TextStyle(
                          fontFamily: 'Lato-Regular.ttf',
                          color: Colors.grey,
                          fontSize: 16.sp,
                        ),
                        children: [
                          TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Navigator.pushNamed(
                                  context, AppRoutes.createAccScreenRoute),
                            text: "Create Account",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontFamily: 'Lato-Regular.ttf',
                              color: const Color(0xff1C6E97),
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
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
