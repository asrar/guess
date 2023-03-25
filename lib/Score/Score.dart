import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guessgame/MainWidget.dart';
import '../Home/Home.dart';
import 'Components/ScoreCard.dart';

class Score extends StatelessWidget {
  const Score({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainWidget(widget: Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 50.h),
      child: Stack(
        clipBehavior: Clip.none,
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: ScoreCard(
            onTab: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));

            },
          )),
          Positioned(
              top: 170.h,
              left: 26.w,
              child: Image.asset('assets/images/star.png', width: 343.w, height: 185.h,)),

        ],
      ),
    ));
  }
}

