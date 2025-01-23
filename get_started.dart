import 'package:flutter/material.dart';
import 'package:money_transfer/Common/extension_sizedbox.dart';
import 'package:money_transfer/Common/extension_textstyle.dart';
import 'package:money_transfer/registration.dart';
import 'package:sizer/sizer.dart';

import 'Common/button.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 6.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              15.h.addHSpace(),
              Center(
                child: Image.asset(
                  "assets/images/Group 303.png",
                  scale: 1,
                ),
              ),
              1.h.addHSpace(),
              Center(
                child: "Flowa".appTextStyle(
                    color: const Color(0xff041D53),
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w500),
              ),
              4.h.addHSpace(),
              "Experience the".appTextStyle(
                color: const Color(0xff041D53),
                fontWeight: FontWeight.w500,
                fontSize: 30.sp,
              ),
              Row(
                children: [
                  "easier way".appTextStyle(
                    decorationColor: const Color(
                      0xffFB847C,
                    ),
                    color: const Color(0xffFB847C),
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline,
                  ),
                  3.w.addWSpace(),
                  "for".appTextStyle(
                    color: const Color(0xff041D53),
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
              "transaction!".appTextStyle(
                color: const Color(0xff041D53),
                fontSize: 32.sp,
                fontWeight: FontWeight.w500,
              ),
              "Connect your money to your\n friends & brands.".appTextStyle(
                color: Colors.grey,
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
              ),
              10.h.addHSpace(),
              Center(
                child: CommonElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Registration(),
                      ),
                    );
                  },
                  color: const Color(0xffFB847C),
                  child: "GET  STARTED".appTextStyle(
                    fontSize: 15.sp,
                    letterSpacing: 1.5,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
