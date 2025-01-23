import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:money_transfer/Common/button.dart';
import 'package:money_transfer/Common/extension_sizedbox.dart';
import 'package:money_transfer/Common/extension_textstyle.dart';
import 'package:money_transfer/Common/text_form_field.dart';
import 'package:sizer/sizer.dart';

import 'balance_profile.dart';
import 'forgot_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();

  final formKey = GlobalKey<FormState>();

  bool isShow = false;
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.w,
            ),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  10.h.addHSpace(),
                  Image.asset(
                    "assets/images/Group 266.png",
                    scale: 0.9,
                  ),
                  3.h.addHSpace(),
                  "Login".appTextStyle(
                    fontSize: 19.sp,
                    color: const Color(0xff011A51),
                    fontWeight: FontWeight.w500,
                  ),
                  1.5.h.addHSpace(),
                  "Set a name for your profile here's".appTextStyle(
                    color: const Color(0xff727E96),
                  ),
                  "the password".appTextStyle(
                    color: Color(0xff727E96),
                  ),
                  10.h.addHSpace(),
                  CommonTextFormField(
                    validator: (value) {
                      bool validName = RegExp("[A-Z,a-z]").hasMatch(value!);
                      if (validName) {
                        return null;
                      } else {
                        return "please enter the valid name";
                      }
                    },
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1.2.h),
                    ),
                    constraints: BoxConstraints.expand(height: 10.h),
                    controller: name,
                    keyboardType: TextInputType.name,
                    TextInputAction: TextInputAction.next,
                    labelText: "Name",
                    labelStyle: const TextStyle(color: Colors.grey),
                    Color: Colors.transparent,
                    obsecure: false,
                    onChanged: (String) {},
                  ),
                  2.h.addHSpace(),
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
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1.2.h),
                    ),
                    constraints: BoxConstraints.expand(height: 10.h),
                    controller: password,
                    keyboardType: TextInputType.visiblePassword,
                    TextInputAction: TextInputAction.done,
                    labelText: "Password",
                    labelStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    Color: Colors.transparent,
                    obsecure: isShow,
                    suffixIcon: IconButton(
                      onPressed: () {
                        isShow = !isShow;
                        setState(() {});
                      },
                      icon: isShow == true
                          ? const Icon(
                              Icons.visibility_off_outlined,
                              color: Colors.black,
                            )
                          : const Icon(
                              Icons.visibility_outlined,
                              color: Colors.black,
                            ),
                    ),
                    onChanged: (String) {},
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkResponse(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ForgotScreen(),
                          ),
                        );
                      },
                      child: "Forgot password?".appTextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  6.h.addHSpace(),
                  CommonElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BalanceProfile(),
                          ),
                        );
                      }
                      name.clear();
                      password.clear();
                    },
                    color: const Color(0xffFB847C),
                    child: "LOGIN".appTextStyle(color: Colors.white),
                  ),
                  3.h.addHSpace(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      "Don't have an account?".appTextStyle(
                        fontSize: 12.sp,
                      ),
                      " Signup".appTextStyle(
                        decorationColor: const Color(0xffFB847C),
                        color: const Color(0xffFB847C),
                        fontSize: 12.sp,
                        decoration: TextDecoration.underline,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
