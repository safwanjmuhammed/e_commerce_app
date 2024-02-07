import 'package:e_commerce_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/Home screen/food_category.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const List<Map<String, dynamic>> foods = [
    {'food name': 'Fast Food', 'image path': 'assets/images/Food_1.png'},
    {'food name': 'Italian', 'image path': 'assets/images/Food_2.png'},
    {'food name': 'Japanese', 'image path': 'assets/images/Food_3.png'},
    {'food name': 'Sea Food', 'image path': 'assets/images/Food_4.png'},
  ];

  @override
  Widget build(BuildContext context) {
    final mData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: Constants.defaultPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/Menu.png'),
                    Container(
                        height: 47.h,
                        width: 55.w,
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromARGB(255, 165, 160, 160),
                                  blurRadius: 14,
                                  spreadRadius: 0,
                                  blurStyle: BlurStyle.normal)
                            ],
                            gradient: LinearGradient(
                                colors: [Constants.pink1, Constants.pink2],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topLeft),
                            shape: BoxShape.circle),
                        child: Image.asset('assets/images/Search.png'))
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                    height: 30.h,
                    width: 60.w,
                    child: Text(
                      'Hi Alex',
                      style: TextStyle(
                          color: const Color(0XFFEB5757),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400),
                    )),
                SizedBox(
                  height: 35.h,
                  width: 249.w,
                  child: Text(
                    'Find your Delicious Food',
                    style: TextStyle(
                        color: const Color(0XFF4F4F4F),
                        fontSize: 21.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20.h)),
                SizedBox(
                  height: 80.h,
                  // width: double.infinity,
                  child: ListView.builder(
                    // shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: foods.length,
                    itemBuilder: (context, index) {
                      return foodCat(foods[index]['image path'],
                          foods[index]['food name']);
                    },
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  'Popular',
                  style: TextStyle(
                      color: const Color(0XFF4F4F4F),
                      fontWeight: FontWeight.w700,
                      fontSize: 21.sp),
                ),
                SizedBox(
                  height: 15.h,
                ),
                SizedBox(
                    height: 280.h,
                    // width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        pizzaContainer(),
                        Padding(padding: EdgeInsets.only(right: 10.w)),
                        pizzaContainer()
                      ],
                    ))

                // SizedBox(
                //   height: double.infinity,
                //   width: double.infinity,
                //   child: ListView.builder(
                //       itemBuilder: (context, index) {
                //         return pizzaContainer();
                //       },
                //       scrollDirection: Axis.horizontal),
                // ),
                ,
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 10.h),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      height: 70.h,
                      width: 70.w,
                      decoration: BoxDecoration(
                          //shape: BoxShape.circle,
                          // color: Colors.white,
                          shape: BoxShape.circle,
                          // borderRadius: BorderRadius.all(Radius.circular(80)),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(255, 165, 160, 160),
                                blurRadius: 20,
                                spreadRadius: 0,
                                blurStyle: BlurStyle.normal)
                          ],
                          gradient: LinearGradient(
                              colors: [Constants.pink1, Constants.pink2],
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight)),
                      child: Text('Menu',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 17.sp,
                              color: Colors.white)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget pizzaContainer() {
  return Container(
      margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 3.w),
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
      height: 272.h,
      width: 172.w,
      decoration: BoxDecoration(
          color: const Color(0XFFFFFFFF),
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(color: Color.fromARGB(255, 165, 160, 160), blurRadius: 3)
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Melting Cheese',
            style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 7.w),
                child: Image.asset('assets/images/fire.png'),
              ),
              Text(
                '44 calories',
                style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0XFFEB5757)),
              ),
            ],
          ),
          Image.asset(
            'assets/images/Pizza_1.png',
            height: 142.h,
            width: 145.w,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 7),
                child: Image.asset('assets/images/dollar.png'),
              ),
              Text('9.47',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0XFF4F4F4F)))
            ],
          ),
          Container(
            height: 20.h,
            width: 20.w,
            decoration: BoxDecoration(
                color: const Color(0XFFFFFFFF),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(2),
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(255, 165, 160, 160), blurRadius: 3)
                ],
                gradient: LinearGradient(
                    colors: [Constants.pink1, Constants.pink2],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight)),
            child: Image.asset(
              'assets/images/Plus.png',
            ),
          )
        ],
      ));
}
