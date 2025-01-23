import 'package:flutter/material.dart';
import 'package:money_transfer/Common/extension_sizedbox.dart';
import 'package:money_transfer/Common/extension_textstyle.dart';
import 'package:money_transfer/add_new_cards.dart';
import 'package:money_transfer/wallet_card.dart';
import 'package:sizer/sizer.dart';

class ScanYourCard extends StatefulWidget {
  const ScanYourCard({super.key});

  @override
  State<ScanYourCard> createState() => _ScanYourCardState();
}

class _ScanYourCardState extends State<ScanYourCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                "Scan your card".appTextStyle(
                  fontSize: 18.sp,
                  color: const Color(0xff011A51),
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ),
          10.h.addHSpace(),
          "Card Number".appTextStyle(
            color: Colors.grey.shade600,
            fontSize: 13.sp,
          ),
          0.5.h.addHSpace(),
          "0045 4768 243 0098".appTextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
            letterSpacing: 3,
          ),
          6.h.addHSpace(),
          Image.asset(
            "assets/images/Group 82.png",
            scale: 0.9,
          ),
          14.h.addHSpace(),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WalletCard(),
                ),
              );
            },
            child: Container(
              height: 7.h,
              width: 15.w,
              decoration: BoxDecoration(
                color: const Color(0xff011A51),
                borderRadius: BorderRadius.circular(3.h),
                image: const DecorationImage(
                    image: AssetImage("assets/images/Group 132.png"),
                    scale: 0.9),
              ),
            ),
          ),
          1.h.addHSpace(),
          "Or".appTextStyle(fontWeight: FontWeight.w500, fontSize: 12.sp),
          2.5.h.addHSpace(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(85.w, 7.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1.h),
              ),
              backgroundColor: const Color(0xffFB847C),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddNewCards(),
                ),
              );
            },
            child: "MANUAL".appTextStyle(
                color: Colors.white, fontSize: 13.sp, letterSpacing: 2),
          ),
        ],
      ),
    );
  }
}
