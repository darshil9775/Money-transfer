import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:money_transfer/Common/extension_sizedbox.dart';
import 'package:money_transfer/Common/extension_textstyle.dart';
import 'package:money_transfer/bottom_navi_bar.dart';
import 'package:money_transfer/electric.dart';
import 'package:money_transfer/manual_verification.dart';
import 'package:sizer/sizer.dart';

import 'Common/button.dart';
import 'balance_profile.dart';
import 'login_page.dart';

class PaymentDetails extends StatefulWidget {
  const PaymentDetails(
      {super.key, required this.amount, required this.type, required this.id});
  final String amount;
  final String type;
  final String id;

  @override
  State<PaymentDetails> createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  List<Map<String, dynamic>> paymentdetails = [];

  @override
  void initState() {
    paymentdetails = [
      {
        "text": "Amount",
        "num": "\$${widget.amount}",
      },
      {
        "text": "Top up Type",
        "num": "${widget.type}",
      },
      {
        "text": "Transaction ID",
        "num": "${widget.id}",
      },
      {
        "text": "Time & Date",
        "num": "01/03/22 , 11:00 AM",
      },
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.w),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.close,
                size: 25.sp,
              ),
            ),
          ),
          Dialog(
            child: Container(
              height: 72.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(2.h),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Column(
                  children: [
                    3.h.addHSpace(),
                    "Payment Details".appTextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0xff011A51),
                        fontSize: 18.sp),
                    5.h.addHSpace(),
                    Column(
                      children: List.generate(
                        paymentdetails.length,
                        (index) => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            "${paymentdetails[index]['text']}".appTextStyle(
                                color: Colors.grey,
                                height: 3.5,
                                fontSize: 10.sp),
                            "${paymentdetails[index]['num']}".appTextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                height: 3.5,
                                fontSize: 10.sp),
                          ],
                        ),
                      ),
                    ),
                    6.h.addHSpace(),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.cyan.shade50,
                        minimumSize: Size(70.w, 8.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                      onPressed: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.white,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(40),
                            ),
                          ),
                          context: context,
                          builder: (context) {
                            return BottomSheetShow();
                          },
                        );
                      },
                      child: "Choose payment methode".appTextStyle(
                          color: Color(0xff011A51), fontSize: 13.sp),
                    ),
                    6.h.addHSpace(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          children: [
                            Image.asset("assets/images/Rectangle 55.png"),
                            Positioned(
                              left: 5,
                              top: 9,
                              child: Image.asset("assets/images/Vector 5.png"),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            "All your transactions are safe and fast,\nBy continuing this transaction, you"
                                .appTextStyle(
                                    color: Colors.grey, fontSize: 9.5.sp),
                            Row(
                              children: [
                                "agree to our ".appTextStyle(
                                    fontSize: 9.5.sp, color: Colors.grey),
                                "Terms & Conditions.".appTextStyle(
                                  fontSize: 9.5.sp,
                                  color: const Color(0xffFB847C),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          2.h.addHSpace(),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffFB847C),
                minimumSize: Size(60.w, 6.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
              onPressed: () {},
              child: "SEND MONEY".appTextStyle(
                  color: Colors.white, letterSpacing: 2, fontSize: 13.sp),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomSheetShow extends StatefulWidget {
  const BottomSheetShow({super.key});

  @override
  State<BottomSheetShow> createState() => _BottomSheetShowState();
}

class _BottomSheetShowState extends State<BottomSheetShow> {
  List<Map<String, dynamic>> bottomSheet = [
    {
      "image": "assets/images/Group 54.png",
      "name": "Transfer Visa",
      "number": "******3298",
    },
    {
      "image": "assets/images/Group 54 (1).png",
      "name": "Transfer Sona Bank",
      "number": "******3298",
    },
    {
      "image": "assets/images/Group 54 (2).png",
      "name": "Transfer Getek Bank",
      "number": "******3298",
    },
    {
      "image": "assets/images/Group 54 (3).png",
      "name": "Transfer Ateul Bank",
      "number": "******3298",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) {
        return SizedBox(
          height: 650,
          width: 500,
          child: Padding(
            padding: EdgeInsets.only(left: 7.w, top: 3.h, right: 7.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    "Choose payment methode".appTextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    Spacer(),
                    InkResponse(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.close),
                    ),
                  ],
                ),
                6.h.addHSpace(),
                "Manual Verification".appTextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13.sp,
                ),
                1.h.addHSpace(),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Dialog(
                                child: Container(
                                  height: 60.h,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xffE5E5E5),
                                    borderRadius: BorderRadius.circular(2.h),
                                  ),
                                  child: Column(
                                    children: [
                                      4.h.addHSpace(),
                                      Stack(
                                        children: [
                                          Image.asset(
                                            "assets/images/Group 60.png",
                                            scale: 0.9,
                                          ),
                                          Positioned(
                                            right: 1.w,
                                            top: 1.h,
                                            child: Image.asset(
                                              "assets/images/Group 61.png",
                                              scale: 0.9,
                                            ),
                                          ),
                                        ],
                                      ),
                                      3.h.addHSpace(),
                                      "Transaction Successful"
                                          .appTextStyle(fontSize: 17.sp),
                                      3.h.addHSpace(),
                                      Text(
                                        textAlign: TextAlign.center,
                                        "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Eu dolor, bibendum\npurus eu mi, purus lorem.",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 11.sp,
                                        ),
                                      ),
                                      7.h.addHSpace(),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xffFB847C),
                                          minimumSize: Size(50.w, 8.h),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(1.h),
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const BottomNaviBar(),
                                            ),
                                          );
                                        },
                                        child: "DONE"
                                            .appTextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      },
                      child: Container(
                        height: 10.h,
                        width: 80.w,
                        margin: EdgeInsets.only(top: 3.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.h),
                          border: Border.all(
                            color: Colors.grey.shade400,
                          ),
                        ),
                        child: Row(
                          children: [
                            4.w.addWSpace(),
                            Image.asset("${bottomSheet[index]['image']}"),
                            5.w.addWSpace(),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                "${bottomSheet[index]['name']}".appTextStyle(),
                                "${bottomSheet[index]['number']}"
                                    .appTextStyle(color: Colors.grey),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
