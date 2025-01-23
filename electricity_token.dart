import 'package:flutter/material.dart';
import 'package:money_transfer/Common/extension_sizedbox.dart';
import 'package:money_transfer/Common/extension_textstyle.dart';
import 'package:money_transfer/Common/text_form_field.dart';
import 'package:money_transfer/withdraw.dart';
import 'package:sizer/sizer.dart';

class ElectricityToken extends StatefulWidget {
  const ElectricityToken({super.key});

  @override
  State<ElectricityToken> createState() => _ElectricityTokenState();
}

class _ElectricityTokenState extends State<ElectricityToken> {
  TextEditingController amount = TextEditingController();
  final formkey = GlobalKey<FormState>();
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: Padding(
        padding: EdgeInsets.only(left: 7.w, right: 7.w, top: 7.h),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Container(
                height: 10.h,
                width: 85.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.h),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "Enter Token number".appTextStyle(
                            color: Colors.black54, fontSize: 12.sp),
                        0.5.h.addHSpace(),
                        "***35078".appTextStyle(
                            fontSize: 12.sp,
                            letterSpacing: 5,
                            fontWeight: FontWeight.w500),
                      ],
                    ),
                    3.w.addWSpace(),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1.h),
                          ),
                          minimumSize: Size(20.w, 5.h),
                          backgroundColor: Colors.lightBlue.shade50),
                      onPressed: () {},
                      child: "Check".appTextStyle(
                        color: Color(0xff011A51),
                      ),
                    ),
                  ],
                ),
              ),
              5.h.addHSpace(),
              CommonTextFormField(
                validator: (value) {
                  bool validAmount = RegExp("[0-9]").hasMatch(value!);
                  if (validAmount) {
                    return null;
                  } else {
                    return "please enter valid amount";
                  }
                },
                controller: amount,
                border: OutlineInputBorder(),
                constraints: BoxConstraints.expand(height: 10.h),
                // contentPadding: EdgeInsets.only(left: 10, top: 5),
                onChanged: (String) {},
                keyboardType: TextInputType.number,
                TextInputAction: TextInputAction.done,
                Color: Colors.transparent,
                obsecure: false,
                labelText: "Amount",
                labelStyle: const TextStyle(
                  color: Colors.grey,
                ),
              ),
              35.h.addHSpace(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1.h),
                  ),
                  minimumSize: Size(56.w, 7.h),
                  backgroundColor: Color(0xffFB847C),
                ),
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Withdraw(),
                      ),
                    );
                    amount.clear();
                  }
                },
                child: "Buy".appTextStyle(
                    color: Colors.white, fontSize: 13.sp, letterSpacing: 2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
