import 'package:flutter/material.dart';
import 'package:money_transfer/Common/extension_sizedbox.dart';
import 'package:money_transfer/Common/extension_textstyle.dart';
import 'package:sizer/sizer.dart';

class ConfirmInternetData extends StatefulWidget {
  const ConfirmInternetData(
      {super.key, required this.added, required this.amounted});
  final String added;
  final String amounted;

  @override
  State<ConfirmInternetData> createState() => _ConfirmInternetDataState();
}

class _ConfirmInternetDataState extends State<ConfirmInternetData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 4.w, top: 4.h),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.keyboard_backspace,
                      size: 25.sp,
                    ),
                    27.w.addWSpace(),
                    "Internet Data".appTextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.sp,
                    ),
                  ],
                ),
              ),
            ),
            2.h.addHSpace(),
            Center(
              child: Container(
                height: 29.h,
                width: 90.w,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(1.h),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.5.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 3.h),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 6.h,
                              width: 6.h,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/Mask group (5).png"),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 1.h, left: 2.2.w),
                              child: "Lori Bryson".appTextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 11.sp),
                            ),
                            13.w.addWSpace(),
                            Padding(
                              padding: EdgeInsets.only(top: 3.h),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xffFF897E),
                                    minimumSize: Size(20.w, 4.h),
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(0.8.h),
                                    )),
                                onPressed: () {},
                                child: "Buy Package".appTextStyle(
                                    color: Colors.white, fontSize: 11.sp),
                              ),
                            ),
                          ],
                        ),
                      ),
                      "Data".appTextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.w500),
                      "Monthly"
                          .appTextStyle(fontSize: 13.sp, color: Colors.grey),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          "42 GB".appTextStyle(
                              fontSize: 14.sp,
                              color: Color(0xff011A51),
                              fontWeight: FontWeight.w500),
                          "12 GB".appTextStyle(
                              fontSize: 14.sp,
                              color: Color(0xff011A51),
                              fontWeight: FontWeight.w500),
                        ],
                      ),
                      Divider(
                        color: Color(0xff011A51),
                        thickness: 4,
                        endIndent: 11.w,
                      ),
                      "March 21 - April 21,2022"
                          .appTextStyle(color: Colors.grey, fontSize: 12.sp),
                    ],
                  ),
                ),
              ),
            ),
            1.h.addHSpace(),
            Padding(
              padding: EdgeInsets.only(right: 48.w),
              child: "Choose Package".appTextStyle(
                fontSize: 16.sp,
                color: Color(0xff011A51),
                fontWeight: FontWeight.w500,
              ),
            ),
            3.h.addHSpace(),
            "Confirm Internet Data".appTextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
            ),
            3.h.addHSpace(),
            Container(
              height: 9.h,
              width: 85.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.h),
                  border: Border.all(color: Colors.grey)),
              child: TextField(
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15.sp),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 1.h, left: 5.w),
                  labelText: "${widget.added}",
                  labelStyle:
                      TextStyle(fontSize: 14.sp, color: Colors.grey.shade600),
                  border: InputBorder.none,
                ),
              ),
            ),
            3.h.addHSpace(),
            Container(
              height: 9.h,
              width: 85.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.h),
                  border: Border.all(color: Colors.grey)),
              child: TextField(
                keyboardType: TextInputType.number,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15.sp),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 2.5.h, left: 5.w),
                  labelText: "Lori Bryson",
                  labelStyle:
                      TextStyle(fontSize: 14.sp, color: Colors.grey.shade600),
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(right: 5.w, top: 1.5.h),
                    child: Container(
                      height: 5.h,
                      width: 5.h,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        "assets/images/Group 212 (1).png",
                        scale: 0.7,
                      ),
                    ),
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            3.h.addHSpace(),
            Container(
              height: 10.h,
              width: 85.w,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(2.5.h),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 6.w,
                  right: 6.w,
                  top: 1.5.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        "Amount".appTextStyle(
                            color: Colors.grey.shade600, fontSize: 12.sp),
                        "\$${widget.amounted}".appTextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14.sp),
                      ],
                    ),
                    1.h.addHSpace(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        "Fee".appTextStyle(
                            color: Colors.grey.shade600, fontSize: 12.sp),
                        "Free".appTextStyle(fontWeight: FontWeight.bold),
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
                  borderRadius: BorderRadius.circular(1.h),
                ),
                backgroundColor: Color(0xffFB847C),
                minimumSize: Size(45.w, 6.h),
              ),
              onPressed: () {},
              child: "BUY".appTextStyle(
                  color: Colors.white, fontSize: 13.sp, letterSpacing: 2),
            ),
          ],
        ),
      ),
    );
  }
}
