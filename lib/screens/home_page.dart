import 'package:e_commerce_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      body: Container(
        height: mData.size.height,
        width: mData.size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 34, horizontal: 23),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/Menu.png'),
                  Container(
                      height: 47.h,
                      width: 47.w,
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
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Image.asset('assets/images/Search.png'))
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                  height: 35.h,
                  width: 60.w,
                  child: Text(
                    'Hi Alex',
                    style: TextStyle(
                        color: Color(0XFFEB5757),
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400),
                  )),
              SizedBox(
                height: 35.h,
                width: 249.w,
                child: Text(
                  'Find your Delicious Food',
                  style: TextStyle(
                      color: Color(0XFF4F4F4F),
                      fontSize: 21.sp,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 25)),
              SizedBox(
                height: 60.h,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: foods.length,
                  itemBuilder: (context, index) {
                    return foodCat(
                        foods[index]['image path'], foods[index]['food name']);
                  },
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                'Popular',
                style: TextStyle(
                    color: Color(0XFF4F4F4F),
                    fontWeight: FontWeight.w700,
                    fontSize: 21.sp),
              ),
              SizedBox(
                height: 15.h,
              ),
              pizzaContainer()
            ],
          ),
        ),
      ),
    );
  }
}

Widget foodCat(String imagePath, String foodName) {
  return Padding(
    padding: const EdgeInsets.only(right: 25),
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

Widget pizzaContainer() {
  return Container(
      // alignment: Alignment.center,
      height: 272.h,
      width: 162.w,
      decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(color: Color.fromARGB(255, 165, 160, 160), blurRadius: 3)
          ]),
      child: Column(
        children: [
          Text(
            'Melting Cheese',
            style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 7),
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
            height: 142,
            width: 145,
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
          )
        ],
      ));
}
