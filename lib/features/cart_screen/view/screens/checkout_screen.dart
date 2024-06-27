import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/router/routes.dart';
import '../../../home_screen/model/home_model.dart';
import '../../../home_screen/view/widgets/home_widget.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffff8f8f8),
      appBar: AppBar(
        backgroundColor: const Color(0xfffff8f8f8),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.wishListScreenRoute);
              },
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                        width: 0.2.w,
                        color: const Color.fromARGB(255, 218, 217, 217)),
                    color: Colors.white),
                //width: 83.w,
                child: Row(
                  children: [
                    SizedBox(
                      width: 5.w,
                    ),
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
                    SvgPicture.asset('assets/images/icons/right_arrow.svg')
                  ],
                ),
              ))
        ],
        title: Row(
          children: [
            Text(
              'Cart ',
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Lato',
                  color: Colors.black),
            ),
            Text('(1 Item)',
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Lato',
                    color: Colors.grey)),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () {},
              child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(5),
                      //border: Border.all(width: 0.2,color: Colors.grey),
                      color: Colors.white),
                  width: 396.w,
                  height: 56.h,
                  child: Row(children: [
                    SizedBox(width: 16.w),
                    Image.asset('assets/images/icons/img_32.png'),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text('Deliver to',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w500,
                            color: Colors.grey)),
                  ]))),
          Expanded(
            child: ListView.separated(
              itemCount: 1,
              // shrinkWrap: true,
              separatorBuilder: (_, index) => SizedBox(
                height: 10.h,
              ),
              itemBuilder: (_, index) => Padding(
                padding: EdgeInsets.only(right: 16.w, left: 16.w),
                child: Container(
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Padding(
                    padding:
                        EdgeInsets.only(top: 16.h, bottom: 12.h, left: 16.w),
                    child: Column(
                      children: [
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/home/products/office/sticky_notes/img_6.png',
                                width: 114.w,
                                height: 136.h,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.w),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '400 pcs Page Markers Sticky index',
                                        style: TextStyle(
                                          fontFamily: 'Lato',
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 12.h,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'EGP ',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12.sp,
                                                fontFamily: 'Lato',
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            width: 7.w,
                                          ),
                                          Text(
                                            '399.00 ',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14.sp,
                                                fontFamily: 'Lato',
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            width: 7.w,
                                          ),
                                          Text(
                                            '405.00 ',
                                            style: TextStyle(
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                color: Colors.grey,
                                                fontSize: 12.sp,
                                                fontFamily: 'Lato',
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            width: 7.w,
                                          ),
                                          Text(
                                            '10%',
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                fontFamily: 'Lato',
                                                fontWeight: FontWeight.w600,
                                                color:
                                                    const Color(0xffff1C6E97)),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 12.h,
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            'assets/images/icons/img_31.png',
                                            width: 16.w,
                                            height: 16.h,
                                          ),
                                          SizedBox(
                                            width: 8.w,
                                          ),
                                          Text(
                                            'This item cannot be exchange or',
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              fontFamily: 'Lato',
                                              fontWeight: FontWeight.w500,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'returned',
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ]),
                              ),
                            ]),
                        SizedBox(
                          height: 58.h,
                        ),

                        //small buttons
                        Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(
                                          width: 0.2.w, color: Colors.grey),
                                      color: Colors.white),
                                  width: 41.w,
                                  height: 26.h,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 8.w, right: 7.w),
                                    child: Row(
                                      children: [
                                        Text(
                                          '1',
                                          style: TextStyle(
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Lato',
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          width: 6.w,
                                        ),
                                        Image.asset(
                                            'assets/images/icons/img_33.png'),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 16.w),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(4),
                                    border: Border.all(
                                        width: 0.2.w, color: Colors.grey),
                                    color: Colors.white),
                                // width:58.w,
                                height: 26.h,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 4.w,
                                    ),
                                    SvgPicture.asset(
                                      'assets/images/icons/recycle_bin.svg',
                                      width: 11.w,
                                      height: 12.h,
                                    ),
                                    SizedBox(
                                      width: 4.w,
                                    ),
                                    Text(
                                      'Remove',
                                      style: TextStyle(
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Lato',
                                          color: Colors.grey),
                                    ),
                                    SizedBox(
                                      width: 4.w,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 145.w,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(
                                      width: 0.2.w, color: Colors.grey),
                                  color: Colors.white),
                              width: 104.w,
                              height: 26.h,
                              child: FittedBox(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 8.w,
                                    ),
                                    SvgPicture.asset(
                                        'assets/images/icons/heart.svg',
                                        width: 9.w,
                                        height: 8.h),
                                    SizedBox(
                                      width: 6.w,
                                    ),
                                    Text(
                                      'Move to Whishlist',
                                      style: TextStyle(
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Lato',
                                          color: Colors.grey),
                                    ),
                                    SizedBox(
                                      width: 16.w,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 100.h,
            width: 402.w,
            child: Text(
              ' We think you might like these',
              style: TextStyle(
                  fontFamily: 'lato',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: 194.h,
            child: Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    // Column(
                    //   mainAxisSize: MainAxisSize.min,
                    //   children: [
                    //     Material(
                    //       elevation: 2,
                    //       borderRadius: BorderRadius.circular(15.r),
                    //       child: InkWell(
                    //         onTap: () {},
                    //         child: Container(
                    //           width: 142.w,
                    //           height: 187.h,
                    //           decoration: BoxDecoration(
                    //               borderRadius: BorderRadius.circular(15.r),
                    //               border: Border.all(
                    //                   color: Colors.black12, width: 0.5)),
                    //           child: Padding(
                    //             padding: EdgeInsets.symmetric(
                    //                 horizontal: 7.w, vertical: 4.h),
                    //             child: Column(
                    //               crossAxisAlignment: CrossAxisAlignment.start,
                    //               children: [
                    //                 Expanded(
                    //                   child: Container(
                    //                     width: 128.w,
                    //                     // height: 111.h,
                    //                     height: 121.h,
                    //                     decoration: BoxDecoration(
                    //                         borderRadius:
                    //                             BorderRadius.circular(15.r),
                    //                         image: const DecorationImage(
                    //                             // fit: BoxFit.fill,
                    //                             image: AssetImage(
                    //                                 'assets/images/home/products/office/sticky_notes/img_6.png'))),
                    //                     child: Column(
                    //                       mainAxisAlignment:
                    //                           MainAxisAlignment.spaceBetween,
                    //                       crossAxisAlignment:
                    //                           CrossAxisAlignment.end,
                    //                       children: [
                    //                         Container(
                    //                           width: 25.w,
                    //                           height: 25.h,
                    //                           decoration: BoxDecoration(
                    //                               border: Border.all(
                    //                                   color: Colors.black12),
                    //                               shape: BoxShape.circle,
                    //                               color: Colors.white),
                    //                           child: IconButton(
                    //                               onPressed: () {},
                    //                               icon: Image.asset(
                    //                                 'assets/images/icons/img_9.png',
                    //                               )),
                    //                         ),
                    //                         Container(
                    //                           width: 25.w,
                    //                           height: 25.h,
                    //                           decoration: BoxDecoration(
                    //                               border: Border.all(
                    //                                   color: Colors.black12),
                    //                               shape: BoxShape.circle,
                    //                               color: Colors.white),
                    //                           child: IconButton(
                    //                               onPressed: () {},
                    //                               icon: Image.asset(
                    //                                 'assets/images/icons/img_7.png',
                    //                               )),
                    //                         ),
                    //                       ],
                    //                     ),
                    //                   ),
                    //                 ),
                    //                 Column(
                    //                   mainAxisSize: MainAxisSize.min,
                    //                   crossAxisAlignment:
                    //                       CrossAxisAlignment.start,
                    //                   children: [
                    //                     Text(
                    //                       '400 pcs Page Markers Sticky index',
                    //                       maxLines: 2,
                    //                       overflow: TextOverflow.ellipsis,
                    //                       style: TextStyle(
                    //                           fontSize: 10.sp,
                    //                           // height: 0.9.sp,
                    //                           fontFamily: 'Lato-Regular.ttf'),
                    //                     ),
                    //                     RichText(
                    //                       text: TextSpan(
                    //                         children: <InlineSpan>[
                    //                           TextSpan(
                    //                             text: 'EGP ',
                    //                             style: TextStyle(
                    //                                 fontSize: 10.sp,
                    //                                 // height: 12 / 10.sp,
                    //                                 fontFamily:
                    //                                     'Lato-Regular.ttf',
                    //                                 color: Colors.grey),
                    //                           ),
                    //                           TextSpan(
                    //                             text: '399.00 ',
                    //                             style: TextStyle(
                    //                                 color: Colors.black,
                    //                                 fontSize: 10.sp,
                    //                                 // height: 12 / 10.sp,
                    //                                 fontFamily:
                    //                                     'Lato-Regular.ttf'),
                    //                           ),
                    //                           TextSpan(
                    //                             text: '405.00',
                    //                             style: TextStyle(
                    //                                 decoration: TextDecoration
                    //                                     .lineThrough,
                    //                                 decorationColor:
                    //                                     Colors.grey,
                    //                                 fontSize: 8.sp,
                    //                                 // height: 9.6 / 8.sp,
                    //                                 fontFamily:
                    //                                     'Lato-Regular.ttf',
                    //                                 color: Colors.grey),
                    //                           ),
                    //                         ],
                    //                       ),
                    //                     ),
                    //                     SizedBox(height: 2.h),
                    //                     Row(
                    //                       mainAxisSize: MainAxisSize.min,
                    //                       children: [
                    //                         SizedBox(
                    //                             width: 8.w,
                    //                             height: 9.h,
                    //                             child: const ImageIcon(
                    //                               AssetImage(
                    //                                   'assets/images/icons/img_8.png'),
                    //                               color: Color(0xff1C6E97),
                    //                             )),
                    //                         SizedBox(width: 5.w),
                    //                         Text('Selling out fast',
                    //                             style: TextStyle(
                    //                                 fontSize: 8.sp,
                    //                                 height: 9.6 / 8.sp,
                    //                                 fontFamily:
                    //                                     'Lato-Regular.ttf')),
                    //                       ],
                    //                     ),
                    //                   ],
                    //                 ),
                    //               ],
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //     SizedBox(height: 7.h)
                    //   ],
                    // );
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                            context, AppRoutes.productDetailsScreenRoute,
                            arguments: HomeProductsModel.recommended[index]);
                      },
                      child: HomeProductsWidget(
                        homeProductsModel: HomeProductsModel.recommended[index],
                      ),
                    );
                    // return null;
                  },
                  separatorBuilder: (context, index) => SizedBox(width: 8.w),
                  itemCount: HomeProductsModel.recommended.length),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 13.h),
            child: SizedBox(
              width: 392.w,
              height: 55.h,
              child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10.r),
                      //border: Border.all(width: 0.2,color: Colors.grey),
                      color: Colors.white),
                  width: 392.w,
                  height: 55.h,
                  child: Row(children: [
                    SizedBox(
                      width: 8.w,
                    ),
                    Text('View Available Offers',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w500,
                            color: const Color(0xffff1C6E97))),
                    SizedBox(width: 224.w),
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset(
                          'assets/images/icons/right_arrow.svg',
                          width: 15.w,
                          height: 15.h,
                          color: const Color(0xffff1C6E97)),
                    ),
                  ])),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10.r),
                color: Colors.white),
            width: 396.w,
            height: 114.h,
            child: Column(children: [
              ListTile(
                visualDensity: VisualDensity.compact,
                dense: true,
                leading: Text(
                  'Subtotal (1 Item)',
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                trailing: Text('EGP 399.00',
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w500,
                        color: Colors.black)),
              ),
              ListTile(
                dense: true,
                leading: Text(
                  'Shipping Fee',
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                trailing: Text('EGP 201.00',
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w500,
                        color: Colors.black)),
              ),
              const Divider(
                color: Color.fromARGB(255, 218, 217, 217),
              ),
              ListTile(
                visualDensity: VisualDensity.compact,
                dense: true,
                leading: Text(
                  'Total',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                trailing: Text('EGP 419.00',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w600,
                        color: Colors.black)),
              )
            ]),
          )
        ],
      ),
      bottomNavigationBar: InkWell(
        onTap: () {

        },
        child: Container(
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(0),
              border:
                  Border.all(color: const Color.fromARGB(255, 218, 217, 217)),
              color: Colors.white),
          child: Padding(
            padding: EdgeInsets.only(
                left: 16.w, right: 16.w, top: 14.h, bottom: 16.h),
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
              width: 396.w,
              height: 56.h,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 12.h, left: 12.w),
                    child: FittedBox(
                      child: Column(
                        children: [
                          Text(
                            '1 item',
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w600,
                                color: Colors.white54),
                          ),
                          Text(
                            'EGP 1,099.00',
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 72.w),
                  Text(
                    'CHECKOUT',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  SizedBox(width: 18.w),
                  Image.asset('assets/images/icons/img_3.png',
                      width: 20.w, height: 20.h, color: Colors.white30),
                  Image.asset(
                    'assets/images/icons/img_4.png',
                    width: 20.w,
                    height: 20.h,
                    color: Colors.white60,
                  ),
                  Image.asset('assets/images/icons/img_5.png',
                      width: 20.w, height: 20.h, color: Colors.white),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
