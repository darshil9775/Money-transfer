import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:money_transfer/Common/extension_sizedbox.dart';
import 'package:money_transfer/Common/extension_textstyle.dart';
import 'package:money_transfer/wallet_card.dart';
import 'package:sizer/sizer.dart';

class AddNewCards extends StatefulWidget {
  const AddNewCards({super.key});

  @override
  State<AddNewCards> createState() => _AddNewCardsState();
}

class _AddNewCardsState extends State<AddNewCards> {
  final formKey = GlobalKey<FormState>();
  TextEditingController number = TextEditingController();
  TextEditingController date = TextEditingController();
  TextEditingController cvc = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController address = TextEditingController();
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 4.h, left: 4.w),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.keyboard_backspace,
                        size: 25.sp,
                      ),
                    ),
                    17.w.addWSpace(),
                    "Add new cards".appTextStyle(
                      fontSize: 18.sp,
                      color: const Color(0xff011A51),
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
              4.5.h.addHSpace(),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Image.asset("assets/images/Vector (4).png"),
                  Positioned(
                    right: -4.w,
                    child: Image.asset(
                      "assets/images/Group 61 (1).png",
                      scale: 1,
                    ),
                  ),
                  Positioned(
                    top: 2.7.h,
                    left: 3.w,
                    child: Image.asset(
                      "assets/images/Group 296.png",
                      scale: 0.75,
                    ),
                  ),
                  Positioned(
                    top: 10.3.h,
                    left: 20.w,
                    child: Container(
                      height: 1.5.h,
                      width: 1.5.h,
                      decoration: const BoxDecoration(
                          color: Color(0xffFB847C), shape: BoxShape.circle),
                    ),
                  ),
                  Positioned(
                    top: 0.8.h,
                    left: 7.5.w,
                    child: Container(
                      height: 1.5.h,
                      width: 1.5.h,
                      decoration: const BoxDecoration(
                          color: Color(0xff011A51), shape: BoxShape.circle),
                    ),
                  ),
                  Positioned(
                    top: 10.h,
                    left: 2.w,
                    child: Container(
                      height: 1.5.h,
                      width: 1.5.h,
                      decoration: const BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                    ),
                  ),
                ],
              ),
              9.h.addHSpace(),
              TextFormField(
                validator: (value) {
                  bool validNumber = RegExp("[0-9]").hasMatch(value!);
                  if (validNumber) {
                    return null;
                  } else {
                    return "please enter the valid Card number";
                  }
                },
                maxLength: 16,
                controller: number,
                onChanged: (p0) {},
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  counterText: "",
                  labelText: "Card Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(3.h),
                  ),
                  constraints: BoxConstraints.expand(height: 10.h, width: 85.w),
                  labelStyle: TextStyle(color: Colors.grey.shade600),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(3.h),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(3.h),
                  ),
                ),
              ),
              1.5.h.addHSpace(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextFormField(
                    validator: (value) {
                      bool validDate = RegExp("[0-9]").hasMatch(value!);
                      if (validDate) {
                        return null;
                      } else {
                        return "please enter the expire date";
                      }
                    },
                    maxLength: 10,
                    controller: date,
                    onChanged: (p0) {},
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      counterText: "",
                      labelText: "Expire date",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3.h),
                      ),
                      constraints:
                          BoxConstraints.expand(height: 10.h, width: 40.w),
                      labelStyle: TextStyle(color: Colors.grey.shade600),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(3.h),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(3.h),
                      ),
                    ),
                  ),
                  TextFormField(
                    validator: (value) {
                      bool validCVC = RegExp("[0-9]").hasMatch(value!);
                      if (validCVC) {
                        return null;
                      } else {
                        return "please enter the cvc/cvv";
                      }
                    },
                    maxLength: 3,
                    controller: cvc,
                    onChanged: (p0) {},
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      counterText: "",
                      labelText: "CVC/CVV",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3.h),
                      ),
                      constraints:
                          BoxConstraints.expand(height: 10.h, width: 40.w),
                      labelStyle: TextStyle(color: Colors.grey.shade600),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(3.h),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(3.h),
                      ),
                    ),
                  ),
                ],
              ),
              1.5.h.addHSpace(),
              TextFormField(
                validator: (value) {
                  bool validName = RegExp("[a-z]").hasMatch(value!);
                  if (validName) {
                    return null;
                  } else {
                    return "please enter the cvc/cvv";
                  }
                },
                controller: name,
                onChanged: (p0) {},
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: "Cardholder Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(3.h),
                  ),
                  constraints: BoxConstraints.expand(height: 10.h, width: 85.w),
                  labelStyle: TextStyle(color: Colors.grey.shade600),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(3.h),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(3.h),
                  ),
                ),
              ),
              1.5.h.addHSpace(),
              TextFormField(
                validator: (value) {
                  bool validAddress = RegExp("[a-z]").hasMatch(value!);
                  if (validAddress) {
                    return null;
                  } else {
                    return "please enter the address";
                  }
                },
                controller: address,
                onChanged: (p0) {},
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: "Address",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(3.h),
                  ),
                  constraints: BoxConstraints.expand(height: 10.h, width: 85.w),
                  labelStyle: TextStyle(color: Colors.grey.shade600),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(3.h),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(3.h),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 7.5.w),
                child: Row(
                  children: [
                    Checkbox(
                      value: isCheck,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2.h),
                      ),
                      activeColor: Color(0xffFB847C),
                      checkColor: Colors.white,
                      onChanged: (value) {
                        isCheck = !isCheck;
                        setState(() {});
                      },
                    ),
                    "Save card".appTextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              ),
              4.h.addHSpace(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(55.w, 7.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1.h),
                  ),
                  backgroundColor: const Color(0xffFB847C),
                ),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WalletCard(),
                      ),
                    );
                  }
                  number.clear();
                  date.clear();
                  cvc.clear();
                  name.clear();
                  address.clear();
                },
                child: "ADD CARD"
                    .appTextStyle(color: Colors.white, fontSize: 13.sp),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
