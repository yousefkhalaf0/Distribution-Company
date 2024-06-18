import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation_project/core/database/local_database/cache.dart';
import '../../../../core/router/routes.dart';
import '../../../../core/utilities/enums.dart';
import '../../../home_layout/view_model/home_layout_cubit.dart';
import '../../model/home_model.dart';
import '../../view_model/home_screen_cubit.dart';
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
          centerTitle: false,
          title: InkWell(
            onTap: () {
              HomeLayoutCubit.get(context).changeIndex(4);
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  child: Image.asset(
                      'assets/images/home/icons8-test-account-48.png'),
                ),
                SizedBox(width: 8.w),
                Text(
                  'Hello, ${MyShared.getString(key: MySharedKeys.name)}',
                  style: TextStyle(
                      fontSize: 16.sp, fontFamily: 'Lato-Regular.ttf'),
                )
              ],
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.wishListScreenRoute);
                },
                icon: SvgPicture.asset('assets/images/icons/heart.svg',
                    height: 22.h, width: 26.w))
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
                        ..onTap = () {
                          HomeLayoutCubit.get(context).changeIndex(1);
                          HomeScreenCubit.get(context).changeCategoryIndex(0);
                        },
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
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      HomeLayoutCubit.get(context).changeIndex(1);
                      HomeScreenCubit.get(context).changeCategoryIndex(index);
                    },
                    child: HomeCategoriesWidget(
                        homeCategoriesModel: HomeCategoriesModel.data[index]),
                  ),
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
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              HomeLayoutCubit.get(context).changeIndex(1);
                              HomeScreenCubit.get(context)
                                  .changeCategoryIndex(1);
                            },
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
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              HomeLayoutCubit.get(context).changeIndex(1);
                              HomeScreenCubit.get(context)
                                  .changeCategoryIndex(0);
                            },
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
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              HomeLayoutCubit.get(context).changeIndex(1);
                              HomeScreenCubit.get(context)
                                  .changeCategoryIndex(2);
                            },
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
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              HomeLayoutCubit.get(context).changeIndex(1);
                              HomeScreenCubit.get(context)
                                  .changeCategoryIndex(4);
                            },
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
