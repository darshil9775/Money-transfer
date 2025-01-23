import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:money_transfer/Common/extension_sizedbox.dart';
import 'package:money_transfer/Common/extension_textstyle.dart';
import 'package:sizer/sizer.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  List<Map<String, dynamic>> recent = [
    {
      "image": "assets/images/Group 246.png",
      "color": Colors.purple.shade50,
      "name": "Transfer",
      "names": "You have transferred an",
      "sub": "amount \$876 to jasson sterek",
    },
    {
      "image": "assets/images/Group 39 (2).png",
      "color": Colors.blue.shade50,
      "name": "Top up",
      "names": "You have top up an ",
      "sub": "amount \$20 to shoppe pay",
    },
  ];
  List<Map<String, dynamic>> yesterday = [
    {
      "image": "assets/images/Group 123 (1).png",
      "color": Colors.purple.shade50,
      "name": "Shopping",
      "names": "you shop for shoes ",
      "sub": "on Gemolis.com",
    },
    {
      "image": "assets/images/Group 112.png",
      "color": Colors.blue.shade50,
      "name": "Voucher",
      "names": "You pay the electric",
      "sub": "voucher amount \$10 ",
    },
    {
      "image": "assets/images/Grab Logo (PNG-1080p) - Vector69Com 1.png",
      "color": Colors.red.shade50,
      "name": "Grab pay",
      "names": "You pay the Grab pay",
      "sub": "amount \$15",
    },
    {
      "image": "assets/images/Group 111.png",
      "color": Colors.purple.shade50,
      "name": "Game Top up",
      "names": "You pay the Game",
      "sub": "top up amount \$25",
    },
    {
      "image": "assets/images/Group 76.png",
      "color": Colors.green.shade50,
      "name": "Add card",
      "names": "You have add card stela",
      "sub": "bank",
    },
  ];
  int select = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 4.h, left: 5.w),
            child: Row(
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
                20.w.addWSpace(),
                "Notification".appTextStyle(
                  fontSize: 18.sp,
                  color: Color(0xff011A51),
                ),
              ],
            ),
          ),
          2.h.addHSpace(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: "Recent".appTextStyle(
              fontSize: 17.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 20.h,
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: recent.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 5.w),
                      child: Row(
                        children: [
                          Container(
                            height: 6.h,
                            width: 6.h,
                            margin: EdgeInsets.only(top: 1.h, bottom: 1.h),
                            decoration: BoxDecoration(
                              color: recent[index]['color'],
                              image: DecorationImage(
                                  image:
                                      AssetImage("${recent[index]['image']}"),
                                  scale: 0.7),
                              borderRadius: BorderRadius.circular(2.h),
                            ),
                          ),
                          4.w.addWSpace(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  "${recent[index]['name']}".appTextStyle(
                                      color: Colors.redAccent, fontSize: 13.sp),
                                  2.w.addWSpace(),
                                  "${recent[index]['names']}".appTextStyle(
                                      fontSize: 13.sp, color: Colors.grey),
                                ],
                              ),
                              "${recent[index]['sub']}".appTextStyle(
                                  color: Colors.grey, fontSize: 13.sp),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                  ],
                );
              },
            ),
          ),
          3.h.addHSpace(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: "yesterday".appTextStyle(
              fontSize: 17.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 55.h,
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: yesterday.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Divider(),
                    Padding(
                      padding: EdgeInsets.only(left: 5.w),
                      child: Row(
                        children: [
                          Container(
                            height: 6.h,
                            width: 6.h,
                            margin: EdgeInsets.only(top: 1.2.h, bottom: 1.2.h),
                            decoration: BoxDecoration(
                              color: yesterday[index]['color'],
                              image: DecorationImage(
                                  image: AssetImage(
                                      "${yesterday[index]['image']}"),
                                  scale: 0.7),
                              borderRadius: BorderRadius.circular(2.h),
                            ),
                          ),
                          4.w.addWSpace(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  "${yesterday[index]['name']}".appTextStyle(
                                      color: Colors.redAccent, fontSize: 13.sp),
                                  2.w.addWSpace(),
                                  "${yesterday[index]['names']}".appTextStyle(
                                      fontSize: 13.sp, color: Colors.grey),
                                ],
                              ),
                              "${yesterday[index]['sub']}".appTextStyle(
                                  color: Colors.grey, fontSize: 13.sp),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
