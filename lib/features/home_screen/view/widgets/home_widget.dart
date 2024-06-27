import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/router/routes.dart';
import '../../model/home_model.dart';

class HomeCategoriesWidget extends StatelessWidget {
  const HomeCategoriesWidget({super.key, this.homeCategoriesModel});
  final HomeCategoriesModel? homeCategoriesModel;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FittedBox(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 87.w,
              height: 87.h,
              child: CircleAvatar(
                child: Image.asset('${homeCategoriesModel!.image}'),
              ),
            ),
            Text(
              '${homeCategoriesModel!.title}',
              style: TextStyle(fontSize: 12.sp, fontFamily: 'Lato-Regular.ttf'),
            )
          ],
        ),
      ),
    );
  }
}

class HomeProductsWidget extends StatelessWidget {
  const HomeProductsWidget({super.key, this.homeProductsModel});
  final HomeProductsModel? homeProductsModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Material(
          elevation: 2,
          borderRadius: BorderRadius.circular(15.r),
          child: Container(
            width: 142.w,
            height: 187.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                border: Border.all(color: Colors.black12, width: 0.5)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 4.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      width: 128.w,
                      // height: 111.h,
                      height: 121.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          image: DecorationImage(
                              // fit: BoxFit.fill,
                              image:
                                  AssetImage('${homeProductsModel!.image}'))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 25.w,
                            height: 25.h,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black12),
                                shape: BoxShape.circle,
                                color: Colors.white),
                            child: IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  'assets/images/icons/img_9.png',
                                )),
                          ),
                          Container(
                            width: 25.w,
                            height: 25.h,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black12),
                                shape: BoxShape.circle,
                                color: Colors.white),
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, AppRoutes.checkoutScreenRoute);
                                },
                                icon: Image.asset(
                                  'assets/images/icons/img_7.png',
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${homeProductsModel!.description}',
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
                              text: '${homeProductsModel!.currency} ',
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  // height: 12 / 10.sp,
                                  fontFamily: 'Lato-Regular.ttf',
                                  color: Colors.grey),
                            ),
                            TextSpan(
                              text: '${homeProductsModel!.currentPrice} ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10.sp,
                                  // height: 12 / 10.sp,
                                  fontFamily: 'Lato-Regular.ttf'),
                            ),
                            TextSpan(
                              text: '${homeProductsModel!.oldPrice}',
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
                      SizedBox(height: 2.h),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                              width: 8.w,
                              height: 9.h,
                              child: const ImageIcon(
                                AssetImage('assets/images/icons/img_8.png'),
                                color: Color(0xff1C6E97),
                              )),
                          SizedBox(width: 5.w),
                          Text('Selling out fast',
                              style: TextStyle(
                                  fontSize: 8.sp,
                                  height: 9.6 / 8.sp,
                                  fontFamily: 'Lato-Regular.ttf')),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 7.h)
      ],
    );
  }
}
