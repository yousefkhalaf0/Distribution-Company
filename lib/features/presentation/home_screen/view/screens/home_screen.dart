import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../home_layout/view_model/home_layout_cubit.dart';
import '../../model/home_model.dart';
import '../widgets/home_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: InkWell(
            onTap: () {},
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  child: Image.asset('assets/images/home/img.png'),
                ),
                SizedBox(width: 8.w),
                Text(
                  'Hello, Muhammed',
                  style: TextStyle(
                      fontSize: 16.sp, fontFamily: 'Lato-Regular.ttf'),
                )
              ],
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Image.asset('assets/images/icons/img_1.png',
                    height: 22, width: 26))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {},
                child: const Image(
                  image: AssetImage('assets/images/home/img_1.png'),
                ),
              ),
              SizedBox(height: 16.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                          fontSize: 20.sp, fontFamily: 'Lato-Bold.ttf'),
                    ),
                    RichText(
                        text: TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap =
                            () => HomeLayoutCubit.get(context).changeIndex(1),
                      text: 'See all',
                      style: TextStyle(
                        fontFamily: 'Lato-Regular.ttf',
                        color: Colors.black,
                        fontSize: 12.sp,
                      ),
                    ))
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: HomeCategoriesModel.data.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 16.w,
                    mainAxisSpacing: 24.h,
                  ),
                  itemBuilder: (context, index) => HomeCategoriesWidget(
                      homeCategoriesModel: HomeCategoriesModel.data[index]),
                ),
              ),
              SizedBox(height: 24.h),
              Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: FittedBox(
                  child: Text(
                    'Recommended For you',
                    style:
                        TextStyle(fontSize: 20.sp, fontFamily: 'Lato-Bold.ttf'),
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              SizedBox(
                height: 194.h,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) => HomeProductsWidget(
                            homeProductsModel:
                                HomeProductsModel.recommended[index],
                          ),
                      separatorBuilder: (context, index) =>
                          SizedBox(width: 8.w),
                      itemCount: HomeProductsModel.recommended.length),
                ),
              ),
              SizedBox(height: 24.h),
              Container(
                height: 42.h,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color(0xff1C6E97),
                  Color(0xff408AAF),
                  Color(0xff1C6E97)
                ])),
                child: Padding(
                  padding: EdgeInsets.only(left: 16.w, right: 8.w),
                  child: Row(
                    children: [
                      FittedBox(
                        child: Text(
                          'Check More Products For Office Supplies',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: 'Lato-Regular.ttf',
                              color: Colors.white),
                        ),
                      ),
                      const Spacer(),
                      FittedBox(
                        child: RichText(
                            text: TextSpan(
                          // recognizer: TapGestureRecognizer()
                          //   ..onTap = () => Navigator.pushNamed(
                          //       context, AppRoutes.forgetByEmailScreenRoute),
                          text: 'See all',
                          style: TextStyle(
                            fontFamily: 'Lato-Regular.ttf',
                            fontSize: 10.sp,
                          ),
                        )),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              SizedBox(
                height: 194.h,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) => HomeProductsWidget(
                            homeProductsModel: HomeProductsModel.office[index],
                          ),
                      separatorBuilder: (context, index) =>
                          SizedBox(width: 8.w),
                      itemCount: HomeProductsModel.office.length),
                ),
              ),
              SizedBox(height: 24.h),
              Container(
                height: 42.h,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color(0xff1C6E97),
                  Color(0xff408AAF),
                  Color(0xff1C6E97)
                ])),
                child: Padding(
                  padding: EdgeInsets.only(left: 16.w, right: 8.w),
                  child: Row(
                    children: [
                      FittedBox(
                        child: Text(
                          'Check More Products For School Supplies',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: 'Lato-Regular.ttf',
                              color: Colors.white),
                        ),
                      ),
                      const Spacer(),
                      FittedBox(
                        child: RichText(
                            text: TextSpan(
                          // recognizer: TapGestureRecognizer()
                          //   ..onTap = () => Navigator.pushNamed(
                          //       context, AppRoutes.forgetByEmailScreenRoute),
                          text: 'See all',
                          style: TextStyle(
                            fontFamily: 'Lato-Regular.ttf',
                            fontSize: 10.sp,
                          ),
                        )),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              SizedBox(
                height: 194.h,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) => HomeProductsWidget(
                            homeProductsModel: HomeProductsModel.school[index],
                          ),
                      separatorBuilder: (context, index) =>
                          SizedBox(width: 8.w),
                      itemCount: HomeProductsModel.school.length),
                ),
              ),
              SizedBox(height: 24.h),
              Container(
                height: 42.h,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color(0xff1C6E97),
                  Color(0xff408AAF),
                  Color(0xff1C6E97)
                ])),
                child: Padding(
                  padding: EdgeInsets.only(left: 16.w, right: 8.w),
                  child: Row(
                    children: [
                      FittedBox(
                        child: Text(
                          'Check More Products For Papers',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: 'Lato-Regular.ttf',
                              color: Colors.white),
                        ),
                      ),
                      const Spacer(),
                      FittedBox(
                        child: RichText(
                            text: TextSpan(
                          // recognizer: TapGestureRecognizer()
                          //   ..onTap = () => Navigator.pushNamed(
                          //       context, AppRoutes.forgetByEmailScreenRoute),
                          text: 'See all',
                          style: TextStyle(
                            fontFamily: 'Lato-Regular.ttf',
                            fontSize: 10.sp,
                          ),
                        )),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              SizedBox(
                height: 194.h,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) => HomeProductsWidget(
                            homeProductsModel: HomeProductsModel.papers[index],
                          ),
                      separatorBuilder: (context, index) =>
                          SizedBox(width: 8.w),
                      itemCount: HomeProductsModel.papers.length),
                ),
              ),
              SizedBox(height: 24.h),
              Container(
                height: 42.h,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color(0xff1C6E97),
                  Color(0xff408AAF),
                  Color(0xff1C6E97)
                ])),
                child: Padding(
                  padding: EdgeInsets.only(left: 16.w, right: 8.w),
                  child: Row(
                    children: [
                      FittedBox(
                        child: Text(
                          'Check More Products For Pen',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: 'Lato-Regular.ttf',
                              color: Colors.white),
                        ),
                      ),
                      const Spacer(),
                      FittedBox(
                        child: RichText(
                            text: TextSpan(
                          // recognizer: TapGestureRecognizer()
                          //   ..onTap = () => Navigator.pushNamed(
                          //       context, AppRoutes.forgetByEmailScreenRoute),
                          text: 'See all',
                          style: TextStyle(
                            fontFamily: 'Lato-Regular.ttf',
                            fontSize: 10.sp,
                          ),
                        )),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              SizedBox(
                height: 194.h,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) => HomeProductsWidget(
                            homeProductsModel: HomeProductsModel.pen[index],
                          ),
                      separatorBuilder: (context, index) =>
                          SizedBox(width: 8.w),
                      itemCount: HomeProductsModel.pen.length),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
