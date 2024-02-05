import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget foodCat(String imagePath, String foodName) {
  return Padding(
    padding: EdgeInsets.only(
      right: 25.w,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          // height: 50.h,
          // width: 50.w,
          decoration: const BoxDecoration(
              // color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(5)),
              boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(255, 165, 160, 160),
                    blurRadius: 20,
                    spreadRadius: 0,
                    blurStyle: BlurStyle.normal)
              ]),
          child: Image.asset(
            imagePath,
            height: 45.h,
            width: 45.w,
          ),
        ),
        Text(
          foodName,
          style: TextStyle(
              color: const Color(0XFF4F4F4F),
              fontSize: 10.sp,
              fontWeight: FontWeight.w500),
        )
      ],
    ),
  );
}
