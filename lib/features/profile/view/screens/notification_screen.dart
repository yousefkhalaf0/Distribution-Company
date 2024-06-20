import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../home_layout/view_model/home_layout_cubit.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Notification',
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: SizedBox(
          //width: 20,
          //height: 20,
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
              HomeLayoutCubit.get(context).changeIndex(4);
            },
            icon: Image.asset(
              'assets/images/icons/img.png',
              width: 20.w,
              height: 20.h,
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
                  child: SvgPicture.asset('assets/images/icons/search.svg'))),
          IconButton(
            onPressed: () {
              HomeLayoutCubit.get(context).changeIndex(2);
            },
            icon: SizedBox(
                height: 24.h,
                child: SvgPicture.asset('assets/images/icons/cart.svg')),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: 20.w,
          right: 20.w,
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 2.h, top: 283.h),
              child: Container(
                child: Image.asset(
                  'assets/images/icons/img_30.png',
                  width: 200.w,
                ),
              ),
            ),
            Center(
              child: Text(
                'You don’t have any notification yet',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12.h),
              child: Center(
                child: Text(
                  'Here you will be able to see all the notification that we show for you',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      fontFamily: 'lato'),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
