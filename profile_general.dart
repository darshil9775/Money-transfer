import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:money_transfer/Common/extension_sizedbox.dart';
import 'package:money_transfer/Common/extension_textstyle.dart';
import 'package:sizer/sizer.dart';

class ProfileGeneral extends StatefulWidget {
  const ProfileGeneral({super.key});

  @override
  State<ProfileGeneral> createState() => _ProfileGeneralState();
}

class _ProfileGeneralState extends State<ProfileGeneral> {
  List<Map<String, dynamic>> general = [
    {
      "image": "assets/images/Security.png",
      "name": "Security",
      "names": "Your Password Account",
    },
    {
      "image": "assets/images/help.png",
      "name": "Help",
      "names": "Need More Help",
    },
    {
      "image": "assets/images/privacy policy.png",
      "name": "Privacy policy",
      "names": "Your Password Account",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 5.w, top: 4.h, right: 5.w),
        child: Column(
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
                27.w.addWSpace(),
                "Profile".appTextStyle(
                  fontSize: 18.sp,
                  color: Color(0xff011A51),
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
            4.h.addHSpace(),
            Image.asset(
              "assets/images/Group 271.png",
              scale: 0.5,
            ),
            2.h.addHSpace(),
            "Rene Wells".appTextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
            ),
            "Roday43@gmail.com".appTextStyle(
              color: Colors.grey,
              fontSize: 10.sp,
            ),
            4.h.addHSpace(),
            Container(
              height: 9.5.h,
              width: 77.w,
              decoration: BoxDecoration(
                color: Color(0xffFB847C),
                borderRadius: BorderRadius.circular(1.h),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      "Income"
                          .appTextStyle(color: Colors.white54, fontSize: 13.sp),
                      "\$3460".appTextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 13.sp),
                    ],
                  ),
                  SizedBox(
                    child: VerticalDivider(
                      color: Colors.white54,
                      indent: 5.w,
                      endIndent: 5.w,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Outcome"
                          .appTextStyle(color: Colors.white54, fontSize: 13.sp),
                      "\$2500".appTextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 13.sp),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 6.h, right: 65.w),
              child: "General".appTextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: 9.5.h,
                        width: 85.w,
                        margin: EdgeInsets.only(top: 1.h, bottom: 1.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.h),
                          border: Border.all(color: Colors.grey.shade400),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(right: 5.w, left: 4.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                "${general[index]['image']}",
                                scale: 0.9,
                              ),
                              4.w.addWSpace(),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  "${general[index]['name']}".appTextStyle(
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w500),
                                  "${general[index]['names']}".appTextStyle(
                                      color: Colors.grey, fontSize: 9.sp),
                                ],
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey.shade400,
                                size: 12.sp,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
