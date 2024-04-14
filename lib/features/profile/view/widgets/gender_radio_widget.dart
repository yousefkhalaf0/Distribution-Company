import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../view_mode/profile_cubit.dart';

class CustomRadio extends StatelessWidget {
  CustomRadio({super.key, this.txt, this.image, this.index});
  String? txt;
  String? image;
  int? index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        // width: 76.w,
        height: 30.h,
        child: OutlinedButton(
          onPressed: () {
            ProfileCubit.get(context).changeRadioButton(index!);
          },
          style: ButtonStyle(
            side: MaterialStateProperty.resolveWith<BorderSide>(
                (Set<MaterialState> states) {
              return BorderSide(
                color: (ProfileCubit.get(context).selectedIndex == index)
                    ? const Color(0xff1C6E97)
                    : Colors.grey,
              );
            }),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(image!,
                  color: (ProfileCubit.get(context).selectedIndex == index)
                      ? const Color(0xff1C6E97)
                      : Colors.grey),
              SizedBox(width: 12.w),
              Text(
                txt!,
                style: TextStyle(
                    fontSize: 12.sp,
                    fontFamily: 'Lato-Light.ttf',
                    color: (ProfileCubit.get(context).selectedIndex == index)
                        ? const Color(0xff1C6E97)
                        : Colors.grey),
              ),
            ],
          ),
        ));
  }
}
