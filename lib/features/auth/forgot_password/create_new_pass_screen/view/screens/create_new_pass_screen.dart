import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/router/routes.dart';
import '../../../../../../core/utilities/constants.dart';
import '../../../../../../core/utilities/controllers.dart';
import '../../../../../../core/utilities/functions.dart';
import '../../view_model/create_new_pass_cubit.dart';

class CreateNewPass extends StatefulWidget {
  const CreateNewPass({super.key});

  @override
  State<CreateNewPass> createState() => _CreateNewPassState();
}

class _CreateNewPassState extends State<CreateNewPass> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
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
            child: BlocBuilder<CreateNewPassCubit, CreateNewPassState>(
              builder: (context, state) {
                return Form(
                  key: newPasswordFormKey,
                  autovalidateMode: AutovalidateMode.always,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          'Create new password',
                          style: TextStyle(
                              fontSize: 24.sp, fontFamily: 'Lato-Bold.ttf'),
                        ),
                      ),
                      SizedBox(height: 64.h),
                      TextFormField(
                        validator: (newPassword) {
                          if (!isValidPassword(newPassword!) ||
                              newPassword.isEmpty &&
                                  newPasswordController.text ==
                                      newPasswordConfigController.text) {
                            return 'must have at least 8 letters , 1 special character (& , * , # , @)';
                          }
                          return null;
                        },
                        controller: newPasswordController,
                        obscureText:
                            CreateNewPassCubit.get(context).isNewPassword
                                ? false
                                : true,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: 'Lato-Light.ttf',
                        ),
                        decoration: InputDecoration(
                          errorStyle: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: 'Lato-Light.ttf',
                            // color: isValidPassword(newPasswordController.text)
                            //     ? Colors.black
                            //     : Colors.red,
                          ),
                          hintText: 'New password',
                          helperStyle: TextStyle(
                              fontSize: 16.sp,
                              fontFamily: 'Lato-Light.ttf',
                              color: Colors.grey),
                          suffixIcon: IconButton(
                              onPressed: () {
                                CreateNewPassCubit.get(context)
                                    .ChangingObscureNewPass();
                              },
                              icon:
                                  CreateNewPassCubit.get(context).isNewPassword
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
                      // SizedBox(height: 8.h),
                      // FittedBox(
                      //   child: Text(
                      //     'must have at least 8 letters , 1 special character (& , * , # , @)',
                      //     style: TextStyle(
                      //         fontSize: 12.sp,
                      //         color: Colors.grey,
                      //         fontFamily: 'Lato-Regular.ttf'),
                      //   ),
                      // ),
                      SizedBox(height: 16.h),
                      TextFormField(
                        validator: (newPassword) {
                          if (!isValidPassword(newPassword!) ||
                              newPassword.isEmpty &&
                                  newPasswordController.text ==
                                      newPasswordConfigController.text) {
                            return 'Both passwords must be match';
                          }
                          return null;
                        },
                        controller: newPasswordConfigController,
                        obscureText:
                            CreateNewPassCubit.get(context).isNewPasswordConfig
                                ? false
                                : true,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: 'Lato-Light.ttf',
                        ),
                        decoration: InputDecoration(
                          errorStyle: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: 'Lato-Light.ttf',
                            // color: isValidPassword(newPasswordController.text)
                            //     ? Colors.black
                            //     : Colors.red,
                          ),
                          hintText: 'Confirm password',
                          helperStyle: TextStyle(
                              fontSize: 16.sp,
                              fontFamily: 'Lato-Light.ttf',
                              color: Colors.grey),
                          suffixIcon: IconButton(
                              onPressed: () {
                                CreateNewPassCubit.get(context)
                                    .ChangingObscureNewPassConfig();
                              },
                              icon: CreateNewPassCubit.get(context)
                                      .isNewPasswordConfig
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
                      SizedBox(height: 46.h),
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
                            if (newPasswordFormKey.currentState!.validate()) {
                              Navigator.pushNamedAndRemoveUntil(context,
                                  AppRoutes.loginScreenRoute, (route) => false);
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
                              'Save',
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
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
