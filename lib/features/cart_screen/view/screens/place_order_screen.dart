import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlaceOrder extends StatefulWidget {
  const PlaceOrder({super.key});

  @override
  _PlaceOrderState createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {
  int _selectedPaymentMethod =
      1; // 1 for Debit/Credit Card, 2 for Cash On Delivery

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffff8f8f8),
      appBar: AppBar(
        backgroundColor: const Color(0xfffff8f8f8),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset(
            'assets/images/icons/img.png',
            width: 24.w,
            height: 24.h,
          ),
        ),
        title: Text(
          'Checkout',
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
            fontFamily: 'Lato',
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10.r),
                color: Colors.white,
              ),
              width: 396.w,
              height: 56.h,
              child: Row(
                children: [
                  SizedBox(width: 16.w),
                  Image.asset('assets/images/icons/img_32.png'),
                  SizedBox(width: 8.w),
                  Text(
                    'Deliver to',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            itemCount: 1,
            separatorBuilder: (_, index) => SizedBox(height: 10.h),
            itemBuilder: (_, index) => Padding(
              padding: EdgeInsets.only(left: 16.w, right: 16.w),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 18.h, top: 16.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16.w, bottom: 8.h),
                        child: Text(
                          'Shipment 1 of 1 (1 Item)',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                            fontFamily: 'Lato',
                          ),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: 16.w),
                          Image.asset(
                            'assets/images/home/products/office/sticky_notes/img_6.png',
                            width: 81.w,
                            height: 97.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.w),
                            child: SizedBox(
                              width: 144.w,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Sticky Notes',
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Lato',
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  Text(
                                    '400 pcs Page Markers Sticky index',
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Lato',
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  Text(
                                    'EGP 399.00',
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Lato',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 12.h),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10.r),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Radio<int>(
                      value: 1,
                      groupValue: _selectedPaymentMethod,
                      onChanged: (value) {
                        setState(() {
                          _selectedPaymentMethod = value!;
                        });
                      },
                      activeColor: const Color(0xff1C6E97),
                    ),
                    title: Text(
                      'Debit/Credit Card',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Lato',
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const Divider(
                    color: Color.fromARGB(255, 218, 217, 217),
                  ),
                  ListTile(
                    leading: Radio<int>(
                      value: 2,
                      groupValue: _selectedPaymentMethod,
                      onChanged: (value) {
                        setState(() {
                          _selectedPaymentMethod = value!;
                        });
                      },
                      activeColor: Color(0xff1C6E97),
                    ),
                    title: Text(
                      'Cash On Delivery',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Lato',
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text(
                      'Extra charges may be applied',
                      style: TextStyle(
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                        fontFamily: 'Lato',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 12.h),
          Padding(
            padding: EdgeInsets.only(bottom: 0.h),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10.r),
                color: Colors.white,
              ),
              width: 396.w,
              height: 114.h,
              child: Padding(
                padding: EdgeInsets.only(left: 16.w, top: 16.h),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Subtotal (1 Item)',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 201.w),
                        Text(
                          'EGP 399.00',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      children: [
                        Text(
                          'Shipping Fee',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 230.w),
                        Text(
                          'EGP 20.00',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Color.fromARGB(255, 218, 217, 217),
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 254.w),
                        Text(
                          'EGP 419.00',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(0),
          border: Border.all(color: const Color.fromARGB(255, 218, 217, 217)),
          color: Colors.white,
        ),
        width: 428.w,
        height: 115.h,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: 16.w, right: 16.w, top: 8.h, bottom: 16.h),
              child: Row(
                children: [
                  Text(
                    '1 Item',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Lato',
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 263.w),
                  Text(
                    'EGP 419.00',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Lato',
                      color: Colors.black,
                    ),
                  ),
                ],
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
                    Color(0xffff1C6E97),
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              width: 396.w,
              height: 56.h,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'PLACE ORDER',
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
