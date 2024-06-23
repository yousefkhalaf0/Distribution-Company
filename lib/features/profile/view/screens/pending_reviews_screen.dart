import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../home_layout/view_model/home_layout_cubit.dart';

class PendingReviews extends StatelessWidget {
  const PendingReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Pending Reviews',
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
            fontFamily: 'lato',
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
        padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 12.h),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 16.h),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.r),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade400,
                          blurRadius: 10.r,
                          spreadRadius: 0,
                          offset: const Offset(4, 4))
                    ]),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 24.w, right: 23.w, top: 23.h, bottom: 23.h),
                  child: SizedBox(
                    width: 59.w,
                    height: 59.h,
                    child: Image.asset(
                      'assets/images/icons/img_6.png',
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                'No items to review',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'lato',
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12.h),
              child: Center(
                child: Text(
                  'You don’t have any pending ratings at the moment.',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      fontFamily: 'lato'),
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
              margin: EdgeInsets.only(top: 32.h),
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(
                  right: 50.w,
                ),
                child: Row(
                  children: [
                    TextButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(10, 10))))),
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsets.only(left: 100.w),
                        child: Text(
                          'Start Shopping',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
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
          ],
        ),
      ),
    );
  }
}
