import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/router/routes.dart';
import '../../model/profile_model.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key, this.profileModel, this.index});
  final ProfileModel? profileModel;
  final int? index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        switch (index) {
          // case 0:
          //   Navigator.pushNamed(context, AppRoutes.);
          //   break;
          // case 1:
          //   Navigator.pushNamed(context, AppRoutes.);
          //   break;
          case 2:
            Navigator.pushNamed(context, AppRoutes.wishListScreenRoute);
            break;
          // case 3:
          //   Navigator.pushNamed(context, AppRoutes.);
          //   break;
          case 4:
            Navigator.pushNamed(context, AppRoutes.editProfileScreenRoute);
            break;
          // case 5:
          //   Navigator.pushNamed(context, AppRoutes.);
          //   break;
          // case 6:
          //   Navigator.pushNamed(context, AppRoutes.);
          //   break;
          // case 7:
          //   Navigator.pushNamed(context, AppRoutes.);
          //   break;
          // case 8:
          //   Navigator.pushNamed(context, AppRoutes.);
          //   break;
          // case 9:
          //   Navigator.pushNamed(context, AppRoutes.);
          //   break;
        }
      },
      child: ListTile(
        leading: SizedBox(
            height: 18.h, child: Image.asset('${profileModel!.iconImage}')),
        title: Text('${profileModel!.title}',
            style: TextStyle(fontSize: 14.sp, fontFamily: 'Lato-Light.ttf')),
        trailing: SizedBox(
            height: 18.h, child: Image.asset('assets/images/icons/img_18.png')),
      ),
    );
  }
}
