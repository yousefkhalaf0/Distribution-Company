import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../model/profile_model.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key, this.profileModel});
  final ProfileModel? profileModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        leading: SizedBox(
            height: 18.h, child: Image.asset('${profileModel!.iconImage}')),
        title: Text('${profileModel!.title}',
            style: TextStyle(fontSize: 14.sp, fontFamily: 'Lato-Light.ttf')),
        trailing: SizedBox(
            height: 18.h,
            child: Image.asset('assets/images/icons/img_18.png')),
      ),
    );
  }
}
