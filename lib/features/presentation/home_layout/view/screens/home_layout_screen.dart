import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../model/home_layout_model.dart';
import '../../view_model/home_layout_cubit.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  // void onItemTapped(int index) {
  //   setState(() {
  //     selectedIndex = index;
  //   });
  //   // switch (index) {
  //   //   case 0:
  //   //     Navigator.pushReplacementNamed(context, AppRoutes.homeScreenRoute);
  //   //     break;
  //   //   case 1:
  //   //     Navigator.pushReplacement(
  //   //       context,
  //   //       MaterialPageRoute(builder: (context) => CategoriesScreen()),
  //   //     );
  //   //     break;
  //   //   case 2:
  //   //     Navigator.pushReplacement(
  //   //       context,
  //   //       MaterialPageRoute(builder: (context) => CartScreen()),
  //   //     );
  //   //     break;
  //   //   case 3:
  //   //     Navigator.pushReplacement(
  //   //       context,
  //   //       MaterialPageRoute(builder: (context) => SearchScreen()),
  //   //     );
  //   //     break;
  //   //   case 4:
  //   //     Navigator.pushReplacement(
  //   //       context,
  //   //       MaterialPageRoute(builder: (context) => ProfileScreen()),
  //   //     );
  //   //     break;
  //   // }
  // }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeLayoutCubit, HomeLayoutState>(
  builder: (context, state) {
    return Scaffold(
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        transitionBuilder: (child, animation) {
          return FadeTransition(opacity: animation, child: child);
        },
        child: screens[HomeLayoutCubit.get(context).index],
      ),
      bottomNavigationBar: SizedBox(
        height: 66.h,
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                      HomeLayoutCubit.get(context).index == 0
                          ? const Color(0xff1C6E97)
                          : Colors.black,
                      BlendMode.srcIn),
                  child: Image.asset(
                    'assets/images/icons/img_2.png',
                    width: 24.w,
                    height: 24.h,
                  )),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                      HomeLayoutCubit.get(context).index == 1
                          ? const Color(0xff1C6E97)
                          : Colors.black,
                      BlendMode.srcIn),
                  child: Image.asset(
                    'assets/images/icons/img_3.png',
                    width: 19.w,
                    height: 19.h,
                  )),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                      HomeLayoutCubit.get(context).index == 2
                          ? const Color(0xff1C6E97)
                          : Colors.black,
                      BlendMode.srcIn),
                  child: Image.asset(
                    'assets/images/icons/img_4.png',
                    width: 24.w,
                    height: 24.h,
                  )),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                      HomeLayoutCubit.get(context).index == 3
                          ? const Color(0xff1C6E97)
                          : Colors.black,
                      BlendMode.srcIn),
                  child: Image.asset(
                    'assets/images/icons/img_5.png',
                    width: 24.w,
                    height: 24.h,
                  )),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                      HomeLayoutCubit.get(context).index == 4
                          ? const Color(0xff1C6E97)
                          : Colors.black,
                      BlendMode.srcIn),
                  child: Image.asset(
                    'assets/images/icons/img_6.png',
                    width: 24.w,
                    height: 24.h,
                  )),
              label: 'Profile',
            ),
          ],
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xff1C6E97),
          unselectedItemColor: Colors.black,
          selectedFontSize: 8.sp,
          unselectedFontSize: 8.sp,
          currentIndex: HomeLayoutCubit.get(context).index,
          onTap: HomeLayoutCubit.get(context).changeIndex,
        ),
      ),
    );
  },
);
  }
}
