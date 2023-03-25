import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextLight extends StatelessWidget {
  const TextLight ({Key? key, required this.text , required this.fontWeight, required this.size, required this.color}) : super(key: key);

  final String text;
  final FontWeight fontWeight;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {

    return Container(
      alignment: Alignment.center,
      child: Text(text, textAlign: TextAlign.center, style: TextStyle(
          fontSize: size.sp, fontWeight: fontWeight, color: color,
          fontFamily: 'AtmaLight', letterSpacing: 1
      ),),
    );
  }
}

