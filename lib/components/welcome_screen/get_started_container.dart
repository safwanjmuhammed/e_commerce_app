import 'package:flutter/material.dart';

class GetStartedContainer extends StatelessWidget {
  final Function()? onTap;
  const GetStartedContainer({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 285,
        width: 344,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(26))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(children: [
                    TextSpan(
                        text: 'Quick delivery at \n',
                        style: TextStyle(
                            color: Color(0XFF4F4F4F),
                            fontSize: 31,
                            fontWeight: FontWeight.w600)),
                    TextSpan(
                        text: 'Your  ',
                        style: TextStyle(
                            color: Color(0XFF4F4F4F),
                            fontSize: 31,
                            fontWeight: FontWeight.w600)),
                    TextSpan(
                        text: 'Doorstep',
                        style: TextStyle(
                            color: Color(0XFFF68989),
                            fontSize: 31,
                            fontWeight: FontWeight.w600))
                  ])),
            ),
            const Text(
              'Home delivery and onlione reservation\n system for retaurants and cafe',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0XFFBDBDBD),
                  fontWeight: FontWeight.w700,
                  fontSize: 13),
            ),
            const SizedBox(height: 25),
            GestureDetector(
              onTap: onTap,
              child: Container(
                alignment: Alignment.center,
                width: 210,
                height: 68,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        colors: [Color(0XFFF68989), Color(0XFFFE5150)],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight),
                    // color: const Color(
                    //   0XFFF68989,
                    // ),
                    borderRadius: BorderRadius.circular(30)),
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
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
