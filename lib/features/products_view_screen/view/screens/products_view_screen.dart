import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/router/routes.dart';
import '../../../categories_screen/model/categories_model.dart';
import '../../../home_layout/view_model/home_layout_cubit.dart';
import '../../model/category_products_model.dart';
import '../../view_model/products_view_cubit.dart';
import '../widgets/products_view_styles_widget.dart';

class ProductsView extends StatefulWidget {
  const ProductsView({super.key, required this.categoriesModel});
  final CategoriesModel categoriesModel;

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  @override
  Widget build(BuildContext context) {
    // CategoriesModel? categoriesModel;
    return SafeArea(child: BlocBuilder<ProductsViewCubit, ProductsViewState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: const Color(0xffF8F8F8),
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: SizedBox(
                    height: 24.h,
                    child: SvgPicture.asset(
                        'assets/images/icons/left_arrow.svg'))),
            centerTitle: false,
            title: Text(
              '${widget.categoriesModel.title}',
              style: TextStyle(fontSize: 20.sp, fontFamily: 'Lato-Regular.ttf'),
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                    HomeLayoutCubit.get(context).changeIndex(3);
                  },
                  icon: SvgPicture.asset('assets/images/icons/search.svg')),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                    HomeLayoutCubit.get(context).changeIndex(2);
                  },
                  icon: SvgPicture.asset('assets/images/icons/cart.svg')),
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                      'assets/images/icons/meatballs_menu.svg'))
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(56.h),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black12)),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          ProductsViewCubit.get(context)
                              .changeProductsViewStyle();
                        },
                        icon: ProductsViewCubit.get(context).isGridView
                            ? SvgPicture.asset(
                                'assets/images/icons/grid_view.svg')
                            : SvgPicture.asset(
                                'assets/images/icons/list_view.svg')),
                    Container(
                        height: 56.h,
                        decoration: BoxDecoration(
                            border:
                                Border.all(width: 0.5, color: Colors.black12))),
                    SizedBox(width: 16.w),
                    DropdownButton<String>(
                      items: ProductsViewCubit.get(context)
                          .items
                          .map((item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(item,
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontFamily: 'Lato-Regular.ttf',
                                        color: Colors.black)),
                              ))
                          .toList(),
                      onChanged: (item) => ProductsViewCubit.get(context)
                          .updateDropdownValue(item!),
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Lato-Regular.ttf',
                          color: Colors.black),
                      value: ProductsViewCubit.get(context).dropdownValue,
                      icon: SvgPicture.asset(
                          'assets/images/icons/down_arrow.svg'),
                      underline: Container(
                        height: 0,
                        color: Colors.transparent,
                      ),
                    )
                  ],
                ),
              ),
            ),
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
          body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              child: ProductsViewCubit.get(context).isGridView
                  ? ListView.separated(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 12.h),
                      itemCount: CategoryProductsModel.stickyNotes.length,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                              context, AppRoutes.productDetailsScreenRoute,
                              arguments:
                                  CategoryProductsModel.stickyNotes[index]);
                        },
                        child: ListViewStyle(
                            categoryProductsModel:
                                CategoryProductsModel.stickyNotes[index]),
                      ),
                    )
                  : GridView.builder(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemCount: CategoryProductsModel.stickyNotes.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16.w,
                        mainAxisSpacing: 16.h,
                      ),
                      itemBuilder: (context, index) => GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, AppRoutes.productDetailsScreenRoute,
                                  arguments:
                                      CategoryProductsModel.stickyNotes[index]);
                            },
                            child: GridViewStyle(
                                categoryProductsModel:
                                    CategoryProductsModel.stickyNotes[index]),
                          ))),
        );
      },
    ));
  }
}
