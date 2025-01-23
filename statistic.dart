import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:money_transfer/Common/extension_sizedbox.dart';
import 'package:money_transfer/Common/extension_textstyle.dart';
import 'package:sizer/sizer.dart';

class Statistic extends StatefulWidget {
  const Statistic({super.key});

  @override
  State<Statistic> createState() => _StatisticState();
}

class _StatisticState extends State<Statistic> {
  List<Map<String, dynamic>> spendings = [
    {
      "icon": Icons.shopping_bag_outlined,
      "name": "Shopping",
      "dolor": "250.00",
    },
    {
      "icon": Icons.shopping_cart_outlined,
      "name": "Grocery",
      "dolor": "300.00",
    },
  ];
  List diagram = [
    "Day",
    "Week",
    "Month",
    "Years",
  ];
  List day = [
    "Mon",
    "Tues",
    "Wed",
    "Thur",
    "Fri",
    "Sat",
    "Sun",
  ];
  List week = [1, 2, 3, 4];
  List month = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec",
  ];
  List years = [
    "2003",
    "2005",
    "2007",
    "2009",
    "2012",
    "2015",
  ];
  int select = 0;
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 3.w, right: 3.w, top: 4.h),
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
                28.w.addWSpace(),
                "Statistic".appTextStyle(
                    fontSize: 18.sp,
                    color: const Color(0xff011A51),
                    fontWeight: FontWeight.w500),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.w, right: 3.w, top: 2.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "Current Balance "
                    .appTextStyle(color: Colors.grey, fontSize: 11.sp),
                Row(
                  children: [
                    "\$ 7800.50".appTextStyle(
                      fontSize: 15.sp,
                      color: const Color(0xff011A51),
                      fontWeight: FontWeight.w500,
                    ),
                    2.w.addWSpace(),
                    Icon(
                      Icons.arrow_downward_sharp,
                      color: const Color(0xffFD6262),
                      size: 10.sp,
                    ),
                    0.5.w.addWSpace(),
                    "5,25%".appTextStyle(
                        color: const Color(0xffFD6262), fontSize: 10.sp),
                  ],
                )
              ],
            ),
          ),
          5.h.addHSpace(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              diagram.length,
              (index) => InkWell(
                onTap: () {
                  select = index;
                  setState(() {});
                },
                child: "${diagram[index]}".appTextStyle(
                  color: select == index ? Color(0xff011A51) : Colors.grey,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          6.h.addHSpace(),
          Image.asset(
            "assets/images/statistic.1.png",
            scale: 0.9,
          ),
          6.h.addHSpace(),
          SizedBox(
            height: 3.h,
            child: select == 0
                ? ListView.builder(
                    itemCount: day.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(left: 4.w, right: 4.w),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                selected = index;
                                setState(() {});
                              },
                              child: "${day[index]}".appTextStyle(
                                  color: selected == index
                                      ? Color(0xffFF897E)
                                      : Colors.grey,
                                  fontSize: 13.sp),
                            ),
                          ],
                        ),
                      );
                    },
                  )
                : select == 1
                    ? ListView.builder(
                        itemCount: week.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(left: 11.w, right: 11.w),
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    selected = index;
                                    setState(() {});
                                  },
                                  child: "${week[index]}".appTextStyle(
                                      color: selected == index
                                          ? Color(0xffFF897E)
                                          : Colors.grey,
                                      fontSize: 13.sp),
                                ),
                              ],
                            ),
                          );
                        },
                      )
                    : select == 2
                        ? ListView.builder(
                            itemCount: month.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(left: 4.w, right: 4.w),
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        selected = index;
                                        setState(() {});
                                      },
                                      child: "${month[index]}".appTextStyle(
                                          color: selected == index
                                              ? Color(0xffFF897E)
                                              : Colors.grey,
                                          fontSize: 13.sp),
                                    ),
                                  ],
                                ),
                              );
                            },
                          )
                        : ListView.builder(
                            itemCount: years.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(left: 4.w, right: 4.w),
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        selected = index;
                                        setState(() {});
                                      },
                                      child: "${years[index]}".appTextStyle(
                                          color: selected == index
                                              ? Color(0xffFF897E)
                                              : Colors.grey,
                                          fontSize: 13.sp),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
          ),
          3.h.addHSpace(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 7.h,
                width: 32.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(2.h),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 4.h,
                      width: 4.h,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage("assets/images/Line 20.png"),
                          scale: 0.6,
                        ),
                        color: const Color(0xffFF897E),
                        borderRadius: BorderRadius.circular(1.h),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "Income".appTextStyle(
                            color: Colors.grey.shade700, fontSize: 10.sp),
                        "\$3460".appTextStyle(
                            fontWeight: FontWeight.bold, fontSize: 10.sp),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 7.h,
                width: 32.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(2.h),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 4.h,
                      width: 4.h,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage("assets/images/Line 20 (1).png"),
                          scale: 0.6,
                        ),
                        color: const Color(0xff011A51),
                        borderRadius: BorderRadius.circular(1.h),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "Outcome".appTextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 10.sp,
                        ),
                        "\$2500".appTextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10.sp,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          3.5.h.addHSpace(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "Spendings"
                    .appTextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
                Icon(
                  Icons.more_horiz,
                  color: const Color(0xff578FBE),
                  size: 20.sp,
                )
              ],
            ),
          ),
          SizedBox(
            height: 17.h,
            child: ListView.builder(
              itemCount: 2,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Container(
                      height: 11.h,
                      width: 47.w,
                      margin: const EdgeInsets.only(left: 30),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(2.h),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 2.h),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            3.w.addWSpace(),
                            Container(
                              height: 3.5.h,
                              width: 3.5.h,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                spendings[index]['icon'],
                                size: 13.sp,
                                color: const Color(0xffFF897E),
                              ),
                            ),
                            2.5.w.addWSpace(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                "${spendings[index]['name']}".appTextStyle(
                                    color: Colors.grey.shade500,
                                    fontSize: 11.sp),
                                "\$${spendings[index]['dolor']}".appTextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11.sp),
                              ],
                            ),
                            3.w.addWSpace(),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 4.w,
                                top: 2.h,
                              ),
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Image.asset(
                                    "assets/images/Ellipse 15.png",
                                    scale: 0.88,
                                  ),
                                  Positioned(
                                    left: 1.8.w,
                                    top: 0.9.h,
                                    child: "65%".appTextStyle(fontSize: 7.5.sp),
                                  ),
                                ],
                              ),
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
    );
  }
}
