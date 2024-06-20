import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../home_layout/view_model/home_layout_cubit.dart';

class Orders extends StatelessWidget {
  const Orders({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
                title: Text(
                  'Orders',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                leading: SizedBox(
                  //width: 40,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                      HomeLayoutCubit.get(context).changeIndex(4);
                    },
                    icon: Image.asset(
                      'assets/images/icons/img.png',
                      width: 24.w,
                      height: 24.h,
                    ),
                  ),
                ),
                actions: [
                  IconButton(
                      onPressed: () {
                        HomeLayoutCubit.get(context).changeIndex(3);
                      },
                      icon: SizedBox(
                          height: 24.h,
                          child: SvgPicture.asset(
                              'assets/images/icons/search.svg'))),
                  IconButton(
                    onPressed: () {
                      HomeLayoutCubit.get(context).changeIndex(2);
                    },
                    icon: SizedBox(
                        height: 24.h,
                        child:
                            SvgPicture.asset('assets/images/icons/cart.svg')),
                  ),
                ],
                bottom: const TabBar(
                  labelColor: Color(0xffff1C6E97),
                  indicatorColor: Color(0xffff1C6E97),
                  tabs: [
                    Tab(
                      text: 'OPEN ORDERS',
                    ),
                    Tab(
                      text: 'CLOSED ORDERS',
                    )
                  ],
                )),
            body: Padding(
              padding: const EdgeInsets.only(right: 16, left: 16, top: 32),
              child: Column(children: [
                // Image.asset(
                //   'images/background_star.png',
                //   width: 105.w,
                //   height: 105.h,
                // ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Center(
                    child: Text(
                      'You have no order in progress!',
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'lato'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Center(
                    child: Text(
                      'All your orders will be saved  here for you to access their state amytime.',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                        fontFamily: 'lato',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xffff1C6E97),
                        Color(0xffff408AAF),
                        Color(0xffff1C6E97)
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  height: 56.h,
                  margin: const EdgeInsets.only(
                    top: 32,
                  ),
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 50,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(10, 10))))),
                          onPressed: () {},
                          child: const Padding(
                            padding: EdgeInsets.only(left: 100),
                            child: Text(
                              'Start Shopping',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              // textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Image.asset(
                          'assets/images/icons/img_3.png',
                          width: 16.w,
                          height: 16.h,
                          color: Colors.white,
                        ),
                        Image.asset(
                          'assets/images/icons/img_4.png',
                          width: 16.w,
                          height: 16.h,
                          color: Colors.white70,
                        ),
                        Image.asset(
                          'assets/images/icons/img_5.png',
                          width: 16.w,
                          height: 16.h,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            )));
  }
}
