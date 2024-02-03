import 'package:e_commerce_app/components/welcome_screen/get_started_container.dart';
import 'package:e_commerce_app/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final mData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: const Color(0XFFF68989),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              width: 595.w,
              height: 414.h,
              bottom: 250.h,
              child: Image.asset(
                'assets/images/dm.png',
                // height: 595.h,
                // width: 414.w,
              ),
            ),
            // SizedBox(
            //   height: 200,
            // ),
            Align(
              alignment: Alignment.bottomCenter,
              child: GetStartedContainer(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const HomePage()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
