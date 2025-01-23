import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:money_transfer/Common/extension_sizedbox.dart';
import 'package:money_transfer/Common/extension_textstyle.dart';
import 'package:money_transfer/add_new_cards.dart';
import 'package:money_transfer/contact_list.dart';
import 'package:money_transfer/electricity_screen.dart';
import 'package:money_transfer/internet_data.dart';
import 'package:money_transfer/notification.dart';
import 'package:money_transfer/withdraw.dart';
import 'package:sizer/sizer.dart';

class Electric extends StatefulWidget {
  const Electric({super.key});

  @override
  State<Electric> createState() => _ElectricState();
}

class _ElectricState extends State<Electric> {
  List<Map<String, dynamic>> balance = [
    {
      "image": "assets/images/Group 8.png",
      "name": "Transfer",
    },
    {
      "image": "assets/images/Group 7.png",
      "name": "Withdraw",
    },
    {
      "image": "assets/images/Group 39 (1).png",
      "name": "Top up",
    },
    {
      "image": "assets/images/Mask group.png",
      "name": "Deposit",
    },
  ];
  List<Map<String, dynamic>> service = [
    {
      "color": Colors.pink.shade50,
      "name": "Electric",
      "image": "assets/images/electric.2.png",
    },
    {
      "color": Colors.purple.shade50,
      "name": "Merchant",
      "image": "assets/images/Merchant.png",
    },
    {
      "color": Colors.blue.shade50,
      "name": "Internet",
      "image": "assets/images/Internet.png",
    },
    {
      "color": Colors.yellow.shade100,
      "name": "Ticket",
      "image": "assets/images/Ticket.png",
    },
    {
      "color": Colors.red.shade50,
      "name": "Mobile",
      "image": "assets/images/Mobile.png",
    },
    {
      "color": Colors.indigo.shade50,
      "name": "Transfer",
      "image": "assets/images/Transfer.png",
    },
    {
      "color": Colors.red.shade50,
      "name": "More",
      "image": "assets/images/more.png",
    },
  ];
  List screen = [
    Center(child: const Text("transfer")),
    const Withdraw(),
    Center(child: const Text("top up")),
    Center(child: const Text("deposit")),
  ];
  List screens = [
    ElectricityScreen(),
    Center(child: const Text("Merchant")),
    InternetData(),
    Center(child: const Text("Ticket")),
    Center(child: const Text("Mobile")),
    Center(child: const Text("Transfer")),
    Center(child: const Text("More")),
  ];
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.blue.shade50,
        width: 340,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 34.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff011A51),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/Group 271.png",
                      scale: 0.6,
                    ),
                    1.7.h.addHSpace(),
                    "Rene Wells".appTextStyle(
                      color: Colors.white,
                      fontSize: 15.sp,
                    ),
                    "Roday43@gmail.com".appTextStyle(
                      color: Colors.white,
                    ),
                    1.5.h.addHSpace(),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffFF897E),
                        minimumSize: Size(25.w, 4.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1.h),
                        ),
                      ),
                      onPressed: () {},
                      child: "verifield".appTextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              5.h.addHSpace(),
              Padding(
                padding: EdgeInsets.only(left: 4.w, right: 7.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: "Dark Mode".appTextStyle(
                              fontSize: 13.sp, color: Colors.black87),
                        ),
                        Switch(
                          activeTrackColor: Colors.green,
                          inactiveTrackColor: Colors.grey.shade400,
                          thumbColor: MaterialStateProperty.all(Colors.white),
                          value: isSwitch,
                          onChanged: (value) {
                            setState(() {
                              isSwitch = !isSwitch;
                            });
                          },
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: "Invite friends"
                          .appTextStyle(fontSize: 13.sp, color: Colors.black87),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ContactList(),
                          ),
                        );
                      },
                      child: "Contact List"
                          .appTextStyle(fontSize: 13.sp, color: Colors.black87),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: "My Wallet"
                          .appTextStyle(fontSize: 13.sp, color: Colors.black87),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AddNewCards(),
                          ),
                        );
                      },
                      child: "Add New Cards"
                          .appTextStyle(fontSize: 13.sp, color: Colors.black87),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: "Change Password"
                          .appTextStyle(fontSize: 13.sp, color: Colors.black87),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: "About us"
                          .appTextStyle(fontSize: 13.sp, color: Colors.black87),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 11.w, top: 5.h),
                child: Row(
                  children: [
                    Icon(
                      Icons.play_arrow_rounded,
                      color: Color(0xffFF897E),
                      size: 17.sp,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: "Log Out".appTextStyle(
                          color: const Color(0xffFF897E), fontSize: 12.sp),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 35.h,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/Group 287.png"),
                    scale: 0.9,
                    // fit: BoxFit.fill,
                  ),
                ),
                child: Image.asset(
                  "assets/images/Group 286.png", scale: 0.9,
                  // fit: BoxFit.fill,
                ),
              ),
              Positioned(
                right: 9.w,
                top: 4.5.h,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NotificationPage(),
                      ),
                    );
                  },
                  child: Container(
                    height: 3.h,
                    width: 3.h,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
              Builder(
                builder: (context) {
                  return Positioned(
                    top: 7.h,
                    left: 5.5.w,
                    child: InkWell(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: Container(
                        height: 8.h,
                        width: 8.h,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/Group 271.png"),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
              Positioned(
                top: 18.h,
                left: 5.w,
                child: Container(
                  height: 25.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3.h),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey, blurRadius: 4, spreadRadius: 0.5),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.only(left: 7.w, right: 7.w, top: 2.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            "Balance".appTextStyle(
                              fontSize: 14.sp,
                              color: Colors.grey.shade600,
                            ),
                            "Active".appTextStyle(
                              fontSize: 14.sp,
                              color: const Color(
                                0xffFB847C,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 7.w, right: 7.w, top: 1.h),
                        child: "\$7800.50".appTextStyle(
                            fontSize: 15.sp, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 13.h,
                        child: ListView.builder(
                          itemCount: balance.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => screen[index],
                                      ),
                                    );
                                  },
                                  child: Container(
                                    height: 6.h,
                                    width: 13.w,
                                    margin: EdgeInsets.only(
                                        left: 5.w, right: 4.w, top: 3.h),
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(1.h),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "${balance[index]['image']}"),
                                      ),
                                    ),
                                  ),
                                ),
                                1.h.addHSpace(),
                                "${balance[index]['name']}"
                                    .appTextStyle(fontSize: 10.sp),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          11.h.addHSpace(),
          "All Service".appTextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15.sp,
          ),
          3.h.addHSpace(),
          Wrap(
            alignment: WrapAlignment.center,
            children: List.generate(
              7,
              (index) => InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => screens[index],
                    ),
                  );
                },
                child: Container(
                  height: 6.h,
                  width: 34.w,
                  margin:
                      EdgeInsets.symmetric(horizontal: 7.2.w, vertical: 2.h),
                  child: Row(
                    children: [
                      Container(
                        height: 5.h,
                        width: 11.w,
                        decoration: BoxDecoration(
                          color: service[index]['color'],
                          borderRadius: BorderRadius.circular(1.5.h),
                          image: DecorationImage(
                            image: AssetImage("${service[index]['image']}"),
                          ),
                        ),
                      ),
                      2.5.w.addWSpace(),
                      "${service[index]['name']}".appTextStyle(
                          fontSize: 12.sp, fontWeight: FontWeight.w400),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
