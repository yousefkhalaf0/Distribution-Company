import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/router/routes.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF8F8F8),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          // leading: IconButton(
          //     onPressed: () {
          //       // Navigator.pushNamedAndRemoveUntil(
          //       //     context, AppRoutes., (route) => false);
          //     },
          //     icon: SizedBox(
          //         height: 24.h,
          //         child: Image.asset('assets/images/icons/img.png'))),
          centerTitle: false,
          title: Text(
            'Cart',
            style: TextStyle(fontSize: 24.sp, fontFamily: 'Lato-Regular.ttf'),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 16.w),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.wishListScreenRoute);
                },
                child: Container(
                  width: 83.w,
                  height: 22.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.r),
                      border: Border.all(color: Colors.black12)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: FittedBox(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset('assets/images/icons/heart.svg'),
                          SizedBox(width: 6.w),
                          Text(
                            'Wishlist',
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontFamily: 'Lato-Light.ttf',
                                color: Colors.black54),
                          ),
                          SizedBox(width: 4.w),
                          SvgPicture.asset(
                              'assets/images/icons/right_arrow.svg')
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 24.h, left: 16.w, right: 16.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListView.separated(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  separatorBuilder: (context, index) => SizedBox(height: 12.h),
                  itemCount: 1,
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      //
                      Navigator.pushNamed(context, AppRoutes.checkoutScreenRoute);
                      //
                    },
                    child: Container(
                      height: 136.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.only(top: 12.h, left: 12.w),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 86.w,
                                  height: 82.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.r),
                                      image: const DecorationImage(
                                          // fit: BoxFit.fill,
                                          image: AssetImage(
                                              'assets/images/home/products/office/sticky_notes/img_6.png'))),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        width: 19.w,
                                        height: 19.h,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.black12),
                                            shape: BoxShape.circle,
                                            color: Colors.white),
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: SvgPicture.asset(
                                              'assets/images/icons/heart.svg',
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 12.w),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Sticky Notes',
                                      style: TextStyle(
                                          fontFamily: 'Lato-Regular.ttf',
                                          fontSize: 12.sp),
                                    ),
                                    SizedBox(height: 8.h),
                                    Text(
                                      '400 pcs Page Markers Sticky index',
                                      style: TextStyle(
                                          fontFamily: 'Lato-Regular.ttf',
                                          fontSize: 10.sp),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 12.w),
                                Padding(
                                  padding: EdgeInsets.only(top: 38.h),
                                  child: Text(
                                    'EGP 399.00',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontFamily: 'Lato-Regular.ttf'),
                                  ),
                                )
                              ],
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset(
                                      'assets/images/icons/recycle_bin.svg',
                                    )),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
