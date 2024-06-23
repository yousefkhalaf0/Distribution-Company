import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../home_layout/view_model/home_layout_cubit.dart';
import '../../model/help_model.dart';
import '../widgets/help_widget.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: SizedBox(
                  height: 24.h,
                  child: Image.asset('assets/images/icons/img.png'))),
          centerTitle: false,
          title: Text(
            'Help',
            style: TextStyle(fontSize: 24.sp, fontFamily: 'Lato-Regular.ttf'),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                  HomeLayoutCubit.get(context).changeIndex(3);
                },
                icon: SizedBox(
                    height: 24.h,
                    child: SvgPicture.asset('assets/images/icons/search.svg'))),
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                  HomeLayoutCubit.get(context).changeIndex(2);
                },
                icon: SizedBox(
                    height: 24.h,
                    child: SvgPicture.asset('assets/images/icons/cart.svg')))
          ],
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 34.h, right: 16.w, left: 16.w),
          child: SizedBox(
            height: 500.h,
            child: ListView.separated(
                shrinkWrap: true,
                // physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) => SizedBox(height: 16.h),
                itemCount: HelpModel.data.length,
                itemBuilder: (context, index) => HelpWidget(
                      helpModel: HelpModel.data[index],
                    )),
          ),
        ),
      ),
    );
  }
}
