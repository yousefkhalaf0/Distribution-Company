import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../model/profile_model.dart';
import '../widgets/profile_widget.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF8F8F8),
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: IconButton(
                onPressed: () {
                  // Navigator.pushNamedAndRemoveUntil(
                  //     context, AppRoutes., (route) => false);
                },
                icon: SizedBox(
                    height: 24.h,
                    child: Image.asset('assets/images/icons/img.png'))),
            title: Text(
              'Profile',
              style: TextStyle(fontSize: 24.sp, fontFamily: 'Lato-Regular.ttf'),
            )),
        body: Padding(
          padding: EdgeInsets.only(top: 16.h, left: 16.w, right: 16.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text('Hello',
                    style: TextStyle(
                        fontSize: 24.sp, fontFamily: 'Lato-Bold.ttf')),
                subtitle: Text('muhamedali2@gmail.com',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: 'Lato-Light.ttf',
                        color: Colors.black)),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                        height: 14.h,
                        child: Image.asset('assets/images/icons/img_19.png')),
                    SizedBox(width: 4.w),
                    RichText(
                        text: TextSpan(
                            // recognizer: TapGestureRecognizer()
                            //   ..onTap = () => Navigator.pushNamed(
                            //       context, AppRoutes.homeLayoutScreenRoute),
                            text: 'Edit',
                            style: TextStyle(
                              fontFamily: 'Lato-Regular.ttf',
                              color: const Color(0xff1C6E97),
                              fontSize: 12.sp,
                            )))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 32.h),
                child: Container(
                  // width: 396.w,
                  height: 444.h,
                  // height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.r),
                      border: Border.all(color: Colors.black12)),
                  child: ListView.separated(
                      shrinkWrap: true,
                      // physics: const NeverScrollableScrollPhysics(),
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 24.h),
                      itemCount: ProfileModel.data.length,
                      itemBuilder: (context, index) => ProfileWidget(
                            profileModel: ProfileModel.data[index],
                          )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16.h),
                child: RichText(
                    text: TextSpan(
                        // recognizer: TapGestureRecognizer()
                        //   ..onTap = () => Navigator.pushNamed(
                        //       context, AppRoutes.homeLayoutScreenRoute),
                        text: 'LOGOUT',
                        style: TextStyle(
                          fontFamily: 'Lato-Regular.ttf',
                          color: const Color(0xff1C6E97),
                          fontSize: 16.sp,
                        ))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
