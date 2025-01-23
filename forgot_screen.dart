import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:money_transfer/Common/button.dart';
import 'package:money_transfer/Common/extension_sizedbox.dart';
import 'package:money_transfer/Common/extension_textstyle.dart';
import 'package:money_transfer/Common/text_form_field.dart';
import 'package:money_transfer/reset_screen.dart';
import 'package:sizer/sizer.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  TextEditingController email = TextEditingController();
  final formkey = GlobalKey<FormState>();
  int select = 0;
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 5.h, right: 80.w),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.keyboard_backspace,
                    size: 30.sp,
                  ),
                ),
              ),
              2.h.addHSpace(),
              Center(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Image.asset(
                      "assets/images/Ellipse 95.png",
                      scale: 0.85,
                    ),
                    Positioned(
                      top: 15,
                      left: 25,
                      child: Container(
                        height: 2.h,
                        width: 2.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 35,
                      left: 10,
                      child: Container(
                        height: 5.h,
                        width: 5.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffFB847C),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 15,
                      right: -30,
                      child: Image.asset(
                        "assets/images/forgot_password.png",
                      ),
                    ),
                    Positioned(
                      bottom: 5,
                      left: 33,
                      child: Container(
                        height: 2.h,
                        width: 2.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff011A51),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              5.h.addHSpace(),
              "Forgot Password".appTextStyle(
                color: Color(0xff011A51),
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
              1.h.addHSpace(),
              "set a name for your profile, here's".appTextStyle(
                color: Color(0xff727E96),
              ),
              "the password".appTextStyle(
                color: Color(0xff727E96),
              ),
              10.h.addHSpace(),
              CommonTextFormField(
                validator: (value) {
                  bool validEmail = RegExp(
                          "^[a-zA-Z0-9.!#\$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*\$")
                      .hasMatch(value!);
                  if (validEmail) {
                    return null;
                  } else {
                    return "please enter the valid emial id";
                  }
                },
                constraints: BoxConstraints.expand(height: 10.h, width: 85.w),
                border: OutlineInputBorder(),
                controller: email,
                keyboardType: TextInputType.emailAddress,
                TextInputAction: TextInputAction.done,
                Color: Colors.transparent,
                labelText: "Email ID",
                labelStyle: TextStyle(color: Colors.grey),
                obsecure: false,
                onChanged: (String) {},
              ),
              7.h.addHSpace(),
              CommonElevatedButton(
                child: "Next".appTextStyle(
                  color: Colors.white,
                  fontSize: 15.sp,
                ),
                color: Color(0xffFB847C),
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResetScreen(),
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
