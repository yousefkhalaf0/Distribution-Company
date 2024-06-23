import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../home_layout/view_model/home_layout_cubit.dart';

class RecentlySearched extends StatelessWidget {
  const RecentlySearched({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Recently Searched',
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          leading: SizedBox(
            width: 20.w,
            height: 20.h,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
                HomeLayoutCubit.get(context).changeIndex(4);
              },
              icon: Image.asset(
                'assets/images/icons/img.png',
              ),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                  HomeLayoutCubit.get(context).changeIndex(3);
                },
                icon: SizedBox(
                    height: 24.h,
                    child: SvgPicture.asset('assets/images/icons/search.svg'))),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
                HomeLayoutCubit.get(context).changeIndex(2);
              },
              icon: SizedBox(
                  height: 24.h,
                  child: SvgPicture.asset('assets/images/icons/cart.svg')),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.white,
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(4, 4),
                  )
                ]),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: Image.asset(
                    'assets/images/icons/img_26.png',
                    width: 18.w,
                    height: 18.h,
                  ),
                  title: Text(
                    'White Paper',
                    style: TextStyle(
                      fontFamily: 'lato',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/images/icons/img_18.png',
                        width: 18.w,
                        height: 18.h,
                      )),
                  onTap: () {},
                ),
                ListTile(
                  visualDensity: VisualDensity.standard,
                  leading: Image.asset(
                    'assets/images/icons/img_26.png',
                    width: 18.w,
                    height: 18.h,
                  ),
                  title: Text(
                    'Black Pen',
                    style: TextStyle(
                      fontFamily: 'lato',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/images/icons/img_18.png',
                        width: 18.w,
                        height: 18.h,
                      )),
                  onTap: () {},
                ),
                ListTile(
                  leading: Image.asset(
                    'assets/images/icons/img_26.png',
                    width: 18.w,
                    height: 18.h,
                  ),
                  title: Text(
                    'Foulmaster',
                    style: TextStyle(
                      fontFamily: 'lato',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/images/icons/img_18.png',
                        width: 18.w,
                        height: 18.h,
                      )),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: TextButton(
            onPressed: () {},
            child: Text(
              'CLEAR ALL',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16.sp,
                fontFamily: 'lato',
                color: const Color(0xFFFF1C6E97),
              ),
            )));
  }
}
