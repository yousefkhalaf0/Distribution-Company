import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation_project/core/database/local_database/cache.dart';
import 'package:graduation_project/core/utilities/enums.dart';
import '../../../../core/router/routes.dart';
import '../../../home_layout/view_model/home_layout_cubit.dart';
import '../../view_mode/profile_cubit.dart';
import '../widgets/gender_radio_widget.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xffF8F8F8),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
              HomeLayoutCubit.get(context).changeIndex(4);
            },
            icon: SizedBox(
                height: 24.h,
                child: Image.asset('assets/images/icons/img.png'))),
        centerTitle: false,
        title: Text(
          'Profile',
          style: TextStyle(fontSize: 24.sp, fontFamily: 'Lato-Regular.ttf'),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: RichText(
                text: TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Navigator.pushNamed(
                          context, AppRoutes.helpScreenRoute),
                    text: 'Need Help?',
                    style: TextStyle(
                      fontFamily: 'Lato-Regular.ttf',
                      color: const Color(0xff1C6E97),
                      fontSize: 12.sp,
                    ))),
          )
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 32.h, left: 16.w, right: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Image.asset(
                  'assets/images/home/icons8-test-account-48.png', /*height: 38.h,width: 38.w*/
                ),
                title: Text(MyShared.getString(key: MySharedKeys.name),
                    style: TextStyle(
                        fontSize: 16.sp, fontFamily: 'Lato-Bold.ttf')),
                subtitle: Text(MyShared.getString(key: MySharedKeys.email),
                    style: TextStyle(
                        fontSize: 14.sp, fontFamily: 'Lato-Light.ttf')),
              ),
              SizedBox(height: 32.h),
              Center(
                child: Container(
                  height: 421.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.r),
                      border: Border.all(color: Colors.black12)),
                  child: SingleChildScrollView(
                      child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          title: Padding(
                            padding: EdgeInsets.only(bottom: 12.h),
                            child: Text('Email',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontFamily: 'Lato-Regular.ttf')),
                          ),
                          subtitle: Text(
                              MyShared.getString(key: MySharedKeys.email),
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontFamily: 'Lato-Regular.ttf')),
                        ),
                        const Divider(),
                        ListTile(
                          title: Padding(
                            padding: EdgeInsets.only(bottom: 12.h),
                            child: Text('Full Name',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontFamily: 'Lato-Regular.ttf')),
                          ),
                          subtitle: Text(
                              MyShared.getString(key: MySharedKeys.name),
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontFamily: 'Lato-Regular.ttf')),
                          trailing: IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                  'assets/images/icons/icon.svg')),
                        ),
                        const Divider(),
                        // ListTile(
                        //   title: Padding(
                        //     padding: EdgeInsets.only(bottom: 12.h),
                        //     child: Text('Last Name',
                        //         style: TextStyle(
                        //             fontSize: 16.sp,
                        //             fontFamily: 'Lato-Regular.ttf')),
                        //   ),
                        //   subtitle: Text('Last Name',
                        //       style: TextStyle(
                        //           fontSize: 12.sp,
                        //           fontFamily: 'Lato-Regular.ttf')),
                        //   trailing: IconButton(
                        //       onPressed: () {},
                        //       icon: SvgPicture.asset(
                        //           'assets/images/icons/icon.svg')),
                        // ),
                        // const Divider(),
                        ListTile(
                          title: Padding(
                            padding: EdgeInsets.only(bottom: 12.h),
                            child: Text('Phone number',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontFamily: 'Lato-Regular.ttf')),
                          ),
                          subtitle: Text(
                              MyShared.getString(key: MySharedKeys.phoneNumber),
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontFamily: 'Lato-Regular.ttf')),
                          trailing: IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                  'assets/images/icons/icon.svg')),
                        ),
                        const Divider(),
                        ListTile(
                          title: Text('Gender',
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontFamily: 'Lato-Regular.ttf')),
                          trailing: FittedBox(
                            child: BlocBuilder<ProfileCubit, ProfileState>(
                              builder: (context, state) {
                                return Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomRadio(
                                        txt: 'Male',
                                        image:
                                            'assets/images/icons/male_icon.svg',
                                        index: 1),
                                    SizedBox(width: 8.w),
                                    CustomRadio(
                                        txt: 'Female',
                                        image:
                                            'assets/images/icons/female_icon.svg',
                                        index: 2),
                                  ],
                                );
                              },
                            ),
                          ),
                        ),
                        const Divider(),
                        ListTile(
                          title: Text('Nationality',
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontFamily: 'Lato-Regular.ttf')),
                          trailing: RichText(
                              text: TextSpan(
                                  // recognizer: TapGestureRecognizer()
                                  //   ..onTap = () => ,
                                  text: 'Add +',
                                  style: TextStyle(
                                    fontFamily: 'Lato-Regular.ttf',
                                    color: const Color(0xff1C6E97),
                                    fontSize: 12.sp,
                                  ))),
                        ),
                      ],
                    ),
                  )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 32.h),
                child: Container(
                  width: 396.w,
                  height: 56.h,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xff1C6E97),
                        Color(0xff408AAF),
                        Color(0xff1C6E97)
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r)),
                    ),
                    child: FittedBox(
                      child: Text(
                        'Update',
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontFamily: 'Lato',
                            color: const Color(0xffFFFFFF)),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
