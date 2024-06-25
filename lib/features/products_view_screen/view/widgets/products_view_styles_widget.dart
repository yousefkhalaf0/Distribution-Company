import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../model/category_products_model.dart';

class GridViewStyle extends StatelessWidget {
  const GridViewStyle({super.key, this.categoryProductsModel});
  final CategoryProductsModel? categoryProductsModel;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(10.r),
      child: Container(
        width: 190.w,
        height: 257.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(color: Colors.black12, width: 0.5)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  width: 174.w,
                  height: 147.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image:
                              AssetImage('${categoryProductsModel!.image}'))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 21.w,
                        height: 21.h,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12),
                            shape: BoxShape.circle,
                            color: Colors.white),
                        child: IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/images/icons/img_9.png',
                            )),
                      )
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${categoryProductsModel!.description}',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 10.sp,
                        // height: 0.9.sp,
                        fontFamily: 'Lato-Regular.ttf'),
                  ),
                  RichText(
                    text: TextSpan(
                      children: <InlineSpan>[
                        TextSpan(
                          text: '${categoryProductsModel!.currency} ',
                          style: TextStyle(
                              fontSize: 10.sp,
                              // height: 12 / 10.sp,
                              fontFamily: 'Lato-Regular.ttf',
                              color: Colors.black),
                        ),
                        TextSpan(
                          text: '${categoryProductsModel!.currentPrice} ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 10.sp,
                              // height: 12 / 10.sp,
                              fontFamily: 'Lato-Regular.ttf'),
                        ),
                        TextSpan(
                          text: '${categoryProductsModel!.oldPrice}',
                          style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              decorationColor: Colors.grey,
                              fontSize: 8.sp,
                              // height: 9.6 / 8.sp,
                              fontFamily: 'Lato-Regular.ttf',
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 9.h),
                ],
              ),
              Container(
                width: 174.w,
                height: 30.h,
                decoration: BoxDecoration(
                  color: const Color(0xff1C6E97),
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.r)),
                  ),
                  child: FittedBox(
                    child: Text(
                      'Add To Cart',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Lato',
                          color: const Color(0xffFFFFFF)),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ListViewStyle extends StatelessWidget {
  const ListViewStyle({super.key, this.categoryProductsModel});
  final CategoryProductsModel? categoryProductsModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 136.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r), color: Colors.white),
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
                      image: DecorationImage(
                          // fit: BoxFit.fill,
                          image:
                              AssetImage('${categoryProductsModel!.image}'))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 19.w,
                        height: 19.h,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12),
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
                      //
                      'Sticky Notes',
                      //
                      style: TextStyle(
                          fontFamily: 'Lato-Regular.ttf', fontSize: 12.sp),
                    ),
                    SizedBox(height: 8.h),
                    SizedBox(
                      width: 157.w,
                      child: Text(
                        '${categoryProductsModel!.description}',
                        maxLines: 2,
                        style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontFamily: 'Lato-Regular.ttf',
                            fontSize: 10.sp),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 12.w),
                Padding(
                  padding: EdgeInsets.only(top: 38.h),
                  child: RichText(
                    text: TextSpan(
                      children: <InlineSpan>[
                        TextSpan(
                          text: 'ُ${categoryProductsModel!.currency} ',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: 'Lato-Regular.ttf',
                              color: Colors.black),
                        ),
                        TextSpan(
                          text: '${categoryProductsModel!.currentPrice} ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.sp,
                              fontFamily: 'Lato-Regular.ttf'),
                        ),
                        TextSpan(
                          text: '${categoryProductsModel!.oldPrice}',
                          style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              decorationColor: Colors.grey,
                              fontSize: 10.sp,
                              fontFamily: 'Lato-Regular.ttf',
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 12.h, right: 12.w),
                    child: Container(
                      width: 123.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                        color: const Color(0xff1C6E97),
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.r)),
                        ),
                        child: FittedBox(
                          child: Text(
                            'Add To Cart',
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontFamily: 'Lato',
                                color: const Color(0xffFFFFFF)),
                          ),
                        ),
                      ),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
