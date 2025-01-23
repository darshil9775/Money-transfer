import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:money_transfer/Common/extension_sizedbox.dart';
import 'package:money_transfer/Common/extension_textstyle.dart';
import 'package:sizer/sizer.dart';

class WalletAccount extends StatefulWidget {
  const WalletAccount({super.key});

  @override
  State<WalletAccount> createState() => _WalletAccountState();
}

class _WalletAccountState extends State<WalletAccount> {
  List wallet = [
    "assets/images/wallet1.png",
    "assets/images/wallet2.png",
    "assets/images/wallet3.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: 5.w,
            right: 5.w,
            top: 5.h,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.keyboard_backspace,
                      size: 25.sp,
                    ),
                  ),
                  28.w.addWSpace(),
                  "Wallet".appTextStyle(
                      fontSize: 18.sp,
                      color: Color(0xff011A51),
                      fontWeight: FontWeight.w500),
                ],
              ),
              4.h.addHSpace(),
              Container(
                height: 6.5.h,
                width: 85.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(3.h),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    1.w.addWSpace(),
                    "Cards".appTextStyle(
                        color: Colors.grey.shade500, fontSize: 13.sp),
                    3.w.addWSpace(),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(38.w, 5.5.h),
                        backgroundColor: Color(0xffFF897E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1.h),
                        ),
                      ),
                      onPressed: () {},
                      child: "Account"
                          .appTextStyle(color: Colors.black, fontSize: 13.sp),
                    ),
                  ],
                ),
              ),
              6.h.addHSpace(),
              CarouselSlider(
                items: [
                  ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 70.w,
                        height: 10.h,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("${wallet[index]}"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                ],
                options: CarouselOptions(
                  height: 160,
                  viewportFraction: 1,
                ),
              ),
              6.h.addHSpace(),
              TextFormField(
                maxLength: 16,
                onChanged: (p0) {},
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  counterText: "",
                  labelText: "Card Number",
                  constraints: BoxConstraints.expand(height: 7.h, width: 85.w),
                  labelStyle: TextStyle(color: Colors.grey.shade600),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(3.h),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(3.h),
                  ),
                ),
              ),
              4.h.addHSpace(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextFormField(
                    maxLength: 10,
                    onChanged: (p0) {},
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      counterText: "",
                      labelText: "Expire date",
                      constraints:
                          BoxConstraints.expand(height: 7.h, width: 40.w),
                      labelStyle: TextStyle(color: Colors.grey.shade600),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(3.h),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(3.h),
                      ),
                    ),
                  ),
                  TextFormField(
                    maxLength: 3,
                    onChanged: (p0) {},
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      counterText: "",
                      labelText: "CVC/CVV",
                      constraints:
                          BoxConstraints.expand(height: 7.h, width: 40.w),
                      labelStyle: TextStyle(color: Colors.grey.shade600),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(3.h),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(3.h),
                      ),
                    ),
                  ),
                ],
              ),
              4.h.addHSpace(),
              TextFormField(
                onChanged: (p0) {},
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: "Cardholder Name",
                  constraints: BoxConstraints.expand(height: 7.h, width: 85.w),
                  labelStyle: TextStyle(color: Colors.grey.shade600),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(3.h),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(3.h),
                  ),
                ),
              ),
              4.h.addHSpace(),
              TextFormField(
                onChanged: (p0) {},
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.streetAddress,
                decoration: InputDecoration(
                  labelText: "Address",
                  constraints: BoxConstraints.expand(height: 7.h, width: 85.w),
                  labelStyle: TextStyle(color: Colors.grey.shade600),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(3.h),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(3.h),
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
