import 'package:flutter/material.dart';
import 'package:money_transfer/Common/extension_sizedbox.dart';
import 'package:money_transfer/Common/extension_textstyle.dart';
import 'package:money_transfer/Common/text_form_field.dart';
import 'package:sizer/sizer.dart';

import 'Common/button.dart';
import 'login_page.dart';

class ResetScreen extends StatefulWidget {
  const ResetScreen({super.key});

  @override
  State<ResetScreen> createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
  final formKey = GlobalKey<FormState>();
  bool isshow = false;
  TextEditingController Npassword = TextEditingController();
  TextEditingController Rpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              4.h.addHSpace(),
              Padding(
                padding: EdgeInsets.only(right: 80.w),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.keyboard_backspace,
                    size: 30.sp,
                  ),
                ),
              ),
              3.h.addHSpace(),
              Padding(
                padding: EdgeInsets.only(left: 8.w),
                child: Image.asset(
                  "assets/images/Group 268.png",
                  scale: 0.7,
                ),
              ),
              4.h.addHSpace(),
              "Reset Password".appTextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
                color: const Color(0xff011A51),
              ),
              2.h.addHSpace(),
              "Set a name for your profile, here's".appTextStyle(
                color: const Color(0xff727E96),
              ),
              "the password".appTextStyle(
                color: const Color(0xff727E96),
              ),
              9.h.addHSpace(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: CommonTextFormField(
                  validator: (value) {
                    bool validNPassword = RegExp(
                            "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}\$")
                        .hasMatch(value!);
                    if (validNPassword) {
                      return null;
                    } else {
                      return "please enter the valid new password";
                    }
                  },
                  border: OutlineInputBorder(),
                  constraints: BoxConstraints.expand(height: 10.h),
                  controller: Npassword,
                  obsecure: isshow,
                  onChanged: (String) {},
                  suffixIcon: IconButton(
                    onPressed: () {
                      isshow = !isshow;
                      setState(() {});
                    },
                    icon: isshow == true
                        ? Icon(Icons.visibility_off_outlined)
                        : Icon(Icons.visibility),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  TextInputAction: TextInputAction.next,
                  Color: Colors.transparent,
                  labelText: "New Password",
                  labelStyle: TextStyle(
                    color: Colors.black54,
                  ),
                ),
              ),
              2.5.h.addHSpace(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: CommonTextFormField(
                  validator: (value) {
                    bool validRPassword = RegExp(
                            "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}\$")
                        .hasMatch(value!);
                    if (validRPassword) {
                      return null;
                    } else {
                      return "please enter the reset password";
                    }
                  },
                  border: OutlineInputBorder(),
                  controller: Rpassword,
                  obsecure: true,
                  onChanged: (String) {},
                  Color: Colors.transparent,
                  keyboardType: TextInputType.visiblePassword,
                  TextInputAction: TextInputAction.done,
                  labelText: "Reset Password",
                  labelStyle: TextStyle(
                    color: Colors.black54,
                  ),
                  constraints: BoxConstraints.expand(height: 10.h),
                ),
              ),
              5.h.addHSpace(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: CommonElevatedButton(
                  color: Color(0xffFB847C),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Center(
                            child: Dialog(
                              insetPadding:
                                  EdgeInsets.symmetric(horizontal: 20),
                              shape: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(3.h),
                              ),
                              child: Container(
                                height: 67.h,
                                width: double.infinity,
                                child: Column(
                                  children: [
                                    10.h.addHSpace(),
                                    "Congratulation, Now you".appTextStyle(
                                      fontSize: 17.sp,
                                      color: const Color(0xff011A51),
                                      fontWeight: FontWeight.w500,
                                    ),
                                    0.3.h.addHSpace(),
                                    "are registered!".appTextStyle(
                                      fontSize: 17.sp,
                                      color: const Color(0xff011A51),
                                      fontWeight: FontWeight.w500,
                                    ),
                                    2.h.addHSpace(),
                                    "start using the app, pay attention\n  to the rules in the application"
                                        .appTextStyle(
                                      color: Colors.grey.shade400,
                                      // fontWeight: FontWeight.w500,
                                    ),
                                    3.h.addHSpace(),
                                    Image.asset(
                                      "assets/images/Group 265.png",
                                      scale: 1.1,
                                    ),
                                    7.h.addHSpace(),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 5.w),
                                      child: CommonElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const LoginPage(),
                                            ),
                                          );
                                        },
                                        color: const Color(0xffEC7C75),
                                        child: "START".appTextStyle(
                                            color: Colors.white,
                                            letterSpacing: 2,
                                            fontSize: 13.sp),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    }
                    // Npassword.clear();
                    // Rpassword.clear();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.circle_outlined,
                        color: Colors.white,
                      ),
                      2.w.addWSpace(),
                      "SUBMITING".appTextStyle(color: Colors.white),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
