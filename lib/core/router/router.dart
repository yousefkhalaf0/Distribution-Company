import 'package:flutter/material.dart';
import 'package:graduation_project/core/router/routes.dart';
import '../../features/presentation/auth/create_acc_screen/view/screens/create_acc_screen.dart';
import '../../features/presentation/auth/create_new_pass_screen/view/screens/create_new_pass_screen.dart';
import '../../features/presentation/auth/email_otp_screen/view/screens/email_otp_screen.dart';
import '../../features/presentation/auth/forget_by_email_screen/view/screens/forget_by_email_screen.dart';
import '../../features/presentation/auth/forget_by_phone_screen/view/screens/forget_by_phone_screen.dart';
import '../../features/presentation/auth/login_screen/view/screens/login_screen.dart';
import '../../features/presentation/auth/phone_otp_screen/view/screens/phone_otp_screen.dart';
import '../../features/presentation/cart_screen/view/screens/cart_screen.dart';
import '../../features/presentation/categories_screen/view/screens/categories_screen.dart';
import '../../features/presentation/help_screen/view/screens/help_screen.dart';
import '../../features/presentation/home_screen/view/screens/home_screen.dart';
import '../../features/presentation/home_layout/view/screens/home_layout_screen.dart';
import '../../features/presentation/on_boarding_screen/view/screens/on_boarding_screen.dart';
import '../../features/presentation/profile_screen/view/screens/profile_screen.dart';
import '../../features/presentation/search_screen/view/screens/search_screen.dart';
import '../../features/presentation/splash_screen/view/screens/splash_screen.dart';

Route<dynamic>? onGenerateRoutes(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AppRoutes.splashScreenRoute:
      return MaterialPageRoute(builder: (_) => const Splash());
    case AppRoutes.onBoardingScreenRoute:
      return MaterialPageRoute(builder: (_) => const OnBoarding());
    case AppRoutes.loginScreenRoute:
      return MaterialPageRoute(builder: (_) => const LogIn());
    case AppRoutes.createAccScreenRoute:
      return MaterialPageRoute(builder: (_) => const CreateAcc());
    case AppRoutes.forgetByEmailScreenRoute:
      return MaterialPageRoute(builder: (_) => const ForgetByEmail());
    case AppRoutes.forgetByPhoneScreenRoute:
      return MaterialPageRoute(builder: (_) => const ForgetByPhone());
    case AppRoutes.emailOTPScreenRoute:
      return MaterialPageRoute(builder: (_) => const EmailOTP());
    case AppRoutes.phoneOTPScreenRoute:
      return MaterialPageRoute(builder: (_) => const PhoneOTP());
    case AppRoutes.createNewPassScreenRoute:
      return MaterialPageRoute(builder: (_) => const CreateNewPass());
    case AppRoutes.homeScreenRoute:
      return MaterialPageRoute(builder: (_) => const Home());
    case AppRoutes.categoriesScreenRoute:
      return MaterialPageRoute(builder: (_) => const Categories());
    case AppRoutes.cartScreenRoute:
      return MaterialPageRoute(builder: (_) => const Cart());
    case AppRoutes.searchScreenRoute:
      return MaterialPageRoute(builder: (_) => const Search());
    case AppRoutes.profileScreenRoute:
      return MaterialPageRoute(builder: (_) => const Profile());
    case AppRoutes.homeLayoutScreenRoute:
      return MaterialPageRoute(builder: (_) => const HomeLayout());
    case AppRoutes.helpScreenRoute:
      return MaterialPageRoute(builder: (_) => const Help());
  }
  return null;
}
