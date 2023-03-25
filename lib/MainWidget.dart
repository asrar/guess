import 'package:flutter/material.dart';

class MainWidget extends StatelessWidget {
  Widget widget;
  MainWidget({Key? key, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xff9C59FE),
                  Color(0xff6F53FD),
                ])
        ),
        child: widget,
      ),
    );
  }
}
