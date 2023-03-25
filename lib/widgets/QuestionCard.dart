import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guessgame/Widgets/TextMedium.dart';

class QuestionCard extends StatefulWidget {
  QuestionCard(
      {Key? key, required this.text, required this.image, this.ontab, required this.image2}) : super(key: key);

  final String text, image, image2;
  final void Function()? ontab;

  @override
  State<QuestionCard> createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
  bool value = true;
  bool isTrue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 288.w,
      height: 140.h,
      child: Stack(
        children: [
          Container(
            width: 276.w,
            height: 130.h,
            padding: EdgeInsets.only(top: 10.h),
            decoration: BoxDecoration(
              color: Color(0xffC286FF),
              border: Border.all(width: 3, color: Colors.white),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.r),
                topRight: Radius.circular(10.r),
              ),
            ),
            child: TextMedium(
                text: widget.text,
                fontWeight: FontWeight.w500,
                size: 18.sp,
                color: Colors.white),
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: value
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                            onTap: () {
                              setState(() {
                                isTrue = false;
                                value = false;
                              });
                            },
                            child: Image.asset(
                              widget.image,
                              height: 40.h,
                              width: 40.w,
                            )),
                        SizedBox(
                          width: 5.w,
                        ),
                        InkWell(
                            onTap: () {
                              setState(() {
                                isTrue = true;
                                value = false;
                              });
                            },
                            child: Image.asset(
                              widget.image2,
                              height: 40.h,
                              width: 40.w,
                            )),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        isTrue
                            ? InkWell(
                                onTap: widget.ontab,
                                child: Image.asset(
                                  widget.image2,
                                  height: 40.h,
                                  width: 40.w,
                                ))
                            : InkWell(
                                onTap: widget.ontab,
                                child: Image.asset(
                                  widget.image,
                                  height: 40.h,
                                  width: 40.w,
                                )),
                      ],
                    )),
        ],
      ),
    );
  }
}
