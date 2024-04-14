import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/features/auth/login_screen/view_model/login_cubit.dart';
import 'core/bloc_observer.dart';
import 'core/database/local_database/cache.dart';
import 'core/router/router.dart';
import 'features/auth/create_acc_screen/view_model/create_acc_cubit.dart';
import 'features/auth/forgot_password/create_new_pass_screen/view_model/create_new_pass_cubit.dart';
import 'features/home_layout/view_model/home_layout_cubit.dart';
import 'features/on_boarding_screen/view_model/on_boarding_cubit.dart';
import 'features/profile/view_mode/profile_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Bloc.observer = MyBlocObserver();
  await MyShared.init();
  runApp(
    //device preview
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),

    // const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      //h total 926
      //w 428
      designSize: const Size(428, 886),
      minTextAdapt: true,
      // splitScreenMode: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => HomeLayoutCubit(),
          ),
          BlocProvider(
            create: (context) => LoginCubit(),
          ),
          BlocProvider(
            create: (context) => OnBoardingCubit(),
          ),
          BlocProvider(
            create: (context) => CreateAccCubit(),
          ),
          BlocProvider(
            create: (context) => CreateNewPassCubit(),
          ),
          BlocProvider(
            create: (context) => ProfileCubit(),
          ),
        ],
        child: MaterialApp(
          //device preview
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          debugShowCheckedModeBanner: false,
          onGenerateRoute: onGenerateRoutes,
          // home: const (),
        ),
      ),
    );
  }
}
