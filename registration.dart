import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:money_transfer/Common/extension_sizedbox.dart';
import 'package:money_transfer/Common/extension_textstyle.dart';
import 'package:money_transfer/enter_code.dart';
import 'package:sizer/sizer.dart';

import 'Common/button.dart';
import 'Common/text_form_field.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final formKey = GlobalKey<FormState>();
  int select = 0;
  final controller = TextEditingController();
  var suffix;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              10.h.addHSpace(),
              "Registration".appTextStyle(
                color: const Color(0xff041D53),
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
              1.h.addHSpace(),
              "Enter your mobile phone number,we will send".appTextStyle(
                color: Colors.black45,
              ),
              "you OTP to verify later.".appTextStyle(
                color: Colors.black45,
              ),
              4.h.addHSpace(),
              Image.asset(
                "assets/images/Group 261.png",
                scale: 0.8,
              ),
              10.h.addHSpace(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: CommonTextFormField(
                  validator: (value) {
                    bool validNumber = RegExp("[0-1]").hasMatch(value!);
                    if (validNumber) {
                      return null;
                    } else {
                      return "invalid mobile number";
                    }
                  },
                  constraints: BoxConstraints.expand(
                    height: 12.h,
                  ),
                  contentPadding: const EdgeInsets.all(20),
                  obsecure: false,
                  counterText: "",
                  controller: controller,
                  onChanged: (value) {
                    if (controller.text.length == 10) {
                      suffix = const Icon(
                        Icons.check_circle,
                        color: Color(0xffFB847C),
                      );
                    } else {
                      suffix = const SizedBox();
                    }
                    setState(() {});
                  },
                  border: const OutlineInputBorder(borderSide: BorderSide()),
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                  prefixIcon: const CountryCodePicker(
                    initialSelection: "भारत",
                    favorite: ["+91", "India"],
                  ),
                  // suffixIcon: suffix,
                  labelText: "Number Phone",
                  labelStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  Color: Colors.transparent,
                ),
              ),
              3.h.addHSpace(),
              CommonElevatedButton(
                color: const Color(0xffFB847C),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    if (controller.text.length == 10) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EnterCode(
                            number: controller.text,
                          ),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("invalid mobile number"),
                        ),
                      );
                    }
                  }
                },
                child: "SEND VIA SMS".appTextStyle(
                    fontSize: 13.sp, color: Colors.white, letterSpacing: 2),
              ),
              2.h.addHSpace(),
              CommonElevatedButton(
                color: const Color(0xff011A51),
                onPressed: () {},
                child: "SEND VIA WHATSAPP".appTextStyle(
                  fontSize: 13.sp,
                  color: Colors.white,
                  letterSpacing: 2,
                ),
              ),
              5.h.addHSpace(),
              "By creating and/or using an account, you".appTextStyle(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  "agree to our ".appTextStyle(),
                  "Terms & Conditions.".appTextStyle(
                    color: const Color(0xffFB847C),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
