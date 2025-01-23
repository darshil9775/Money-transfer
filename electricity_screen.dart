import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:money_transfer/Common/extension_sizedbox.dart';
import 'package:money_transfer/Common/extension_textstyle.dart';
import 'package:money_transfer/bills_enquiry.dart';
import 'package:money_transfer/electricity_token.dart';
import 'package:sizer/sizer.dart';

import 'Common/text_form_field.dart';
import 'electric.dart';

class ElectricityScreen extends StatefulWidget {
  const ElectricityScreen({super.key});

  @override
  State<ElectricityScreen> createState() => _ElectricityScreenState();
}

class _ElectricityScreenState extends State<ElectricityScreen>
    with TickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  int select = 0;
  List screen = [
    "Electricity Token",
    "Bills",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: Row(
                children: [
                  13.h.addHSpace(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.keyboard_backspace,
                      size: 25.sp,
                    ),
                  ),
                  28.w.addWSpace(),
                  "Electric".appTextStyle(
                    fontSize: 20.sp,
                    color: Color(0xff011A51),
                  )
                ],
              ),
            ),
            1.h.addHSpace(),
            Container(
              height: 7.h,
              width: 90.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(3.5.h),
              ),
              child: TabBar(
                onTap: (value) {
                  select = value;
                  setState(() {});
                },
                indicatorColor: Colors.transparent,
                controller: tabController,
                tabs: List.generate(
                  2,
                  (index) => Container(
                    height: 5.5.h,
                    width: 40.w,
                    child: Center(
                      child: "${screen[index]}".appTextStyle(
                        color: select == index
                            ? Colors.white
                            : Colors.grey.shade500,
                        fontSize: 12.sp,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: select == index ? Color(0xff011A51) : Colors.white,
                      borderRadius: BorderRadius.circular(1.h),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 80.h,
              child: TabBarView(
                controller: tabController,
                children: [
                  ElectricityToken(),
                  BillsEnquiry(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
