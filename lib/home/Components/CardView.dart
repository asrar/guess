import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guessgame/Widgets/TextBold.dart';
import 'package:guessgame/Widgets/TextMedium.dart';

import '../../Widgets/ButtonWidget.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key, required this.id, this.onTap}) : super(key: key);

  final String id;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 208.h,
      width: 368.w,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
          color: Color(0xff26000000),
          borderRadius: BorderRadius.all(Radius.circular(21.r))),
      child: Container(
        height: 204.h,
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
            color: Color(0xffD1D8FF),
            borderRadius: BorderRadius.all(Radius.circular(18.r))),
        child: Container(
          height: 200.h,
          padding: EdgeInsets.all(12.0),
          decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.all(Radius.circular(15.r))),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    // clipBehavior: Clip.none,
                    alignment: AlignmentDirectional.centerEnd,

                    children: [
                      Container(
                        height: 23.h,
                        width: 200.w,

                        padding: EdgeInsets.only(left: 8.w),
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                            color: Color(0xff4CDAFE),
                            borderRadius: BorderRadius.all(Radius.circular(19.r))
                        ),
                        child:  Text('ID# ' + id, textAlign: TextAlign.center, style: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.w500, color: Colors.white,
                            fontFamily: 'AtmaMedium', letterSpacing: 1
                        ),),
                      ),

                      Container(
                        height: 34.h,
                        width: 34.w,
                        padding: EdgeInsets.all(2.5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          // color: Color(0xff4CDAFE),
                          borderRadius: BorderRadius.all(Radius.circular(19.r))
                      ),
                        child: Container(
                            // padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                color: Color(0xff4CDAFE),
                                // color: Color(0xff4CDAFE),
                                borderRadius: BorderRadius.all(Radius.circular(19.r))
                            ),
                            child: Image.asset('assets/images/send.png', width: 10.w, height: 8.h,)
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 5.h,),
                  TextBold(text: 'New Game', fontWeight: FontWeight.w700, size: 24, color: Color(0xff7954FE)),
                  TextMedium(text: 'Tap to Play', fontWeight: FontWeight.w500, size: 14, color: Color(0xff7954FE)),
                  SizedBox(height: 5.h,),
                  ButtonWidget(color1: Color(0xff4EC307), color2: Color(0xff43D309), color3: Color(0xff67EB00), title: 'Play',
                  onTab: onTap,
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset('assets/images/gift.png', height: 140.h, width: 130.w,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
