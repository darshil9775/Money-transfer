import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:money_transfer/Common/extension_sizedbox.dart';
import 'package:money_transfer/Common/extension_textstyle.dart';
import 'package:money_transfer/Common/text_form_field.dart';
import 'package:money_transfer/bottom_navi_bar.dart';
import 'package:money_transfer/electric.dart';
import 'package:sizer/sizer.dart';

class ConfirmWithdraw extends StatefulWidget {
  const ConfirmWithdraw(
      {super.key, required this.amount, required this.account});
  final String amount;
  final String account;

  @override
  State<ConfirmWithdraw> createState() => _ConfirmWithdrawState();
}

class _ConfirmWithdrawState extends State<ConfirmWithdraw> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 3.w, top: 4.h),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.keyboard_backspace,
                        size: 22.sp,
                      ),
                    ),
                    27.w.addWSpace(),
                    "Withdraw".appTextStyle(
                      fontSize: 17.sp,
                      color: Color(0xff011A51),
                    ),
                  ],
                ),
              ),
              4.h.addHSpace(),
              Center(
                child: Image.asset(
                  "assets/images/18 Card.png",
                  scale: 0.9,
                ),
              ),
              2.h.addHSpace(),
              Container(
                height: 61.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(3.h),
                    topLeft: Radius.circular(1.h),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(right: 7.w, left: 7.w, top: 5.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Confirm Withdraw".appTextStyle(fontSize: 14.sp),
                          7.w.addWSpace(),
                          Image.asset(
                            "assets/images/Group 296.png",
                            scale: 0.9,
                          ),
                        ],
                      ),
                      3.h.addHSpace(),
                      CommonTextFormField(
                        border: OutlineInputBorder(),
                        constraints: BoxConstraints.expand(height: 10.h),
                        // contentPadding: EdgeInsets.only(left: 10, top: 5),
                        onChanged: (String) {},
                        keyboardType: TextInputType.number,
                        TextInputAction: TextInputAction.next,
                        Color: Colors.transparent,
                        obsecure: false,
                        labelText: "${widget.amount}",
                        labelStyle: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      1.h.addHSpace(),
                      CommonTextFormField(
                        border: OutlineInputBorder(),
                        constraints: BoxConstraints.expand(height: 10.h),
                        // contentPadding: EdgeInsets.only(left: 10, top: 5),
                        onChanged: (String) {},
                        keyboardType: TextInputType.number,
                        TextInputAction: TextInputAction.done,
                        Color: Colors.transparent,
                        obsecure: false,
                        labelText: "${widget.account}",
                        labelStyle: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      1.h.addHSpace(),
                      Container(
                        height: 10.h,
                        width: 85.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.h),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 6.w,
                            right: 6.w,
                            top: 2.h,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  "Amount".appTextStyle(
                                      color: Colors.grey.shade600,
                                      fontSize: 12.sp),
                                  "\$${widget.amount}".appTextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.sp),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  "Fee".appTextStyle(
                                      color: Colors.grey.shade600,
                                      fontSize: 12.sp),
                                  "Free".appTextStyle(
                                      fontWeight: FontWeight.bold),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      4.h.addHSpace(),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1.5.h),
                          ),
                          minimumSize: Size(60.w, 7.h),
                          backgroundColor: Color(0xffFB847C),
                        ),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return Dialog(
                                  shape: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(2.5.h),
                                    ),
                                  ),
                                  insetPadding: EdgeInsets.zero,
                                  child: Container(
                                    height: 65.h,
                                    width: 100.w,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.circular(2.5.h),
                                    ),
                                    child: Column(
                                      children: [
                                        5.h.addHSpace(),
                                        "Confirm Withdraw".appTextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        5.h.addHSpace(),
                                        Container(
                                          height: 9.h,
                                          width: 85.w,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(2.h),
                                              border: Border.all(
                                                  color: Colors.grey)),
                                          child: TextField(
                                            keyboardType: TextInputType.number,
                                            textInputAction:
                                                TextInputAction.next,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15.sp),
                                            cursorColor: Colors.black,
                                            decoration: InputDecoration(
                                              contentPadding: EdgeInsets.only(
                                                  top: 1.5.h, left: 5.w),
                                              labelText: "${widget.amount}",
                                              labelStyle: TextStyle(
                                                  fontSize: 14.sp,
                                                  color: Colors.grey.shade600),
                                              border: InputBorder.none,
                                            ),
                                          ),
                                        ),
                                        3.h.addHSpace(),
                                        Container(
                                          height: 9.h,
                                          width: 85.w,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(2.h),
                                              border: Border.all(
                                                  color: Colors.grey)),
                                          child: TextField(
                                            keyboardType: TextInputType.number,
                                            textInputAction:
                                                TextInputAction.done,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15.sp),
                                            cursorColor: Colors.black,
                                            decoration: InputDecoration(
                                              contentPadding: EdgeInsets.only(
                                                  top: 1.5.h, left: 5.w),
                                              labelText: "${widget.account}",
                                              suffixIcon: Padding(
                                                padding: EdgeInsets.only(
                                                    top: 2.h, right: 4.w),
                                                child: Image.asset(
                                                  "assets/images/Group 296.png",
                                                  scale: 0.9,
                                                ),
                                              ),
                                              labelStyle: TextStyle(
                                                  fontSize: 14.sp,
                                                  color: Colors.grey.shade600),
                                              border: InputBorder.none,
                                            ),
                                          ),
                                        ),
                                        3.h.addHSpace(),
                                        Container(
                                          height: 10.h,
                                          width: 85.w,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(2.h),
                                            border:
                                                Border.all(color: Colors.grey),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              left: 6.w,
                                              right: 6.w,
                                              top: 2.h,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    "Amount".appTextStyle(
                                                        color: Colors
                                                            .grey.shade600,
                                                        fontSize: 12.sp),
                                                    "\$${widget.amount}"
                                                        .appTextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 14.sp),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    "Fee".appTextStyle(
                                                        color: Colors
                                                            .grey.shade600,
                                                        fontSize: 12.sp),
                                                    "Free".appTextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        5.h.addHSpace(),
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(1.5.h),
                                            ),
                                            minimumSize: Size(60.w, 7.h),
                                            backgroundColor: Color(0xffFB847C),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    BottomNaviBar(),
                                              ),
                                            );
                                          },
                                          child: "WITHDRAW".appTextStyle(
                                            color: Colors.white,
                                            letterSpacing: 4,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          }
                        },
                        child: "WITHDRAW".appTextStyle(
                          color: Colors.white,
                          letterSpacing: 4,
                        ),
                      )
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
