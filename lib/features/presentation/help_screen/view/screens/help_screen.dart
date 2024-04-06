import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/features/presentation/help_screen/model/help_model.dart';
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
                // Navigator.pushNamedAndRemoveUntil(
                //     context, AppRoutes., (route) => false);
              },
              icon: SizedBox(
                  height: 24.h,
                  child: Image.asset('assets/images/icons/img.png'))),
          title: Text(
            'Help',
            style: TextStyle(fontSize: 24.sp, fontFamily: 'Lato-Regular.ttf'),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  // Navigator.pushNamedAndRemoveUntil(
                  //     context, AppRoutes., (route) => false);
                },
                icon: SizedBox(
                    height: 24.h,
                    child: Image.asset('assets/images/icons/img_5.png'))),
            IconButton(
                onPressed: () {
                  // Navigator.pushNamedAndRemoveUntil(
                  //     context, AppRoutes., (route) => false);
                },
                icon: SizedBox(
                    height: 24.h,
                    child: Image.asset('assets/images/icons/img_4.png')))
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
