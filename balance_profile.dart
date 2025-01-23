import 'package:flutter/material.dart';
import 'package:money_transfer/Common/extension_sizedbox.dart';
import 'package:money_transfer/Common/extension_textstyle.dart';
import 'package:money_transfer/top_up_screen.dart';
import 'package:money_transfer/transfer_screen.dart';
import 'package:sizer/sizer.dart';

class BalanceProfile extends StatefulWidget {
  const BalanceProfile({super.key});

  @override
  State<BalanceProfile> createState() => _BalanceProfileState();
}

class _BalanceProfileState extends State<BalanceProfile> {
  List<Map<String, dynamic>> operations = [
    {
      "image": "assets/images/Group 8.png",
      "name": "Transfer",
    },
    {
      "image": "assets/images/Group 7.png",
      "name": "Withdraw",
    },
    {
      "image": "assets/images/Group 39.png",
      "name": "Top up",
    },
    {
      "image": "assets/images/Mask group.png",
      "name": "Deposit",
    },
  ];
  List<Map<String, dynamic>> transactions = [
    {
      "color": const Color(0xff4F31C2),
      "image": "assets/images/Vector (1).png",
      "name": "Paypall",
      "num": "+0.54915 BTC",
      "year": "24 mar 2022",
    },
    {
      "color": const Color(0xff198646),
      "image": "assets/images/Vector (2).png",
      "name": "Apple",
      "num": "+0.75962 BTC",
      "year": "25 mar 2022",
    },
    {
      "color": const Color(0xffFF9D42),
      "image": "assets/images/Vector (3).png",
      "name": "Mcdonalds",
      "num": "+0.65841 BTC",
      "year": "26 mar 2022",
    },
    {
      "color": const Color(0xff011A51),
      "image": "assets/images/Mask group (2).png",
      "name": "Amazon",
      "num": "+0.47865 BTC",
      "year": "28 mar 2022",
    },
  ];

  List screens = [
    const TransferScreen(),
    const Center(child: Text('Withdraw')),
    const TopUpScreen(),
    const Center(child: Text('Deposit')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff214083),
      body: Column(
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
          Container(
            height: 64.90.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(3.h),
                topRight: Radius.circular(3.h),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: 7.w,
                top: 4.5.h,
                right: 5.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  "Operations".appTextStyle(
                    color: Colors.black,
                    fontSize: 14.sp,
                  ),
                  2.5.h.addHSpace(),
                  SizedBox(
                    height: 10.h,
                    child: ListView.builder(
                      itemCount: operations.length,
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
                                    builder: (context) => screens[index],
                                  ),
                                );
                              },
                              child: Container(
                                height: 6.h,
                                width: 14.w,
                                margin: EdgeInsets.only(left: 4.w, right: 4.w),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(1.h),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "${operations[index]['image']}"),
                                  ),
                                ),
                              ),
                            ),
                            0.7.h.addHSpace(),
                            "${operations[index]['name']}"
                                .appTextStyle(fontSize: 8.sp),
                          ],
                        );
                      },
                    ),
                  ),
                  1.h.addHSpace(),
                  "Recent Transactions".appTextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(
                    height: 40.h,
                    child: ListView.builder(
                      itemCount: 4,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 1.w),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 6.h,
                                width: 6.h,
                                margin: EdgeInsets.only(top: 1.h, bottom: 1.h),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: transactions[index]['color'],
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "${transactions[index]['image']}"),
                                  ),
                                ),
                              ),
                              3.w.addWSpace(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  "${transactions[index]['name']}"
                                      .appTextStyle(),
                                  "${transactions[index]['num']}".appTextStyle(
                                    color: Colors.black45,
                                  ),
                                ],
                              ),
                              Spacer(),
                              "${transactions[index]['year']}"
                                  .appTextStyle(fontWeight: FontWeight.w500),
                            ],
                          ),
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
    );
  }
}
