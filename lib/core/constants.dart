import 'package:flutter/material.dart';

//login screen
final emailController = TextEditingController();
final passwordController = TextEditingController();
final loginFormKey = GlobalKey<FormState>();

//create acc screen
final firstNameController = TextEditingController();
final lastNameController = TextEditingController();
final phoneController = TextEditingController();
final regEmailController = TextEditingController();
final regPasswordController = TextEditingController();
final regPasswordConfigController = TextEditingController();
final createAccFormKey = GlobalKey<FormState>();

//forget by email screen
final forgetByEmailController = TextEditingController();
final forgetByEmailFormKey = GlobalKey<FormState>();

//forget by phone screen
final forgetByPhoneController = TextEditingController();
final forgetByPhoneFormKey = GlobalKey<FormState>();

//email otp screen
final emailOTPController = TextEditingController();
final emailOTPFormKey = GlobalKey<FormState>();

//phone otp screen
final phoneOTPController = TextEditingController();
final phoneOTPFormKey = GlobalKey<FormState>();

//create new pass screen
final newPasswordController = TextEditingController();
final newPasswordConfigController = TextEditingController();
final newPasswordFormKey = GlobalKey<FormState>();