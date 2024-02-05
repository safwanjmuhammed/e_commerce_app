import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedContainer extends StatelessWidget {
  final Function()? onTap;
  const GetStartedContainer({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.h,
      ),
      child: Container(
        height: 290.h,
        width: 330.w,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(26))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20.h, bottom: 10.h),
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'Quick delivery at \n',
                        style: TextStyle(
                            color: Color(0XFF4F4F4F),
                            fontSize: 31.sp,
                            fontWeight: FontWeight.w600)),
                    TextSpan(
                        text: 'Your  ',
                        style: TextStyle(
                            color: Color(0XFF4F4F4F),
                            fontSize: 31.sp,
                            fontWeight: FontWeight.w600)),
                    TextSpan(
                        text: 'Doorstep',
                        style: TextStyle(
                            color: Color(0XFFF68989),
                            fontSize: 31.sp,
                            fontWeight: FontWeight.w600))
                  ])),
            ),
            Text(
              'Home delivery and onlione reservation\n system for retaurants and cafe',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: const Color(0XFFBDBDBD),
                  fontWeight: FontWeight.w700,
                  fontSize: 13.sp),
            ),
            // Padding(padding: EdgeInsets.only(bottom: 50.h)),
            // SizedBox(height: 25.h),
            GestureDetector(
              onTap: onTap,
              child: Container(
                margin: EdgeInsets.only(top: 25.h, bottom: 10.h),
                alignment: Alignment.center,
                width: 210.w,
                height: 70.h,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        colors: [Color(0XFFF68989), Color(0XFFFE5150)],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight),
                    // color: const Color(
                    //   0XFFF68989,
                    // ),
                    borderRadius: BorderRadius.circular(30)),
                child: Text(
                  'Get Started',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24.sp,
                      color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
