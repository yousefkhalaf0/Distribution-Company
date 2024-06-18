import 'package:flutter/material.dart';
import 'package:graduation_project/core/database/local_database/cache.dart';
import 'package:graduation_project/core/utilities/enums.dart';

var loginEmailController = TextEditingController(text: MyShared.getString(key: MySharedKeys.email));
var loginPasswordController = TextEditingController();
var fullNameController = TextEditingController();
var lastNameController = TextEditingController();
var phoneController = TextEditingController();
var regEmailController = TextEditingController();
var regPasswordController = TextEditingController();
var regPasswordConfigController = TextEditingController();
var forgetByEmailController = TextEditingController(text: MyShared.getString(key: MySharedKeys.email));
var forgetByPhoneController = TextEditingController(text: MyShared.getString(key: MySharedKeys.phoneNumber));
var emailOTPController = TextEditingController();
var phoneOTPController = TextEditingController();
var newPasswordController = TextEditingController();
var newPasswordConfigController = TextEditingController();
late TabController tabController;
