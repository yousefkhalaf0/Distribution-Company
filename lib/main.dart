import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/features/presentation/categories_screen/view/screens/categories_screen.dart';
import 'core/database/local_database/cache.dart';
import 'core/router/router.dart';
import 'features/presentation/help_screen/view/screens/help_screen.dart';
import 'features/presentation/home_layout/view_model/home_layout_cubit.dart';
import 'features/presentation/home_screen/view/screens/home_screen.dart';
import 'features/presentation/home_layout/view/screens/home_layout_screen.dart';
import 'features/presentation/profile_screen/view/screens/profile_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
        ],
        child: MaterialApp(
          //device preview
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          debugShowCheckedModeBanner: false,
          onGenerateRoute: onGenerateRoutes,
          // home: const HomeLayout(),
        ),
      ),
    );
  }
}
