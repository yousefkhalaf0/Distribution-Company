import 'package:flutter/material.dart';

//onboarding screen
final onBoardingController = PageController();
int currentPage = 0;

//login screen
final emailController = TextEditingController();
final passwordController = TextEditingController();
final loginFormKey = GlobalKey<FormState>();
bool isPassword = false;

//create acc screen
final firstNameController = TextEditingController();
final lastNameController = TextEditingController();
final phoneController = TextEditingController();
final regEmailController = TextEditingController();
final regPasswordController = TextEditingController();
final regPasswordConfigController = TextEditingController();
final createAccFormKey = GlobalKey<FormState>();
bool isPasswordReg = false;
bool isPasswordRegConfig = false;
bool isChecked = false;

//forget by email screen
final forgetByEmailController = TextEditingController();

//forget by phone screen
final forgetByPhoneController = TextEditingController();

//email otp screen
final emailOTPController = TextEditingController();

//phone otp screen
final phoneOTPController = TextEditingController();

//create new pass screen
final newPasswordController = TextEditingController();
final newPasswordConfigController = TextEditingController();
bool isNewPassword = false;
bool isNewPasswordConfig = false;

//home layout screen
// int selectedIndex = 0;

//categories screen
