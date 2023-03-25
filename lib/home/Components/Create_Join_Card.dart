import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guessgame/Widgets/TextBold.dart';

class Create_Join_Card extends StatelessWidget {
  const Create_Join_Card({Key? key, required this.image, required this.title, required this.height, required this.width, this.onTab}) : super(key: key);

  final String image, title;
  final double height, width;
  final Function()? onTab;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Container(
        height: 144.h,
        width: 167.w,
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
            color: Color(0xff26000000),
            borderRadius: BorderRadius.all(Radius.circular(21.r))),
        child: Container(
          height: 140.h,
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
              color: Color(0xffD1D8FF),
              borderRadius: BorderRadius.all(Radius.circular(18.r))),
          child: Container(
            height: 136.h,
            // padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.all(Radius.circular(15.r))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(image, height: height.h, width: width.w,),
                // SizedBox(height: 5.h,),
                TextBold(text: title, fontWeight: FontWeight.w700, size: 24.sp, color: Color(0xff7954FE))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

