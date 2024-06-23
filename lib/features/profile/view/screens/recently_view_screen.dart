import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../home_layout/view_model/home_layout_cubit.dart';

class RecentlyView extends StatelessWidget {
  const RecentlyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Recently Viewed',
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
              icon: Image.asset('assets/images/icons/img.png'),
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
        body: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: 1,
                separatorBuilder: (_, index) => SizedBox(
                  height: 0.h,
                ),
                itemBuilder: (_, index) => Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            width: 0.5,
                            color: const Color.fromARGB(255, 189, 189, 189)),
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 242, 240, 240),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: Offset(0, 4),
                          )
                        ]),
                    child: Padding(
                      padding: EdgeInsets.only(top: 16.h, left: 16.w),
                      child: Column(
                        children: [
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.r),
                                      border: Border.all(
                                          color: const Color.fromARGB(
                                              255, 218, 217, 217),
                                          width: 0.2.w),
                                    ),
                                    child: Image.asset(
                                      'assets/images/home/products/office/sticky_notes/img.png',
                                      width: 105.w,
                                      height: 89.h,
                                    )),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.w),
                                  child: SizedBox(
                                    width: 215.w,
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Cute Animal Sticky Notes Pads, Cat Cartoon Kawaii',
                                            textAlign: TextAlign.left,
                                            maxLines: 2,
                                            style: TextStyle(
                                                fontFamily: 'Lato',
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black),
                                          ),
                                          SizedBox(
                                            height: 4.h,
                                          ),
                                          Text(
                                            'EGP 109.00',
                                            style: TextStyle(
                                                fontFamily: 'Lato',
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black),
                                          ),
                                          SizedBox(
                                            height: 4.h,
                                          ),
                                          Text(
                                            'EGP 129.00',
                                            style: TextStyle(
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                fontFamily: 'Lato',
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.grey),
                                          ),
                                        ]),
                                  ),
                                ),
                              ]),
                          const Divider(
                            color: Color.fromARGB(255, 218, 217, 217),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 250.w,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: 16.h, bottom: 12.5.h),
                                  child: Container(
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
                                        )),
                                    width: 115.w,
                                    height: 49.h,
                                    child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          'BUY NOW',
                                          style: TextStyle(
                                              fontFamily: 'Lato',
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white),
                                        )),
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: TextButton(
            onPressed: () {},
            child: Text(
              'CLEAR ALL',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16.sp,
                fontFamily: 'lato',
                color: Color(0xFFFF1C6E97),
              ),
            )));
  }
}
