import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/router/routes.dart';
import '../../../home_screen/model/home_model.dart';
import '../../model/category_products_model.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails(
      {super.key,
      this.categoryProductsModel,
      this.homeProductsModel /*, required this.categoriesModel*/});
  final CategoryProductsModel? categoryProductsModel;
  final HomeProductsModel? homeProductsModel;
  // final CategoriesModel categoriesModel;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    final image =
        widget.categoryProductsModel?.image ?? widget.homeProductsModel?.image;
    final description = widget.categoryProductsModel?.description ??
        widget.homeProductsModel?.description;
    final currency = widget.categoryProductsModel?.currency ??
        widget.homeProductsModel?.currency;
    final currentPrice = widget.categoryProductsModel?.currentPrice ??
        widget.homeProductsModel?.currentPrice;
    final oldPrice = widget.categoryProductsModel?.oldPrice ??
        widget.homeProductsModel?.oldPrice;
    final offerPercentage = widget.categoryProductsModel?.offerPercentage ??
        widget.homeProductsModel?.offerPercentage;
    // final title = widget.categoriesModel.title ?? '';

    return Scaffold(
      // backgroundColor: Colors.white ,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset(
              'assets/images/icons/img.png',
              // width: 24.w,
              height: 24.h,
            )),
        title: Text(
          'Sticky Notes',
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 20.sp, height: 24.h),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.only(top: 12.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.separated(
                shrinkWrap: true,
                itemCount: 1,
                separatorBuilder: (_, index) => SizedBox(
                  height: 10.h,
                ),
                itemBuilder: (_, index) => Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        // border: Border.all(width: 0.5.w,color: const Color.fromARGB(255, 218, 217, 217)),
                        //borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 53.w, right: 54.w, bottom: 32.h),
                              child: Image.asset(
                                image!,
                                width: 321.w,
                                height: 384.h,
                              ),
                            ),
                            Text(
                              'Sticky Notes',
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontFamily: 'lato',
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xffff1c6e97)),
                            ),
                            Text(
                              description!,
                              style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                            Row(
                              children: [
                                Text(
                                  currency!,
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  width: 7.w,
                                ),
                                Text(
                                  '${currentPrice!}',
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  width: 7.w,
                                ),
                                Text(
                                  oldPrice!,
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      fontSize: 12.sp,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  width: 7.w,
                                ),
                                Text(
                                  offerPercentage!,
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xffff1C6E97)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 39.h,
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: 0.5.w,
                                color:
                                    const Color.fromARGB(255, 218, 217, 217)),
                            color: Colors.white),
                        height: 56.h,
                        margin: EdgeInsets.only(top: 14.h),
                        width: 396.w,
                        child: Padding(
                          padding: EdgeInsets.only(left: 16.w, right: 20.w),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/icons/img_31.png',
                                width: 16.w,
                                height: 16.h,
                              ),
                              SizedBox(
                                width: 41.w,
                              ),
                              Text(
                                'This item cannot be exchange or returned',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(width: 14.w),
                              Image.asset(
                                'assets/images/icons/img_18.png',
                                width: 15.w,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Container(
          //   decoration: BoxDecoration(
          //       shape: BoxShape.rectangle,
          //       borderRadius: BorderRadius.circular(10),
          //       border: Border.all(
          //           width: 0.5.w,
          //           color: const Color.fromARGB(255, 218, 217, 217)),
          //       color: Colors.white),
          //   width: 66.w,
          //   height: 56.h,
          //   child: Column(
          //     children: [
          //       Text(
          //         'QTY',
          //         style: TextStyle(
          //             fontFamily: 'Lato',
          //             fontSize: 10.sp,
          //             fontWeight: FontWeight.w500,
          //             color: Colors.grey),
          //       ),
          //       Text('1',
          //           style: TextStyle(
          //               fontFamily: 'Lato',
          //               fontSize: 20.sp,
          //               fontWeight: FontWeight.w500,
          //               color: Colors.black))
          //     ],
          //   ),
          // ),
          // SizedBox(width: 8.w),
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
                )),
            width: 322.w,
            // height: 56.h,
            child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.checkoutScreenRoute);
                },
                child: Text(
                  'ADD TO CART',
                  style: TextStyle(
                      fontFamily: 'Lato', fontSize: 16.sp, color: Colors.white),
                )),
          ),
        ],
      ),
    );
  }
}
