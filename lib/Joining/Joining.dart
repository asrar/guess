import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guessgame/MainWidget.dart';
import 'package:guessgame/Widgets/TextSemiBold.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../GameScreen/Guessing.dart';
import '../GameScreen/Host.dart';

class Joining extends StatefulWidget {
  int? id;

  Joining({
    required this.id,
    Key? key,
  }) : super(key: key);

  @override
  State<Joining> createState() => _JoiningState();
}

class _JoiningState extends State<Joining> {
//   () {
//   Navigator.push(context, MaterialPageRoute(builder: (context) => Guessing()));
// }
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      // onTab;
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => widget.id == 0 ? Guessing() : Host()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MainWidget(
        widget: Padding(
      padding: EdgeInsets.only(top: 50.h, left: 20.w, right: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20.h,
          ),
          Image.asset(
            "assets/images/splashlogo.png",
            height: 90.h,
            width: 135.w,
          ),
          SizedBox(
            height: 30.h,
          ),
          Image.asset(
            "assets/images/pick2.png",
            height: 260.h,
            width: 260.w,
          ),
          SizedBox(
            height: 30.h,
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/images/pick1.png",
                    height: 260.h,
                    width: 260.w,
                  )),
              Positioned(
                top: -90.h,
                left: 110.w,
                child: Image.asset(
                  "assets/images/pick.png",
                  height: 150.h,
                  width: 178.w,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 110.h,
          ),
          new LinearPercentIndicator(
            // width: MediaQuery.of(context).size.width - 50,
            animation: true,
            lineHeight: 10.0,
            percent: 1,
            animationDuration: 3000,
            barRadius: Radius.circular(10.r),
            linearStrokeCap: LinearStrokeCap.roundAll,
            progressColor: Color(0xffC286FF),
            backgroundColor: Color(0xff4E19A5),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextSemiBold(
                  text: 'Loading...',
                  fontWeight: FontWeight.w600,
                  size: 16,
                  color: Color(0xffBFBDBD)),
              SizedBox(
                width: 20.w,
              ),
            ],
          )
        ],
      ),
    ));
  }
}
