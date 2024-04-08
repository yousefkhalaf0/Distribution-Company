import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../model/help_model.dart';

class HelpWidget extends StatelessWidget {
  const HelpWidget({super.key, this.helpModel});
  final HelpModel? helpModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 396.w,
        // height: 56.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black12),
            borderRadius: BorderRadius.circular(20.r)),
        child: ListTile(
          leading: SizedBox(
              height: 18.h, child: Image.asset('${helpModel!.iconImage}')),
          title: Text('${helpModel!.title}',
              style: TextStyle(fontSize: 14.sp, fontFamily: 'Lato-Light.ttf')),
          trailing: SizedBox(
              height: 18.h,
              child: Image.asset('assets/images/icons/img_18.png')),
        ),
      ),
    );
  }
}
