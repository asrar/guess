import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldWidget extends StatelessWidget {
   TextFieldWidget({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 300.w,
      padding: EdgeInsets.only(left: 15.w, right: 10.w, bottom: 5.h),
      decoration: BoxDecoration(
        color: Color(0xffC2FDFF),
        borderRadius: BorderRadius.all(Radius.circular(20.r))
      ),
      child: TextField(
        textAlign: TextAlign.start,
        decoration: InputDecoration(
            border: InputBorder.none,
         ),

      ),
    );
  }
}

