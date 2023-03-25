import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guessgame/Widgets/ButtonWidget.dart';
import 'package:guessgame/Widgets/TextMedium.dart';

import '../../Widgets/TextFieldWidget.dart';

class ScoreCard extends StatelessWidget {
  const ScoreCard({Key? key, this.onTab}) : super(key: key);

  final Function()? onTab;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 273.h,
      width: 265.w,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
          color: Color(0xff26000000),
        // color: Colors.green,
          borderRadius: BorderRadius.all(Radius.circular(21.r))),
      child: Container(
        height: 269.h,
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
            color: Color(0xffD1D8FF),
          // color: Colors.red,
            borderRadius: BorderRadius.all(Radius.circular(18.r))),
        child: Container(
          height: 265.h,
          width: 265.w,
          // padding: EdgeInsets.all(12.0),
          decoration: BoxDecoration(
              // color: Color(0xffFFFFFF),
            color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15.r))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextMedium(text: 'Your Score', fontWeight: FontWeight.w500, size: 16, color: Color(0xff60CFFF)),
              Container(
                // height: 40.h,
                width: 172.w,
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 15.w, right: 10.w, bottom: 5.h),
                decoration: BoxDecoration(
                    color: Color(0xffC2FDFF),
                    borderRadius: BorderRadius.all(Radius.circular(20.r))
                ),
                child: TextMedium(text: '1200', fontWeight: FontWeight.w500, size: 23, color: Color(0xff228AED))

              ),
              SizedBox(height: 20.h,),
              ButtonWidget(color1: Color(0xff7031FC),
                color2: Color(0xffAB50F4),
                color3: Color(0xff9A4AFE),
                title: 'Done',
                onTab: onTab,)
            ],
          ),
          ),
        ),
      );
  }
}

