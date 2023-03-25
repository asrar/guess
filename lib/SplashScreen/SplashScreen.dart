import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:loading_overlay_pro/loading_overlay_pro.dart';
import '../Home/Home.dart';
import '../Utils/AppColors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  List<Color> Gradient =[
  Color(0xff9C59FE),
  Color(0xff6F53FD),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: AppColors.Gardient(),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Stack(
                children: [
                  Image.asset("assets/images/splash.png", height: 200.h, width: 300.w,),
                  Image.asset("assets/images/splashlogo.png", height: 200.h, width: 300.w,),
                ],
              ),
            ),

            InkWell(
             onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
             },
              child: Container(
                height: 153.h,
                  width: 158.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/splashlogo2.png',), fit: BoxFit.fill
                    )
                  ),
                  child: Text('Start', textAlign: TextAlign.center, style: TextStyle(
                    fontSize: 30.sp, fontWeight: FontWeight.bold, color: Colors.white,
                      fontFamily: 'AtmaBold'
                  ),),
              ),
            )
                // Image.asset('assets/images/splashlogo2.png', width: 158.w, height: 153.h,)),
          ],
        ),
      ),
    );
  }
}

class loading extends StatefulWidget {
  const loading({Key? key}) : super(key: key);

  @override
  State<loading> createState() => _loadingState();
}

class _loadingState extends State<loading> {
  @override
  Widget build(BuildContext context) {
    return LoadingFadingLine.square(
      borderColor: Colors.white,
      borderSize: 4.0,
      size: 120.0,
      backgroundColor: Color(0xffEF4B16),
      duration: Duration(milliseconds: 300),
    );
  }
}
