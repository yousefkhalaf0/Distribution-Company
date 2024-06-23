import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../home_layout/view_model/home_layout_cubit.dart';

class Inbox extends StatelessWidget {
  const Inbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Inbox',
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          leading: SizedBox(
            //width: 20.w,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
                HomeLayoutCubit.get(context).changeIndex(4);
              },
              icon: Image.asset(
                'assets/images/icons/img.png',
                width: 20.w,
                height: 20.h,
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
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromARGB(255, 222, 218, 218),
                            blurRadius: 5,
                            spreadRadius: 0,
                            offset: Offset(0, 4))
                      ]),
                  child: CircleAvatar(
                    maxRadius: 50.r,
                    backgroundColor: Colors.white,
                    backgroundImage: const AssetImage(
                      'assets/images/icons/inbox.png',
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  'You don’t have any messages',
                  style:
                      TextStyle(fontSize: 20.sp, fontFamily: 'Lato-Bold.ttf'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Center(
                  child: Text(
                    'Here you will be able to see all the messages that we send you.',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                        fontFamily: 'Lato-Light.ttf'),
                  ),
                ),
              ),
              Center(
                  child: Text(
                'Stay tuned',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    fontFamily: 'lato'),
              ))
            ])));
  }
}
