import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guessgame/Widgets/TextSemiBold.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {Key? key,
      required this.color1,
      required this.color2,
      required this.color3, this.onTab, required this.title})
      : super(key: key);

  final Color color1, color2, color3;
  final void Function()? onTab;
  final String title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Container(
          width: 113.w,
          height: 64.h,
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
              color: Color(0xff26000000),
              borderRadius: BorderRadius.all(Radius.circular(31.r))),
          child: Container(
            height: 60.h,
            width: 113.w,
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(31.r))),
            child: Padding(
              padding: EdgeInsets.all(3.0),
              child: Container(
                // height: 54.h,
                // width: 106.w,
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                    color: color1,
                    borderRadius: BorderRadius.all(Radius.circular(31.r))),
                child: Container(
                  height: 48.h,
                  width: 105.w,
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        // Where the linear gradient begins and ends
                        begin: Alignment.topRight,
                        end: Alignment(0, 0),
                        tileMode: TileMode.repeated,
                        // repeats the gradient over the canvas
                        colors: [color2, color3],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(31.r))),
                  child: TextSemiBold(
                    text: title,
                    fontWeight: FontWeight.w600,
                    size: 19,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
