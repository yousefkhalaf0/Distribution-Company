import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/constants.dart';
import '../../../../../../core/router/routes.dart';

class CreateAcc extends StatefulWidget {
  const CreateAcc({super.key});

  @override
  State<CreateAcc> createState() => _CreateAccState();
}

class _CreateAccState extends State<CreateAcc> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.loginScreenRoute);
            },
            icon: SizedBox(
                // width: 24.w,
                height: 24.h,
                child: Image.asset('assets/images/icons/img.png'))),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Form(
            key: createAccFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: Text(
                    'Create your Account',
                    style:
                        TextStyle(fontSize: 24.sp, fontFamily: 'Lato-Bold.ttf'),
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  'First name',
                  style: TextStyle(
                      fontSize: 16.sp, fontFamily: 'Lato-Regular.ttf'),
                ),
                SizedBox(height: 8.h),
                TextFormField(
                  controller: firstNameController,
                  validator: (firstName) {
                    //RegEx
                    if (firstName!.isEmpty) {
                      return 'Please enter your first name!';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    // errorStyle: const TextStyle(fontSize: 8),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r)),
                  ),
                ),
                SizedBox(height: 12.h),
                Text(
                  'Last name',
                  style: TextStyle(
                      fontSize: 16.sp, fontFamily: 'Lato-Regular.ttf'),
                ),
                SizedBox(height: 8.h),
                TextFormField(
                  controller: lastNameController,
                  validator: (lastName) {
                    //RegEx
                    if (lastName!.isEmpty) {
                      return 'Please enter your last name!';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    // errorStyle: const TextStyle(fontSize: 8),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r)),
                  ),
                ),
                SizedBox(height: 12.h),
                Text(
                  'Phone',
                  style: TextStyle(
                      fontSize: 16.sp, fontFamily: 'Lato-Regular.ttf'),
                ),
                SizedBox(height: 8.h),
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
                        controller: phoneController,
                        validator: (phoneNum) {
                          //RegEx
                          if (phoneNum!.isEmpty) {
                            return 'Please enter your phone number!';
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          // errorStyle: const TextStyle(fontSize: 8),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.r)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12.h),
                Text(
                  'Email',
                  style: TextStyle(
                      fontSize: 16.sp, fontFamily: 'Lato-Regular.ttf'),
                ),
                SizedBox(height: 8.h),
                TextFormField(
                  controller: regEmailController,
                  validator: (regEmail) {
                    //RegEx
                    if (regEmail!.isEmpty) {
                      return 'Please enter your email!';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    // errorStyle: const TextStyle(fontSize: 8),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r)),
                  ),
                ),
                SizedBox(height: 12.h),
                Text(
                  'Password',
                  style: TextStyle(
                      fontSize: 16.sp, fontFamily: 'Lato-Regular.ttf'),
                ),
                SizedBox(height: 8.h),
                TextFormField(
                  validator: (passwordReg) {
                    //RegEx
                    if (passwordReg!.isEmpty) {
                      return 'Please enter a password!';
                    } else {
                      return null;
                    }
                  },
                  controller: regPasswordController,
                  obscureText: isPasswordReg ? false : true,
                  decoration: InputDecoration(
                    // errorStyle: const TextStyle(fontSize: 8),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isPasswordReg = !isPasswordReg;
                          });
                        },
                        icon: isPasswordReg
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
                  ),
                ),
                SizedBox(height: 12.h),
                Text(
                  'Confirm Password',
                  style: TextStyle(
                      fontSize: 16.sp, fontFamily: 'Lato-Regular.ttf'),
                ),
                SizedBox(height: 8.h),
                TextFormField(
                  validator: (passwordRegConfig) {
                    //RegEx
                    if (passwordRegConfig!.isEmpty) {
                      return 'Please enter a password!';
                    } else {
                      return null;
                    }
                  },
                  controller: regPasswordConfigController,
                  obscureText: isPasswordRegConfig ? false : true,
                  decoration: InputDecoration(
                    // errorStyle: const TextStyle(fontSize: 8),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isPasswordRegConfig = !isPasswordRegConfig;
                          });
                        },
                        icon: isPasswordRegConfig
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
                  ),
                ),
                SizedBox(height: 11.h),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 19.w,
                      height: 20.h,
                      child: Checkbox(
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          }),
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      'I accept term and condition',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: const Color(0xffFFA09D),
                          fontSize: 12.sp,
                          fontFamily: 'Lato-Regular.ttf',
                          color: const Color(0xffFFA09D)),
                    )
                  ],
                ),
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
                      if (createAccFormKey.currentState!.validate()) {
                        //RegExdsfdsf
                        Navigator.pushNamedAndRemoveUntil(context,
                            AppRoutes.homeLayoutScreenRoute, (route) => false);
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
                        'Create Account',
                        style: TextStyle(
                            fontSize: 24.sp,
                            fontFamily: 'Lato',
                            color: const Color(0xffFFFFFF)),
                      ),
                    ),
                  ),
                )),
                SizedBox(height: 79.h),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: 'Already have an account?',
                      style: TextStyle(
                        fontFamily: 'Lato-Regular.ttf',
                        color: Colors.grey,
                        fontSize: 16.sp,
                      ),
                      children: [
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Navigator.pushNamed(
                                context, AppRoutes.loginScreenRoute),
                          text: 'Login',
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
    ));
  }
}
