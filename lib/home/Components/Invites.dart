import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guessgame/Widgets/TextLight.dart';

import '../../Widgets/TextBold.dart';

class Invites extends StatelessWidget {
  const Invites({Key? key, required this.image, required this.title, required this.text, this.onTab}) : super(key: key);

  final String image, title, text;
  final Function()? onTab;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Container(
        height: 68.h,
        width: 370.w,
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
            color: Color(0xff26000000),
            borderRadius: BorderRadius.all(Radius.circular(21.r))),
        child: Container(
          height: 64.h,
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
              color: Color(0xffD1D8FF),
              borderRadius: BorderRadius.all(Radius.circular(18.r))),
          child: Container(
            height: 60.h,
            padding: EdgeInsets.only(left: 10.w, right: 10.w),
            decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.all(Radius.circular(15.r))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(image, height: 37.h, width: 37.w,),
                // SizedBox(height: 5.h,),
                TextBold(text: title, fontWeight: FontWeight.w700, size: 14.sp, color: Color(0xff7954FE)),
                TextLight(text: text, fontWeight: FontWeight.w500, size: 14.sp, color: Color(0xff7954FE)),
                Image.asset('assets/images/right.png', height: 37.h, width: 37.w,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

