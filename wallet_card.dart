import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:money_transfer/Common/extension_sizedbox.dart';
import 'package:money_transfer/Common/extension_textstyle.dart';
import 'package:money_transfer/scan_your_card.dart';
import 'package:money_transfer/wallet_account.dart';
import 'package:sizer/sizer.dart';

class WalletCard extends StatefulWidget {
  const WalletCard({super.key});

  @override
  State<WalletCard> createState() => _WalletCardState();
}

class _WalletCardState extends State<WalletCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: Padding(
        padding: EdgeInsets.only(left: 5.w, top: 5.h, right: 5.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
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
                28.w.addWSpace(),
                "Wallet".appTextStyle(
                    fontSize: 18.sp,
                    color: Color(0xff011A51),
                    fontWeight: FontWeight.w500),
              ],
            ),
            3.h.addHSpace(),
            Image.asset(
              "assets/images/18 Card.png",
              scale: 0.85,
            ),
            3.h.addHSpace(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      height: 7.h,
                      width: 38.w,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff347BDE),
                            Color(0xffFB847C),
                          ],
                          stops: [0.001, 0.8],
                        ),
                        borderRadius: BorderRadius.circular(2.h),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.straight,
                            color: Colors.white,
                            size: 30.sp,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              "Income".appTextStyle(
                                  color: Colors.white, fontSize: 12.sp),
                              "\$ 5.455.21".appTextStyle(
                                color: Colors.white,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    3.h.addHSpace(),
                    Container(
                      height: 7.h,
                      width: 38.w,
                      decoration: BoxDecoration(
                        color: Color(0xffFF897E),
                        borderRadius: BorderRadius.circular(2.h),
                      ),
                      child: Row(
                        children: [
                          // 1.w.addWSpace(),
                          RotatedBox(
                            quarterTurns: 2,
                            child: Icon(
                              Icons.straight,
                              color: Colors.white,
                              size: 30.sp,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              "Expenses".appTextStyle(
                                  color: Colors.white, fontSize: 12.sp),
                              "\$ 8.002.55".appTextStyle(
                                color: Colors.white,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WalletAccount(),
                      ),
                    );
                  },
                  child: Container(
                    height: 18.h,
                    width: 42.w,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xff20B4F2),
                        Color(0xff011A51),
                      ]),
                      borderRadius: BorderRadius.circular(2.h),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 5.w, top: 2.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Digital Wallet\nBalance".appTextStyle(
                              color: Colors.white,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500),
                          1.h.addHSpace(),
                          "\$ 16.543.32".appTextStyle(
                            color: Colors.white,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          1.h.addHSpace(),
                          Row(
                            children: [
                              "Withdraw now".appTextStyle(
                                color: Colors.white,
                                fontSize: 11.sp,
                              ),
                              2.w.addWSpace(),
                              RotatedBox(
                                quarterTurns: 1,
                                child: Icon(
                                  Icons.straight,
                                  color: Colors.white,
                                  size: 22.sp,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            4.h.addHSpace(),
            "Analytics".appTextStyle(
              color: Color(0xff011A51),
              fontSize: 16.sp,
            ),
            3.h.addHSpace(),
            Container(
              height: 6.h,
              width: 88.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4.h),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  5.w.addWSpace(),
                  "Bank accounts"
                      .appTextStyle(color: Colors.black45, fontSize: 13.sp),
                  3.w.addWSpace(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(40.w, 5.h),
                        backgroundColor: Color(0xffFF897E)),
                    onPressed: () {},
                    child: "Cards"
                        .appTextStyle(color: Colors.white, fontSize: 13.sp),
                  ),
                ],
              ),
            ),
            6.h.addHSpace(),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(40.w, 7.h),
                  maximumSize: Size(900.w, 7.h),
                  backgroundColor: Color(0xff011A51),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1.h),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ScanYourCard(),
                    ),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.qr_code_scanner,
                      color: Colors.white,
                    ),
                    3.w.addWSpace(),
                    "Scan Card"
                        .appTextStyle(color: Colors.white, fontSize: 15.sp),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
