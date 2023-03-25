import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guessgame/Widgets/TextSemiBold.dart';

class HomeNameSetting extends StatelessWidget {
  const HomeNameSetting({Key? key, this.onTapHome, this.onTapSetting, required this.text, }) : super(key: key);

  final void Function()? onTapHome, onTapSetting;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
            onTap: onTapHome,
            child: Image.asset('assets/images/home.png', height: 40.h, width: 40.w,)),
        TextSemiBold(text: text, fontWeight: FontWeight.w600, size: 24, color: Colors.white),
        InkWell(
            onTap: onTapSetting,
            child: Image.asset('assets/images/settings.png', height: 40.h, width: 40.w,)),
      ],
    );
  }
}

