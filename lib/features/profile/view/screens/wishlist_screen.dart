import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WishList extends StatelessWidget {
  const WishList({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xffF8F8F8),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: SizedBox(
                height: 24.h,
                child: Image.asset('assets/images/icons/img.png'))),
        centerTitle: false,
        title: Text(
          'Wishlist',
          style: TextStyle(fontSize: 20.sp, fontFamily: 'Lato-Regular.ttf'),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: SvgPicture.asset(
              'assets/images/icons/heart.svg',
              width: 26.w,
              height: 22.h,
            ),
          )
        ],
      ),
    ));
  }
}
