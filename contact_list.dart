import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:money_transfer/Common/extension_sizedbox.dart';
import 'package:money_transfer/Common/extension_textstyle.dart';
import 'package:sizer/sizer.dart';

class ContactList extends StatefulWidget {
  const ContactList({super.key});

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  List<Map<String, dynamic>> recentContact = [
    {
      "image": "assets/images/Mask Group (10).png",
      "name": "Edwardo",
    },
    {
      "image": "assets/images/Mask Group (11).png",
      "name": "Jasson",
    },
    {
      "image": "assets/images/Mask Group (12).png",
      "name": "Kemod",
    },
    {
      "image": "assets/images/Mask Group (13).png",
      "name": "Dasep",
    },
  ];
  List<Map<String, dynamic>> allContact = [
    {
      "color": Colors.indigo.shade50,
      "colors": Colors.indigo,
      "names": "D",
      "name": "Diani Otelanis Teori",
      "number": "+62898023450",
    },
    {
      "color": Colors.purple.shade50,
      "colors": Colors.purple,
      "names": "B",
      "name": "Bahrun ST",
      "number": "+62898023450",
    },
    {
      "color": Colors.cyan.shade50,
      "colors": Colors.cyan,
      "names": "R",
      "name": "Ririn Panjaitan spd",
      "number": "+62898023450",
    },
    {
      "color": Colors.red.shade50,
      "colors": Colors.red,
      "names": "E",
      "name": "Eki Sulungpati Mpd",
      "number": "+62898023450",
    },
    {
      "color": Colors.indigo.shade50,
      "colors": Colors.blue,
      "names": "S",
      "name": "Septiani Destri seulo",
      "number": "+62898023450",
    },
    {
      "color": Colors.indigo.shade50,
      "colors": Colors.blue,
      "names": "N",
      "name": "Nuni Eksitin",
      "number": "+62898023450",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 5.w, top: 4.h),
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
                20.w.addWSpace(),
                "Contact List".appTextStyle(
                    fontSize: 18.sp,
                    color: Color(0xff011A51),
                    fontWeight: FontWeight.w500),
              ],
            ),
            2.h.addHSpace(),
            "Recent Contact".appTextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(
              height: 14.05.h,
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: recentContact.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 4.5.w, right: 4.5.w, top: 3.5.h),
                        child: Row(
                          children: [
                            Image.asset(
                              "${recentContact[index]['image']}",
                              scale: 0.8,
                            ),
                          ],
                        ),
                      ),
                      1.5.h.addHSpace(),
                      "${recentContact[index]['name']}".appTextStyle(
                          fontWeight: FontWeight.w500, fontSize: 11.sp),
                    ],
                  );
                },
              ),
            ),
            3.h.addHSpace(),
            "All contact"
                .appTextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
            Expanded(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 6.h,
                            width: 6.h,
                            margin: EdgeInsets.only(top: 2.h, bottom: 2.h),
                            decoration: BoxDecoration(
                              color: allContact[index]['color'],
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: "${allContact[index]['names']}"
                                  .appTextStyle(
                                      fontSize: 18.sp,
                                      color: allContact[index]['colors'],
                                      fontWeight: FontWeight.w500),
                            ),
                          ),
                          5.w.addWSpace(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              "${allContact[index]['name']}".appTextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 12.sp),
                              "${allContact[index]['number']}"
                                  .appTextStyle(color: Colors.grey),
                            ],
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
