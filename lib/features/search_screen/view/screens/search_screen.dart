import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/router/routes.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // leading: IconButton(
          //     onPressed: () {
          //       // Navigator.pushNamedAndRemoveUntil(
          //       //     context, AppRoutes., (route) => false);
          //     },
          //     icon: SizedBox(
          //         height: 24.h,
          //         child: Image.asset('assets/images/icons/img.png'))),
          title: Text(
            'Search',
            style: TextStyle(fontSize: 24.sp, fontFamily: 'Lato-Regular.ttf'),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Center(
                child: FittedBox(
                  child: Padding(
                    padding:
                        EdgeInsets.only(top: 32.h, left: 16.w, right: 16.w),
                    child: Material(
                      elevation: 2,
                      borderRadius: BorderRadius.circular(20.r),
                      child: Container(
                        width: 396.w,
                        // height: 56.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          border: Border.all(color: Colors.black12, width: 0.5),
                        ),
                        child: Center(
                          child: TextField(
                            style: TextStyle(
                                fontSize: 16.sp, fontFamily: 'Lato-Light.ttf'),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Image.asset(
                                  'assets/images/icons/img_5.png',
                                  scale: 2),
                              hintText: 'Search',
                              hintStyle: TextStyle(
                                  fontSize: 16.sp,
                                  fontFamily: 'Lato-Light.ttf'),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
