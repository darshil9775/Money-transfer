import 'dart:async';
import 'package:flutter/material.dart';
import 'package:money_transfer/Common/button.dart';
import 'package:money_transfer/Common/extension_sizedbox.dart';
import 'package:money_transfer/Common/extension_textstyle.dart';
import 'package:money_transfer/welcome.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:sizer/sizer.dart';

class EnterCode extends StatefulWidget {
  const EnterCode({super.key, required this.number});

  final String number;

  @override
  State<EnterCode> createState() => _EnterCodeState();
}

class _EnterCodeState extends State<EnterCode> {
  int second = 10;
  Future times() async {
    Timer.periodic(
      Duration(seconds: 2),
      (timer) {
        second--;
        if (second == 0) {
          timer.cancel();
        }
        setState(() {});
      },
    );
  }

  Future time() async {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      second--;
      if (second == 0) {
        timer.cancel();
      }
      setState(() {});
    });
  }

  @override
  void initState() {
    times();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            10.h.addHSpace(),
            "Enter Code".appTextStyle(
              color: const Color(0xff041D53),
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
            ),
            1.5.h.addHSpace(),
            "Enter the 4-digit verification sent to".appTextStyle(
              color: Colors.grey,
              fontSize: 12.sp,
            ),
            0.5.h.addHSpace(),
            "+91${widget.number}".appTextStyle(
              color: Colors.grey,
              fontSize: 12.sp,
            ),
            5.h.addHSpace(),
            Image.asset(
              "assets/images/Group 262.png",
            ),
            12.h.addHSpace(),
            OTPTextField(
              length: 4,
              width: MediaQuery.of(context).size.width,
              fieldWidth: 55,
              style: const TextStyle(fontSize: 20),
              textFieldAlignment: MainAxisAlignment.spaceEvenly,
              fieldStyle: FieldStyle.box,
            ),
            3.h.addHSpace(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                "Resend code in".appTextStyle(
                  color: Colors.black54,
                ),
                " $second".appTextStyle(
                  color: const Color(0xffFB847C),
                ),
                "second".appTextStyle(
                  color: Colors.black54,
                ),
              ],
            ),
            second == 0
                ? TextButton(
                    onPressed: () {
                      second = 10;
                      time();
                      setState(() {});
                    },
                    child: "Resend OTP".appTextStyle(
                      color: Colors.black,
                    ),
                  )
                : const SizedBox(),
            5.h.addHSpace(),
            CommonElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WelcomeScreen(),
                  ),
                );
              },
              color: const Color(0xffFB847C),
              child: "CONTINUE".appTextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
