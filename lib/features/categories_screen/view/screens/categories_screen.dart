import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/utilities/controllers.dart';
import '../../../home_layout/view_model/home_layout_cubit.dart';
import '../../../home_screen/view_model/home_screen_cubit.dart';
import '../../model/categories_model.dart';
import '../widgets/categories_widget.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 7, vsync: this);
    tabController.animateTo(HomeScreenCubit.get(context).endIndex);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          FittedBox(
            child: Padding(
              padding: EdgeInsets.only(left: 8.w),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Material(
                    elevation: 2,
                    borderRadius: BorderRadius.circular(20.r),
                    child: Container(
                      width: 369.w,
                      // height: 56.h,
                      // padding: EdgeInsets.all(10),
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
                                'assets/images/icons/img_2.png',
                                scale: 2),
                            hintText: 'Search',
                            hintStyle: TextStyle(
                                fontSize: 16.sp, fontFamily: 'Lato-Light.ttf'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () =>
                          HomeLayoutCubit.get(context).changeIndex(2),
                      icon: SizedBox(
                          width: 35.w,
                          height: 35.h,
                          child:
                              SvgPicture.asset('assets/images/icons/cart.svg')))
                ],
              ),
            ),
          ),
          SizedBox(height: 32.h),
          Expanded(
            child: Row(
              children: [
                RotatedTabBarWidget(
                  tabController: tabController,
                ),
                SizedBox(width: 17.w),
                Flexible(
                  child: SizedBox(
                    width: 293.w,
                    child: TabBarView(
                      controller: tabController,
                      children: [
                        generateGridViewWidget(CategoriesModel.school),
                        generateGridViewWidget(CategoriesModel.office),
                        generateGridViewWidget(CategoriesModel.papers),
                        generateGridViewWidget(CategoriesModel.colorsArt),
                        generateGridViewWidget(CategoriesModel.pen),
                        generateGridViewWidget(CategoriesModel.toysGifts),
                        generateGridViewWidget(CategoriesModel.measuring),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
