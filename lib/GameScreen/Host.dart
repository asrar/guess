import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guessgame/Home/Home.dart';
import 'package:guessgame/MainWidget.dart';
import 'package:guessgame/Widgets/TextSemiBold.dart';

import '../Score/Score.dart';
import '../Widgets/ButtonWidget.dart';
import '../Widgets/HomeNameSettingWidget.dart';
import '../Widgets/QuestionCard.dart';
import '../Widgets/TextBold.dart';
import '../Widgets/TextMedium.dart';

class Host extends StatelessWidget {
  const Host({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainWidget(
        widget: Padding(
          padding: EdgeInsets.only(top: 60.h, left: 25.w, right: 25.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeNameSetting(onTapHome: (){
              _Home(context);
            }, text: 'You,re Host',),
              SizedBox(height: 30.h),
              Container(
                height: 182.h,
                // width: 368.w,
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                    color: Color(0xff26000000),
                    borderRadius: BorderRadius.all(Radius.circular(21.r))),
                child: Container(
                  height: 178.h,
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                      color: Color(0xffD1D8FF),
                      borderRadius: BorderRadius.all(Radius.circular(18.r))),
                  child: Container(
                    height: 174.h,
                    padding: EdgeInsets.only(top: 20.h, left: 12.w, right: 12.w, bottom: 20.h),
                    decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.all(Radius.circular(15.r))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextSemiBold(text: 'Question 2/5:', fontWeight: FontWeight.w600, size: 18, color: Color(0xff7954FE)),
                            TextSemiBold(text: 'Time Left: 45s', fontWeight: FontWeight.w600, size: 18, color: Color(0xff7954FE)),
                          ],
                        ),
                        SizedBox(height: 20.h,),
                        TextSemiBold(text: 'Which Country & City The Faisal Mosque is Located? ', fontWeight: FontWeight.w100, size: 18, color: Color(0xff7954FE)),
                      ],

                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              Padding(
                padding: const EdgeInsets.only(bottom: 0.0),
                child: Container(
                  // color: Colors.black26,
                  height: 550.h,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        QuestionCard(text: 'Faisal Mosque is Located in India? ', image: 'assets/images/red.png', image2: 'assets/images/green.png',),
                        SizedBox(height: 15.h),
                        QuestionCard(text: 'Faisal Mosque is Located in India? ', image: 'assets/images/red.png', image2: 'assets/images/green.png',),
                        SizedBox(height: 15.h),
                        QuestionCard(text: 'Faisal Mosque is Located in India? ', image: 'assets/images/red.png', image2: 'assets/images/green.png',),
                        SizedBox(height: 15.h),
                        QuestionCard(text: 'Faisal Mosque is Located in India? ', image: 'assets/images/red.png', image2: 'assets/images/green.png',),
                        SizedBox(height: 15.h),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
  void _Home(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) => new AlertDialog(
          // clipBehavior: Clip.none,
            backgroundColor: Colors.transparent,
            insetPadding: EdgeInsets.all(1),
            title: Container(
              width: 360.w,
              // alignment: Alignment.center,
              padding: EdgeInsets.only(left: 25.w, right: 25.w, top: 20.h, bottom: 20.h),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.r))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 90.w,),
                      TextBold(text: 'Exit', fontWeight: FontWeight.w700, size: 24, color: Color(0xff7954FE)),
                      SizedBox(width: 30.w,),
                      InkWell(
                          onTap: (){
                            Navigator.of(context).pop();
                          },
                          child: Icon(Icons.cancel, color: Color(0xff7954FE), size: 30,))
                    ],
                  ),
                  SizedBox(height: 30.h,),
                  TextMedium(text: 'Do you really want to exit?', fontWeight: FontWeight.w500, size: 18, color: Color(0xff7954FE)),
                  SizedBox(height: 30.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ButtonWidget(
                        color1: Color(0xff7031FC),
                        color2: Color(0xffAB50F4),
                        color3: Color(0xff9A4AFE),
                        title: 'Cancel',
                        onTab: (){
                          Navigator.of(context).pop();
                        },
                      ),
                      SizedBox(width: 15.w,),
                      ButtonWidget(
                        color1: Color(0xff7031FC),
                        color2: Color(0xffAB50F4),
                        color3: Color(0xff9A4AFE),
                        title: 'Exit',
                        onTab: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                        },
                      ),
                    ],
                  ),

                ],
              ),
            )));
  }

}
