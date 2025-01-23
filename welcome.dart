import 'package:flutter/material.dart';
import 'package:money_transfer/Common/extension_sizedbox.dart';
import 'package:money_transfer/Common/extension_textstyle.dart';
import 'package:money_transfer/Common/text_form_field.dart';
import 'package:money_transfer/login_page.dart';
import 'package:sizer/sizer.dart';

import 'Common/button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();

  final formKey = GlobalKey<FormState>();

  bool show = false;
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                7.h.addHSpace(),
                "Welcome".appTextStyle(
                  color: const Color(0xff011A51),
                  fontSize: 20.sp,
                ),
                "Set a name for your profile, here's".appTextStyle(
                  color: Colors.grey,
                ),
                "the password".appTextStyle(
                  color: Colors.grey,
                ),
                4.h.addHSpace(),
                Container(
                  height: 15.h,
                  width: 25.h,
                  decoration: const BoxDecoration(
                    color: Color(0xffD8E0F0),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/images/Group 243.png"),
                      scale: 0.1,
                    ),
                  ),
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
                      return "please enter the valid email id";
                    }
                  },
                  controller: email,
                  onChanged: (String) {},
                  keyboardType: TextInputType.emailAddress,
                  border: const OutlineInputBorder(),
                  TextInputAction: TextInputAction.next,
                  Color: Colors.transparent,
                  constraints: BoxConstraints.expand(height: 10.h),
                  obsecure: false,
                  labelText: "Email",
                  labelStyle: const TextStyle(
                    color: Colors.black54,
                  ),
                ),
                3.h.addHSpace(),
                CommonTextFormField(
                  validator: (value) {
                    bool validName = RegExp("[A-Z,a-z]").hasMatch(value!);
                    if (validName) {
                      return null;
                    } else {
                      return "please enter the valid name";
                    }
                  },
                  controller: name,
                  obsecure: false,
                  border: const OutlineInputBorder(),
                  keyboardType: TextInputType.emailAddress,
                  TextInputAction: TextInputAction.next,
                  constraints: BoxConstraints.expand(height: 10.h),
                  // contentPadding: EdgeInsets.only(left: 10, top: 5),
                  Color: Colors.transparent,
                  labelText: "Name",
                  labelStyle: const TextStyle(
                    color: Colors.black54,
                  ),
                  onChanged: (String) {},
                ),
                3.h.addHSpace(),
                CommonTextFormField(
                  validator: (value) {
                    bool validPassword = RegExp(
                            "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}\$")
                        .hasMatch(value!);
                    if (validPassword) {
                      return null;
                    } else {
                      return "please enter the valid password";
                    }
                  },
                  controller: password,
                  border: const OutlineInputBorder(),
                  constraints: BoxConstraints.expand(height: 10.h),
                  // contentPadding: EdgeInsets.only(left: 10, top: 5),
                  onChanged: (String) {},
                  keyboardType: TextInputType.emailAddress,
                  TextInputAction: TextInputAction.done,
                  Color: Colors.transparent,
                  obsecure: show,
                  labelText: "Password",
                  labelStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  suffixIcon: IconButton(
                    icon: show == true
                        ? const Icon(
                            Icons.visibility_off_outlined,
                            color: Colors.black,
                          )
                        : const Icon(
                            Icons.visibility_outlined,
                            color: Colors.black,
                          ),
                    onPressed: () {
                      show = !show;
                      setState(() {});
                    },
                  ),
                ),
                5.h.addHSpace(),
                CommonElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Center(
                            child: Dialog(
                              insetPadding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              shape: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(3.h),
                              ),
                              child: SizedBox(
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
                                      color: Colors.grey.shade500,
                                      // fontWeight: FontWeight.w500,
                                    ),
                                    3.h.addHSpace(),
                                    Image.asset(
                                      "assets/images/Group 265.png",
                                      scale: 0.9,
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
                    // email.clear();
                    // name.clear();
                    // password.clear();
                  },
                  color: const Color(0xffFB847C),
                  child: "CONTINUE".appTextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
