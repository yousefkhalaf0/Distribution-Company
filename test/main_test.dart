import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graduation_project/core/router/router.dart';
import 'package:graduation_project/main.dart';
import 'package:graduation_project/features/home_layout/view_model/home_layout_cubit.dart';
import 'package:graduation_project/features/auth/login_screen/view_model/login_cubit.dart';
import 'package:graduation_project/features/on_boarding_screen/view_model/on_boarding_cubit.dart';
import 'package:graduation_project/features/auth/create_acc_screen/view_model/create_acc_cubit.dart';
import 'package:graduation_project/features/auth/forgot_password/create_new_pass_screen/view_model/create_new_pass_cubit.dart';
import 'package:graduation_project/features/profile/view_mode/profile_cubit.dart';
import 'package:graduation_project/features/products_view_screen/view_model/products_view_cubit.dart';
import 'package:graduation_project/features/home_screen/view_model/home_screen_cubit.dart';

void main() {
  group('MyApp Widget Tests', () {
    testWidgets('MaterialApp is created with correct properties',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      // Check if MaterialApp is created
      expect(find.byType(MaterialApp), findsOneWidget);

      // Verify MaterialApp properties
      final MaterialApp materialApp = tester.widget(find.byType(MaterialApp));
      expect(materialApp.debugShowCheckedModeBanner, isFalse);
      expect(materialApp.onGenerateRoute, onGenerateRoutes);
    });

    testWidgets('MultiBlocProvider contains all required blocs',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      // Check if MultiBlocProvider contains all required blocs
      expect(find.byType(MultiBlocProvider), findsOneWidget);
      expect(find.byType(BlocProvider<HomeLayoutCubit>), findsOneWidget);
      expect(find.byType(BlocProvider<LoginCubit>), findsOneWidget);
      expect(find.byType(BlocProvider<OnBoardingCubit>), findsOneWidget);
      expect(find.byType(BlocProvider<CreateAccCubit>), findsOneWidget);
      expect(find.byType(BlocProvider<CreateNewPassCubit>), findsOneWidget);
      expect(find.byType(BlocProvider<ProfileCubit>), findsOneWidget);
      expect(find.byType(BlocProvider<ProductsViewCubit>), findsOneWidget);
      expect(find.byType(BlocProvider<HomeScreenCubit>), findsOneWidget);
    });
  });
}
