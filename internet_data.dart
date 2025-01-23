import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:money_transfer/Common/extension_sizedbox.dart';
import 'package:money_transfer/Common/extension_textstyle.dart';
import 'package:money_transfer/confirm_internet_data.dart';
import 'package:sizer/sizer.dart';

class InternetData extends StatefulWidget {
  const InternetData({super.key});

  @override
  State<InternetData> createState() => _InternetDataState();
}

class _InternetDataState extends State<InternetData> {
  List<Map<String, dynamic>> package = [
    {
      "color": Colors.deepPurple.shade100,
      "image": "assets/images/Group 123.png",
      "name": "Freedom Internet\n30 Day ",
      "dolor": "10",
      "day": "New 42 GB + Call 2hours + Streaming 5 Gb ,\nActive 30 Day",
    },
    {
      "color": Colors.red.shade100,
      "image": "assets/images/Group 124.png",
      "name": "Freedom Apps Ytube\nNetflix, IG , More ...",
      "dolor": "20",
      "day": "Fun 42 GB + Call 2hours + Streaming 5 Gb ,\nActive 30 Day",
    },
    {
      "color": Colors.blue.shade100,
      "image": "assets/images/Group 125.png",
      "name": "Daily kuota freedom\n2GB/Day",
      "dolor": "25",
      "day": "Total 42 GB + Call 2hours + Streaming 5 Gb ,\nActive 30 Day",
    },
  ];
  var add;
  var amount;
  int select = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 35.5.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff011A51),
                ),
                child: Column(
                  children: [
                    4.h.addHSpace(),
                    "Internet Data".appTextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.sp,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 9.h,
                left: 5.w,
                child: Container(
                  height: 29.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
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
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11.sp),
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
                        0.5.h.addHSpace(),
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
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.w, top: 4.h, right: 6.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "Choose Package"
                    .appTextStyle(fontWeight: FontWeight.w500, fontSize: 15.sp),
                ListView.builder(
                  itemCount: 3,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ConfirmInternetData(
                              added: add.toString(),
                              amounted: amount.toString(),
                            ),
                          ),
                        );
                        add = package[index]['name'];
                        amount = package[index]['dolor'];
                        select = index;
                        setState(() {});
                      },
                      child: Container(
                        height: 15.5.h,
                        margin: EdgeInsets.only(bottom: 1.7.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.h),
                          border: Border.all(
                              width: 2,
                              color: select == index
                                  ? Color(0xffFF897E)
                                  : Colors.grey.shade400),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 1.4.h,
                                left: 5.w,
                                right: 5.w,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 4.5.h,
                                    width: 4.5.h,
                                    decoration: BoxDecoration(
                                      color: package[index]['color'],
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset(
                                      "${package[index]['image']}",
                                      scale: 1,
                                    ),
                                  ),
                                  4.w.addWSpace(),
                                  "${package[index]['name']}".appTextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10.sp),
                                  Spacer(),
                                  5.w.addWSpace(),
                                  "\$${package[index]['dolor']}".appTextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.sp),
                                ],
                              ),
                            ),
                            2.h.addHSpace(),
                            DottedLine(
                              dashColor: Colors.grey,
                              lineThickness: 1,
                              dashLength: 5,
                              dashGapLength: 5,
                            ),
                            1.h.addHSpace(),
                            Padding(
                              padding: EdgeInsets.only(left: 5.w),
                              child: "${package[index]['day']}".appTextStyle(
                                  color: Colors.grey.shade600, fontSize: 9.sp),
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
        ],
      ),
    );
  }
}
