import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/constants.dart';
import '../../../../../../core/router/routes.dart';
import '../../../../../../core/utilities.dart';

class ForgetByPhone extends StatelessWidget {
  const ForgetByPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context,
                    AppRoutes.forgetByEmailScreenRoute, (route) => false);
              },
              icon: SizedBox(
                  height: 24.h,
                  child: Image.asset('assets/images/icons/img.png'))),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 24.h, left: 16.w, right: 16.w),
            child: Form(
              key: forgetByPhoneFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Forget Password',
                      style: TextStyle(
                          fontSize: 24.sp, fontFamily: 'Lato-Bold.ttf'),
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Center(
                    child: Text(
                      'Enter your phone number to reset password',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: 'Lato-Light.ttf',
                          color: Colors.grey),
                    ),
                  ),
                  SizedBox(height: 64.h),
                  Row(
                    children: [
                      Container(
                        width: 96.w,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black54),
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        child: CountryCodePicker(
                          // showFlag: false,
                          textStyle: TextStyle(
                              fontSize: 16.sp,
                              fontFamily: 'Lato-Light.ttf',
                              color: const Color(0xffFFA09D)),
                          initialSelection: 'Eg',
                          showFlagMain: false,
                          dialogTextStyle: TextStyle(
                              fontSize: 16.sp,
                              fontFamily: 'Lato-Light.ttf',
                              color: const Color(0xffFFA09D)),
                          boxDecoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r)),
                        ),
                      ),
                      SizedBox(width: 16.w),
                      SizedBox(
                        width: 284.w,
                        // height: 56.h,
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          controller: forgetByPhoneController,
                          validator: (phoneNum) {
                            if (phoneNum == null || phoneNum.isEmpty) {
                              return 'Please enter your phone number';
                            }
                            if (!isValidPhoneNumber(phoneNum)) {
                              return 'Please enter a valid 11-digit phone number';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: 'phone number',
                            helperStyle: TextStyle(
                                fontSize: 16.sp,
                                fontFamily: 'Lato-Light.ttf',
                                color: Colors.grey),
                            errorStyle: TextStyle(
                                fontSize: 10.sp, fontFamily: 'Lato-Light.ttf'),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.r)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  RichText(
                      text: TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Navigator.pushNamedAndRemoveUntil(context,
                          AppRoutes.forgetByEmailScreenRoute, (route) => false),
                    text: 'Reset with email address',
                    style: TextStyle(
                      fontFamily: 'Lato-Regular.ttf',
                      color: const Color(0xffFFA09D),
                      fontSize: 14.sp,
                    ),
                  )),
                  SizedBox(height: 24.h),
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
                        if (forgetByPhoneFormKey.currentState!.validate()) {
                          Navigator.pushNamedAndRemoveUntil(context,
                              AppRoutes.phoneOTPScreenRoute, (route) => false);
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
                          'Send verification code',
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontFamily: 'Lato',
                              color: const Color(0xffFFFFFF)),
                        ),
                      ),
                    ),
                  )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
