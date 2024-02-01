import 'package:e_commerce_app/constants/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Map<String, dynamic>> foods = [
    {'food name': 'Fast Food', 'image path': 'assets/images/Food_1.png'},
    {'food name': 'Italian', 'image path': 'assets/images/Food_2.png'}
  ];

  @override
  Widget build(BuildContext context) {
    final mData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
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
                      height: 47,
                      width: 47,
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
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                  height: 35,
                  width: 60,
                  child: Text(
                    'Hi Alex',
                    style: TextStyle(
                        color: Color(0XFFEB5757),
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  )),
              const SizedBox(
                height: 35,
                width: 249,
                child: Text(
                  'Find your Delicious Food',
                  style: TextStyle(
                      color: Color(0XFF4F4F4F),
                      fontSize: 21,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: foods.length,
                    itemBuilder: (context, index) {
                      return foodCat(foods[index]['image path'],
                          foods[index]['food name']);
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget foodCat(String imagePath, String foodName) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(255, 217, 214, 214),
                  blurRadius: 10,
                  spreadRadius: 0.2),
            ]),
        child: Image.asset(imagePath),
      ),
      Text(
        foodName,
        style: const TextStyle(
            color: Color(0XFF4F4F4F),
            fontSize: 10,
            fontWeight: FontWeight.w500),
      )
    ],
  );
}
