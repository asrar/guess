import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../Joining/Joining.dart';
import '../MainWidget.dart';
import '../Provider/count_provider.dart';
import '../Provider/count_provider.dart';
import '../Provider/count_provider.dart';
import '../Widgets/ButtonWidget.dart';
import '../Widgets/TextBold.dart';
import '../Widgets/TextFieldWidget.dart';
import '../Widgets/TextMedium.dart';
import 'Components/CardView.dart';
import 'Components/Create_Join_Card.dart';
import 'Components/Invites.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    Timer.periodic(Duration(seconds: 1), (timer) {
      countProvider.setCount();
    });
  }
  
  @override
  Widget build(BuildContext context) {

    // final countProvider = Provider.of<CountProvider>(context, listen: false);
    return MainWidget(
      widget: SingleChildScrollView(
        clipBehavior: Clip.none,
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 50.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30.h,
              ),
              Image.asset('assets/images/homelogo.png', width: 74.w, height: 69.h,),
              Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      "assets/images/splash.png",
                      height: 80.h,
                      width: 175.w,
                    ),
                    // Consumer<CountProvider>(builder: (context, value, child)
                    //     {
                    //       return TextBold(
                    //         text: value.count.toString(),
                    //         fontWeight: FontWeight.w700,
                    //         size: 30,
                    //         color: Colors.white,
                    //       );
                    //     }
                    // )
                TextBold(text: 'Nouman',
                          fontWeight: FontWeight.w700,
                          size: 30,
                          color: Colors.white,
                        )
                  ],
                ),
              ),
        TextMedium(
                text: 'Lets Start Guessing',
                fontWeight: FontWeight.w500,
                size: 16,
                color: Colors.white,
              ),
              SizedBox(
                height: 30.h,
              ),
              CardWidget(
                id: '1544fhf421',
                onTap: () {
                  _Question(context);
                },
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Create_Join_Card(
                    image: 'assets/images/plus.png',
                    title: 'Create',
                    height: 60,
                    width: 56,
                    onTab: (){
                      _CreateLobby(context);
                    },
                  ),
                  Create_Join_Card(
                      image: 'assets/images/join.png',
                      title: 'Join',
                      height: 68,
                      width: 85,
                      onTab: (){
                        _JoinLobby(context);
                      },
                  )
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 15.w,),
                  TextBold(text: 'Invites', fontWeight: FontWeight.w700, size: 24, color: Colors.white),
                ],
              ),
              SizedBox(height: 15.w,),
              Invites(image: 'assets/images/icon.png', title: 'Aida Bug', text: ' Invited you to join the game.',
                  onTab: (){_Invites(context);}),
              SizedBox(height: 15.w,),
              Invites(image: 'assets/images/icon2.png', title: 'Aida Bug2', text: ' Invited you to join the game.',
                  onTab: (){_Invites(context);}),
            ],
          ),
        ),
      ),
    );
  }

  void _CreateLobby(BuildContext context) {
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
                      SizedBox(width: 40.w,),
                      TextBold(text: 'Create Lobby', fontWeight: FontWeight.w700, size: 24, color: Color(0xff7954FE)),
                      SizedBox(width: 30.w,),
                      InkWell(
                          onTap: (){
                            Navigator.of(context).pop();
                          },
                          child: Icon(Icons.cancel, color: Color(0xff7954FE), size: 30,))
                    ],
                  ),
                  SizedBox(height: 30.h,),
                  TextMedium(text: 'Lobby Name', fontWeight: FontWeight.w500, size: 18, color: Color(0xff7954FE)),
                  SizedBox(height: 5.h,),
                  TextFieldWidget(),
                  SizedBox(height: 15.h,),
                  TextMedium(text: 'Lobby ID', fontWeight: FontWeight.w500, size: 18, color: Color(0xff7954FE)),
                  SizedBox(height: 5.h,),
                  Container(
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
                        suffixIcon: Image.asset('assets/images/send.png' ,color: Color(0xff7954FE),),
                      ),

                    ),
                  ),
                  SizedBox(height: 30.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ButtonWidget(
                        color1: Color(0xff7031FC),
                        color2: Color(0xffAB50F4),
                        color3: Color(0xff9A4AFE),
                        title: 'Create',
                      ),
                    ],
                  ),
                ],
              ),
            )));
  }

  void _JoinLobby(BuildContext context) {
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
                      SizedBox(width: 50.w,),
                      TextBold(text: 'Join Lobby', fontWeight: FontWeight.w700, size: 24, color: Color(0xff7954FE)),
                      SizedBox(width: 30.w,),
                      InkWell(
                          onTap: (){
                            Navigator.of(context).pop();
                          },
                          child: Icon(Icons.cancel, color: Color(0xff7954FE), size: 30,))
                    ],
                  ),
                  SizedBox(height: 30.h,),
                  TextMedium(text: 'Lobby ID', fontWeight: FontWeight.w500, size: 18, color: Color(0xff7954FE)),
                  SizedBox(height: 5.h,),
                  TextFieldWidget(),
                  SizedBox(height: 30.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ButtonWidget(
                        color1: Color(0xff7031FC),
                        color2: Color(0xffAB50F4),
                        color3: Color(0xff9A4AFE),
                        title: 'Create',
                      ),
                    ],
                  ),

                ],
              ),
            )));
  }

  void _Invites(BuildContext context) {
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
                      TextBold(text: 'Invite', fontWeight: FontWeight.w700, size: 24, color: Color(0xff7954FE)),
                      SizedBox(width: 30.w,),
                      InkWell(
                          onTap: (){
                            Navigator.of(context).pop();
                          },
                          child: Icon(Icons.cancel, color: Color(0xff7954FE), size: 30,))
                    ],
                  ),
                  SizedBox(height: 30.h,),
                  TextMedium(text: 'Aida Bug Invited to join the game. Do you want to join?', fontWeight: FontWeight.w500, size: 18, color: Color(0xff7954FE)),
                  SizedBox(height: 30.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ButtonWidget(
                        color1: Color(0xff7031FC),
                        color2: Color(0xffAB50F4),
                        color3: Color(0xff9A4AFE),
                        title: 'Decline',
                        onTab: (){
                          Navigator.of(context).pop();
                        },
                      ),
                      SizedBox(width: 15.w,),
                      ButtonWidget(
                        color1: Color(0xff7031FC),
                        color2: Color(0xffAB50F4),
                        color3: Color(0xff9A4AFE),
                        title: 'Join',
                        onTab: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Joining(
                            id: 1,
                          )));
                        },
                      ),
                    ],
                  ),

                ],
              ),
            )));
  }

  void _Question(BuildContext context) {
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
                      SizedBox(width: 40.w,),
                      TextBold(text: 'Ask a Question', fontWeight: FontWeight.w700, size: 24, color: Color(0xff7954FE)),
                      SizedBox(width: 30.w,),
                      InkWell(
                          onTap: (){
                            Navigator.of(context).pop();
                          },
                          child: Icon(Icons.cancel, color: Color(0xff7954FE), size: 30,))
                    ],
                  ),
                  SizedBox(height: 30.h,),
                  TextFieldWidget(),
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
                        title: 'Play',
                        onTab: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Joining(id: 0,)));
                        },
                      ),
                    ],
                  ),

                ],
              ),
            )));
  }
}
